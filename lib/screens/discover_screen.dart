import 'package:ProductByte/models/byte.dart';
import 'package:ProductByte/services/byte_repository.dart';
import 'package:ProductByte/util/global.dart';
import 'package:ProductByte/util/result.dart';
import 'package:ProductByte/widgets/byte_square.dart';
import 'package:ProductByte/widgets/category_chip.dart';
import 'package:ProductByte/widgets/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';

const categories = [
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

class _PHDiscoverScreenState extends State<PHDiscoverScreen>
    with SingleTickerProviderStateMixin {
  int _currentTab = 0;
  TabController _tabController;
  List<PHByte> bytes;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: categories.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  void _onTabItemTapped(int indexTapped) {
    setState(() {
      _currentTab = indexTapped;
    });
    PHGlobal.analytics.logEvent(
      name: 'Filter Changed',
      parameters: {
        'to filter': categories[indexTapped],
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
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
            child: TabBar(
              labelPadding: EdgeInsets.only(left: 16),
              indicatorColor: Colors.transparent,
              isScrollable: true,
              controller: _tabController,
              onTap: _onTabItemTapped,
              tabs: [
                ...categories
                    .map((e) => PHCategoryChip(
                          e,
                          isActive: e == categories[_currentTab],
                        ))
                    .toList()
              ],
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
      future: ByteRepository().getBytesFromCategory(categories[_currentTab]),
      builder: (context, AsyncSnapshot snapshot) {
        PHResult<List<PHByte>> result;
        if (snapshot.hasData) {
          result = snapshot.data as PHResult<List<PHByte>>;
        }
        if (result?.hasData ?? false) {
          return SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1.0,
            ),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return PHByteSquare(result.data[index]);
            }, childCount: result.data.length),
          );
        } else {
          return SliverPadding(padding: EdgeInsets.zero);
        }
      },
    );
  }
}
