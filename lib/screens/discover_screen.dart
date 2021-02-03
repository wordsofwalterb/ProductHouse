import 'package:ProductHouse/models/byte.dart';
import 'package:ProductHouse/services/byte_repository.dart';
import 'package:ProductHouse/widgets/byte_square.dart';
import 'package:ProductHouse/widgets/category_chip.dart';
import 'package:ProductHouse/widgets/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ProductHouse/util/byte_json.dart';

const categoryNames = [
  'All',
  'Strategy',
  'Design',
  'Analytics',
  'Dark Pattern',
  'Prioritization',
  'Discovery'
];

class PHDiscoverScreen extends StatefulWidget {
  @override
  _PHDiscoverScreenState createState() => _PHDiscoverScreenState();
}

class _PHDiscoverScreenState extends State<PHDiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CupertinoScrollbar(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverToBoxAdapter(
                child: SizedBox(height: MediaQuery.of(context).viewPadding.top),
              ),
            ),
            SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                sliver: _topSection(context)),
            SliverToBoxAdapter(
              child: Container(
                height: 40,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryNames.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(width: 10);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0)
                      return Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: PHCategoryChip(
                          '  All  ',
                          isActive: true,
                        ),
                      );
                    else if (index == categoryNames.length - 1) {
                      return SizedBox(
                        width: 10,
                      );
                    } else
                      return PHCategoryChip(categoryNames[index]);
                  },
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                sliver: _byteGrid()),
          ],
        ),
      ),
    );
  }

  Widget _topSection(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate.fixed([
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Discover',
              style: TextStyle(
                fontFamily: 'SFProText-Bold',
                fontSize: 35,
                color: const Color(0xff393939),
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 16,
            ),
            PHSearchBar(),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ]),
    );
  }

  Widget _byteGrid() {
    return FutureBuilder(
      future: ByteRepository().getAllBytes(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final List<PHByte> bytes = snapshot.data.data as List<PHByte>;
          return SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1.0,
            ),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return PHByteSquare(bytes[index]);
            }, childCount: bytes.length),
          );
        } else {
          return SliverPadding(padding: EdgeInsets.zero);
        }
      },
    );
  }
}
