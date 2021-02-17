import 'dart:math';

import 'package:ProductHouse/blocs/bookmark_bloc/bookmark_bloc.dart';
import 'package:ProductHouse/cubits/recent_bytes_cubit/recent_bytes_cubit.dart';
import 'package:ProductHouse/models/byte.dart';
import 'package:ProductHouse/services/byte_repository.dart';
import 'package:ProductHouse/util/result.dart';
import 'package:ProductHouse/widgets/byte_tile.dart';
import 'package:ProductHouse/widgets/featured_byte.dart';
import 'package:ProductHouse/widgets/profile_button.dart';
import 'package:ProductHouse/widgets/search_bar.dart';
import 'package:ProductHouse/widgets/section_title.dart';
import 'package:ProductHouse/widgets/shimmers/byte_tile_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          _recents(),
          _bookmarks(),
          SliverToBoxAdapter(
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 22.0),
              child: PHSectionTitle('Suggested'),
            ),
          ),
          _suggested(),
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
                  PHSectionTitle('Daily Byte'),
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
                        return const Padding(
                          padding: EdgeInsets.symmetric(vertical: 22.0),
                          child: PHSectionTitle('Bookmarks'),
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
        Container(
            width: double.infinity,
            height: 100,
            child: const ByteTileShimmer()),
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
