import 'package:ProductHouse/widgets/byte_tile.dart';
import 'package:ProductHouse/widgets/featured_byte.dart';
import 'package:ProductHouse/widgets/profile_button.dart';
import 'package:ProductHouse/widgets/search_bar.dart';
import 'package:ProductHouse/widgets/section_title.dart';
import 'package:flutter/material.dart';

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
          _recent(),
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
    return SliverList(
      delegate: SliverChildListDelegate.fixed([
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24),
            PHSectionTitle('Daily Byte'),
            SizedBox(height: 17.5),
            PHFeaturedByte(),
          ],
        ),
      ]),
    );
  }

  Widget _recent() {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: PHByteTile(
            title: 'Hanlons Razor',
            body: 'This is an example of a product framework',
            minutes: '2',
          ),
        );
      }, childCount: 2),
    );
  }

  Widget _bookmarks() {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: PHByteTile(
            title: 'Hanlons Razor',
            body: 'This is an example of a product framework',
            minutes: '2',
          ),
        );
      }, childCount: 4),
    );
  }

  Widget _suggested() {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: PHByteTile(
            title: 'Hanlons Razor',
            body: 'This is an example of a product framework',
            minutes: '2',
          ),
        );
      }, childCount: 4),
    );
  }
}
