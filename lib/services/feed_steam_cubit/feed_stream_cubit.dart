import 'dart:async';
import 'dart:developer';

import 'package:ProductByte/services/firebase_service/firebase_service.dart';
import 'package:ProductByte/util/global.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../model.dart';

part 'feed_stream_state.dart';
part 'feed_stream_cubit.freezed.dart';

class FeedStreamCubit<T extends Model> extends Cubit<FeedStreamState<T>> {
  FeedStreamCubit({
    @required this.repository,
    this.whereQuery,
    @required this.orderByField,
    this.desc = false,
    this.limit = 20,
  }) : super(const FeedStreamState.empty({}));

  final FirebaseService<T> repository;
  Query whereQuery;
  Query query;
  int limit;
  final bool desc;
  final String orderByField;

  Future<void> setupFeed() async {
    if (whereQuery != null) {
      query = whereQuery.orderBy(orderByField, descending: desc);
    } else {
      query =
          PHGlobal.collectionMapper[T].orderBy(orderByField, descending: desc);
    }
    query = query.limit(limit);
    emit(const FeedStreamState.loading({}));

    final streamResult = repository.getStreamFromQuery(query);

    streamListFunc(streamResult);
  }

  Future<void> filterFeed(Query newWhereQuery) async {
    query = newWhereQuery.orderBy(orderByField, descending: desc);
    query.limit(limit);
    emit(const FeedStreamState.loading({}));

    final streamResult = repository.getStreamFromQuery(query);

    streamListFunc(streamResult);
  }

  // Future<void> setupFeed() async {
  //   query = query.limit(limit);
  //   emit(const FeedStreamState.loading({}));

  //   final streamResult = repository.getStreamFromQuery(query);

  //   streamListFunc(streamResult);
  // }

  Future<void> fetchPage() async {
    state.maybeWhen(
      loaded: (items, hasMoreItems) async {
        if (hasMoreItems) {
          // emit(FeedStreamState.loading(items));
          limit = limit + limit;
          final values =
              items.values.map((item) => item.toJson()[orderByField]).toList();

          query = PHGlobal.collectionMapper[T]
              .orderBy(orderByField, descending: desc)
              .startAfter([values.last]).limit(limit);

          final streamResult = repository.getStreamFromQuery(query);

          streamListFunc(streamResult);
        }
      },
      orElse: () => {},
    );
  }

  void streamListFunc(Stream<List<T>> streamResult) {
    streamResult.listen((itemList) {
      if (itemList.isEmpty) {
        emit(const FeedStreamState.empty({}));
      } else {
        // if (desc) {
        //   final end = Map<String, T>.from(state.itemIds);

        //   Map<String, T> front = {};

        //   for (final item in itemList) {
        //     if (!state.itemIds.containsKey(item.id)) {
        //       front.addAll({item.id: item});
        //     } else {
        //       end.addAll({item.id: item});
        //     }
        //   }

        //   front.addAll(end);

        //   (itemList.length == limit)
        //       ? emit(FeedStreamState.loaded(front))
        //       : emit(FeedStreamState.loaded(front, hasMoreItems: false));
        // } else {
        final current = Map<String, T>.from(state.itemIds);

        for (final item in itemList) {
          current.addAll({item.id: item});
        }

        (itemList.length == limit)
            ? emit(FeedStreamState.loaded(current))
            : emit(FeedStreamState.loaded(current, hasMoreItems: false));
        // }
      }
    }).onError((error) {
      log(error.toString());
      emit(const FeedStreamState.failure({}));
    });
  }
}
