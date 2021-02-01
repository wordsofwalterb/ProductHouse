import 'dart:math';

import 'package:ProductHouse/blocs/bookmark_bloc/bookmark_bloc.dart';
import 'package:ProductHouse/models/byte.dart';
import 'package:ProductHouse/util/byte_json.dart';
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
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 22),
            sliver: SliverToBoxAdapter(
              child: PHSectionTitle('Recent'),
            ),
          ),
          // _recent(),
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 22),
            sliver: SliverToBoxAdapter(
              child: PHSectionTitle('Bookmarks'),
            ),
          ),
          _bookmarks(),
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 22),
            sliver: SliverToBoxAdapter(
              child: PHSectionTitle('Suggested'),
            ),
          ),
          // _suggested(),
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
    List<PHByte> byteList = byteJson.map((e) => PHByte.fromJson(e)).toList();

    var featuredIndex = Random.secure().nextInt(byteList.length);

    return SliverList(
      delegate: SliverChildListDelegate.fixed([
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24),
            PHSectionTitle('Daily Byte'),
            SizedBox(height: 17.5),
            PHFeaturedByte(byteList[0]),
          ],
        ),
      ]),
    );
  }

  // Widget _recent() {
  //   return SliverList(
  //     delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
  //       return Padding(
  //         padding: const EdgeInsets.symmetric(vertical: 8.0),
  //         child: PHByteTile(

  //         ),
  //       );
  //     }, childCount: 2),
  //   );
  // }

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
                    loadSuccess: (bookmarkedBytes) => Padding(
                      padding: EdgeInsets.only(bottom: 14),
                      child: PHByteTile(
                        byte: bookmarkedBytes[index],
                      ),
                    ),
                    loadFailure: (_, __) => Container(),
                  );
                },
                childCount: byteList.length,
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

//   Widget _suggested() {
//     return SliverList(
//       delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
//         return Padding(
//           padding: const EdgeInsets.symmetric(vertical: 8.0),
//           child: PHByteTile(

//           ),
//         );
//       }, childCount: 4),
//     );
//   }
// }
}
