import 'package:ProductByte/models/byte.dart';
import 'package:ProductByte/models/phcollection.dart';
import 'package:ProductByte/services/byte_repository.dart';
import 'package:ProductByte/services/feed_steam_cubit/feed_stream_cubit.dart';
import 'package:ProductByte/services/firebase_service/firebase_service.dart';
import 'package:ProductByte/util/global.dart';
import 'package:ProductByte/util/result.dart';
import 'package:ProductByte/widgets/byte_square.dart';
import 'package:ProductByte/widgets/category_chip.dart';
import 'package:ProductByte/widgets/collection_square.dart';
import 'package:ProductByte/widgets/search_bar.dart';
import 'package:ProductByte/widgets/section_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';

const categories = [
  'All',
  'Trending',
  'Strategy',
  'Design',
  'Discovery',
  'Delivery',
  'Data Science',
];

class PHDiscoverScreen extends StatelessWidget {
  const PHDiscoverScreen(this.feedController);

  final ScrollController feedController;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FeedStreamCubit<PHByte>>(
          create: (_) => FeedStreamCubit<PHByte>(
            repository: FirebaseService<PHByte>(),
            orderByField: 'title',
            limit: 20,
            desc: true,
          )..setupFeed(),
        ),
        BlocProvider<FeedStreamCubit<PHCollection>>(
            create: (_) => FeedStreamCubit<PHCollection>(
                  repository: FirebaseService<PHCollection>(),
                  orderByField: 'title',
                )..setupFeed()),
      ],
      child: PHDiscoverScreenView(feedController: feedController),
    );
  }
}

class PHDiscoverScreenView extends StatefulWidget {
  const PHDiscoverScreenView({this.feedController});

  final ScrollController feedController;
  @override
  _PHDiscoverScreenState createState() => _PHDiscoverScreenState();
}

class _PHDiscoverScreenState extends State<PHDiscoverScreenView>
    with
        SingleTickerProviderStateMixin,
        AutomaticKeepAliveClientMixin<PHDiscoverScreenView> {
  int _currentTab = 0;
  TabController _tabController;
  List<PHByte> bytes;

  ScrollController _feedController;
  final _scrollThreshold = 200.0;

  @override
  void initState() {
    super.initState();
    _feedController = widget.feedController;
    _feedController.addListener(_onScroll);
    _tabController = TabController(length: categories.length, vsync: this);
  }

  void _onScroll() {
    final maxScroll = _feedController.position.maxScrollExtent;
    final currentScroll = _feedController.position.pixels;
    if (maxScroll - currentScroll <= _scrollThreshold) {
      context.read<FeedStreamCubit<PHByte>>().fetchPage();
    }
  }

  @override
  bool get wantKeepAlive => true;

  @override
  void dispose() {
    super.dispose();
    _feedController.dispose();
    _tabController.dispose();
  }

  void _onTabItemTapped(int indexTapped) {
    setState(() {
      _currentTab = indexTapped;
      if (_currentTab == 0) {
        context.read<FeedStreamCubit<PHByte>>().setupFeed();
        context.read<FeedStreamCubit<PHCollection>>().setupFeed();
      } else {
        context.read<FeedStreamCubit<PHByte>>().filterFeed(PHGlobal.byteRef
            .where('tags', arrayContains: categories[_currentTab]));
        context.read<FeedStreamCubit<PHCollection>>().filterFeed(PHGlobal
            .collectionRef
            .where('tags', arrayContains: categories[_currentTab]));
      }
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
    final collectionFeed = context.watch<FeedStreamCubit<PHCollection>>();
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: CustomScrollView(
        controller: _feedController,
        slivers: [
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverToBoxAdapter(
              child:
                  SizedBox(height: MediaQuery.of(context).viewPadding.top + 10),
            ),
          ),
          SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              sliver: _topSection(context)),
          SliverToBoxAdapter(
            child: TabBar(
              labelPadding: EdgeInsets.only(left: 16, bottom: 20, top: 2),
              indicatorColor: Colors.transparent,
              labelColor: Colors.transparent,
              overlayColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed))
                    return Colors.transparent;
                  return null; // Use the component's default.
                },
              ),
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
          collectionFeed.state.maybeWhen(
            loaded: (items, _) {
              return SliverToBoxAdapter(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
                child: PHSectionTitle('Collections'),
              ));
            },
            orElse: () => SliverPadding(padding: EdgeInsets.all(0)),
          ),
          collectionFeed.state.maybeWhen(
            loaded: (items, _) {
              return SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                sliver: _collectionGrid(items.values.toList()),
              );
            },
            orElse: () => SliverPadding(padding: EdgeInsets.all(0)),
          ),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 20, 16, 24),
            child: PHSectionTitle('Explore Bytes'),
          )),
          SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              sliver: _byteGrid()),
          SliverPadding(padding: EdgeInsets.all(22))
        ],
      ),
    );
  }

  Widget _collectionGrid(List<PHCollection> list) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 1.0,
      ),
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return CollectionSquare(list[index]);
      }, childCount: list.length),
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
                color: Theme.of(context).colorScheme.onBackground,
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
    final byteFeed = context.watch<FeedStreamCubit<PHByte>>();
    return byteFeed.state.maybeWhen(
      loading: (_) {
        return SliverList(
          delegate: SliverChildListDelegate(
            [
              const Center(
                child: CircularProgressIndicator(),
              ),
            ],
          ),
        );
      },
      loaded: (state, _) {
        final list = state.values.toList();
        return SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 1.0,
          ),
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return PHByteSquare(list[index]);
          }, childCount: list.length),
        );
      },
      orElse: () => const SliverPadding(padding: EdgeInsets.zero),
    );
  }
}
