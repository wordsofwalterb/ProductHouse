import 'dart:math';

import 'package:ProductByte/blocs/bookmark_bloc/bookmark_bloc.dart';
import 'package:ProductByte/cubits/read_bytes_cubit/read_bytes_cubit.dart';
import 'package:ProductByte/cubits/recent_bytes_cubit/recent_bytes_cubit.dart';
import 'package:ProductByte/models/byte.dart';
import 'package:ProductByte/services/byte_repository.dart';
import 'package:ProductByte/util/result.dart';
import 'package:ProductByte/util/router.dart';
import 'package:ProductByte/widgets/byte_tile.dart';
import 'package:ProductByte/widgets/featured_byte.dart';
import 'package:ProductByte/widgets/profile_button.dart';
import 'package:ProductByte/widgets/search_bar.dart';
import 'package:ProductByte/widgets/section_title.dart';
import 'package:ProductByte/widgets/shimmers/byte_tile_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sfsymbols/flutter_sfsymbols.dart';

class PHOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
          _appSearchBar(),
          _dailyByte(),
          SliverToBoxAdapter(
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 22.0),
              child: PHSectionTitle("Trending This Week"),
            ),
          ),
          _suggested(),
          _recents(),
          _bookmarks(),
        ],
      ),
    ));
  }

  Widget _appSearchBar() {
    return SliverAppBar(
      //pinned: false,
      //expandedHeight: 250.0,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leadingWidth: 55,
      leading: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.5),
        child: PHProfileButton(),
      ),
      title: PHSearchBar(),
    );
  }

  Widget _dailyByte() {
    return FutureBuilder(
      future: ByteRepository().retrieveFeaturedByte(),
      builder: (context, snapshot) {
        PHResult<PHByte> result;
        if (snapshot.hasData) {
          result = snapshot.data as PHResult<PHByte>;
        }
        if (result?.hasData ?? false) {
          return SliverList(
            delegate: SliverChildListDelegate.fixed([
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 24),
                  PHSectionTitle('Picked For You'),
                  SizedBox(height: 17.5),
                  PHFeaturedByte(result.data),
                ],
              ),
            ]),
          );
        } else {
          return SliverToBoxAdapter(
            child: Container(),
          );
        }
      },
    );
  }

  Widget _recents() {
    return BlocBuilder<RecentBytesCubit, RecentBytesState>(
      builder: (context, state) {
        return state.when(
          initial: () => sliverShimmer(),
          loadInProgress: () => sliverShimmer(),
          loadFailure: (_, __) => sliverShimmer(),
          loadSuccess: (byteList) {
            return SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return state.when(
                    initial: () => const ByteTileShimmer(),
                    loadInProgress: () => const ByteTileShimmer(),
                    loadSuccess: (recentBytes) {
                      if (recentBytes.isEmpty) {
                        return Container();
                      } else if (index == 0 && recentBytes.isNotEmpty) {
                        return const Padding(
                          padding: EdgeInsets.symmetric(vertical: 22.0),
                          child: PHSectionTitle('Recent'),
                        );
                      }
                      return Padding(
                        padding: EdgeInsets.only(bottom: 14),
                        child: PHByteTile(
                          byte: recentBytes[index - 1],
                        ),
                      );
                    },
                    loadFailure: (_, __) => Container(),
                  );
                },
                childCount: byteList.length + 1,
              ),
            );
          },
        );
      },
    );
  }

  Widget _bookmarks() {
    return BlocBuilder<BookmarkBloc, BookmarkState>(
      builder: (context, state) {
        return state.when(
          initial: () => sliverShimmer(),
          loadInProgress: () => sliverShimmer(),
          loadFailure: (_, __) => sliverShimmer(),
          loadSuccess: (byteList) {
            return SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return state.when(
                    initial: () => const ByteTileShimmer(),
                    loadInProgress: () => const ByteTileShimmer(),
                    loadSuccess: (bookmarkedBytes) {
                      if (bookmarkedBytes.isEmpty) {
                        return Container();
                      } else if (index == 0 && bookmarkedBytes.isNotEmpty) {
                        return Row(
                          children: [
                            Expanded(
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 22.0),
                                child: PHSectionTitle('Bookmarks'),
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                SFSymbols.chevron_right,
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                                size: 25,
                              ),
                              padding: EdgeInsets.zero,
                              visualDensity: VisualDensity.compact,
                              onPressed: () => Navigator.of(context).pushNamed(
                                PHRoutes.moreScreen,
                                arguments: MoreScreenArgs(
                                  bookmarkBloc:
                                      BlocProvider.of<BookmarkBloc>(context),
                                  recentsCubit:
                                      BlocProvider.of<RecentBytesCubit>(
                                          context),
                                  readBytesCubit:
                                      BlocProvider.of<ReadBytesCubit>(context),
                                ),
                              ),
                            ),
                          ],
                        );
                      }
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 14),
                        child: PHByteTile(
                          byte: bookmarkedBytes[index - 1],
                        ),
                      );
                    },
                    loadFailure: (_, __) => Container(),
                  );
                },
                childCount: (byteList.length <= 4) ? byteList.length + 1 : 5,
              ),
            );
          },
        );
      },
    );
  }

  Widget sliverShimmer() {
    return SliverList(
      delegate: SliverChildListDelegate.fixed([
        Container(),
        // Container(
        //     width: double.infinity,
        //     height: 100,
        //     child: const ByteTileShimmer()),
      ]),
    );
  }

  Widget _suggested() {
    return FutureBuilder(
        future: ByteRepository().getSuggestedBytes(),
        builder: (_, snapshot) {
          PHResult<List<PHByte>> result;
          if (snapshot.hasData) {
            result = snapshot.data as PHResult<List<PHByte>>;
          }
          if (result?.hasData ?? false) {
            return SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: PHByteTile(byte: result.data[index]),
                );
              }, childCount: result.data.length),
            );
          } else {
            return const SliverPadding(padding: EdgeInsets.zero);
          }
        });
  }
}
