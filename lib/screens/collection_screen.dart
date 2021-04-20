import 'package:ProductByte/blocs/bookmark_bloc/bookmark_bloc.dart';
import 'package:ProductByte/models/byte.dart';
import 'package:ProductByte/models/phcollection.dart';
import 'package:ProductByte/services/byte_repository.dart';
import 'package:ProductByte/services/feed_steam_cubit/feed_stream_cubit.dart';
import 'package:ProductByte/services/firebase_service/firebase_service.dart';
import 'package:ProductByte/util/global.dart';
import 'package:ProductByte/util/result.dart';
import 'package:ProductByte/widgets/byte_square.dart';
import 'package:ProductByte/widgets/byte_tile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CollectionScreen extends StatelessWidget {
  const CollectionScreen(this.collection);

  final PHCollection collection;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FeedStreamCubit<PHByte>>(
      create: (context) => FeedStreamCubit<PHByte>(
        repository: FirebaseService<PHByte>(),
        whereQuery: PHGlobal.byteRef.where(
          'collections',
          arrayContains: collection.id,
        ),
        orderByField: 'title',
      )..setupFeed(),
      child: CollectionScreenView(collection),
    );
  }
}

class CollectionScreenView extends StatelessWidget {
  const CollectionScreenView(this.collection);

  final PHCollection collection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: Theme.of(context)
            .iconTheme
            .copyWith(color: Theme.of(context).colorScheme.onBackground),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 24),
              child: Text(
                collection.title,
                style: TextStyle(
                  fontFamily: 'SFProText-Bold',
                  fontSize: 35,
                  color: Theme.of(context).colorScheme.onBackground,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          _buildList(context),
        ],
      ),
    );
  }

  Widget _buildList(BuildContext context) {
    final byteFeed = context.watch<FeedStreamCubit<PHByte>>();
    return byteFeed.state.maybeWhen(
      loaded: (items, _) {
        return SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1.0,
            ),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return PHByteSquare(items.values.toList()[index]);
            }, childCount: items.length),
          ),
        );
      },
      orElse: () => SliverToBoxAdapter(
        child: Container(),
      ),
    );
  }
}
