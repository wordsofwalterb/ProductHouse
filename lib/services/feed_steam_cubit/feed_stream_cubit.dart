import 'dart:async';

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
  }) : super(const FeedStreamState.initial({})) {
    if (whereQuery != null) {
      query = whereQuery.orderBy(orderByField, descending: desc);
    } else {
      query =
          PHGlobal.collectionMapper[T].orderBy(orderByField, descending: desc);
    }

    // feedStream = feedController.stream;
  }

  final FirebaseService<T> repository;
  Query whereQuery;
  Query query;
  int limit;
  final bool desc;
  final String orderByField;
  Stream<List<T>> feedStream;
  DocumentSnapshot _lastDoc;
  StreamController<List<T>> feedController = StreamController<List<T>>();

  @override
  Future<void> close() async {
    await feedController.close();
    await super.close();
  }

  Future<void> refreshFeed() async {
    if (whereQuery != null) {
      query = whereQuery.orderBy(orderByField, descending: desc);
    } else {
      query =
          PHGlobal.collectionMapper[T].orderBy(orderByField, descending: desc);
    }
    emit(const FeedStreamState.loading({}));

    final streamResult = repository.getStreamFromQuery(query);

    streamResult
        .listen(streamListFunc)
        .onError((error) => emit(const FeedStreamState.failure({})));
  }

  Future<void> filterFeed(Query newWhereQuery) async {
    query = newWhereQuery.orderBy(orderByField, descending: desc);
    query.limit(limit);
    emit(const FeedStreamState.loading({}));

    final streamResult = repository.getStreamFromQuery(query);

    streamResult
        .listen(streamListFunc)
        .onError((error) => emit(const FeedStreamState.failure({})));
  }

  Future<void> setupFeed() async {
    query = query.limit(limit);
    emit(const FeedStreamState.loading({}));

    final streamResult = repository.getStreamFromQuery(query);

    streamResult
        .listen(streamListFunc)
        .onError((error) => emit(const FeedStreamState.failure({})));
  }

  Future<void> fetchPage() async {
    state.maybeWhen(
      reachedMax: (items) async {
        emit(FeedStreamState.loadingMore(items));
        limit = limit + limit;
        final values =
            items.values.map((item) => item.toJson()[orderByField]).toList();

        query = PHGlobal.collectionMapper[T]
            .orderBy(orderByField, descending: desc)
            .startAfter([values.last]).limit(limit);

        final streamResult = repository.getStreamFromQuery(query);

        streamResult
            .listen(streamListFunc)
            .onError((error) => emit(const FeedStreamState.failure({})));
      },
      orElse: () => {},
    );
  }

  void streamListFunc(List<T> itemList) {
    if (itemList.isEmpty) {
      emit(const FeedStreamState.empty({}));
    } else {
      final end = Map<String, T>.from(state.itemIds);

      Map<String, T> front = {};

      for (final item in itemList) {
        if (!state.itemIds.containsKey(item.id)) {
          front.addAll({item.id: item});
        } else {
          end.addAll({item.id: item});
        }
      }

      front.addAll(end);

      (itemList.length == limit)
          ? emit(FeedStreamState.reachedMax(front))
          : emit(FeedStreamState.loaded(front));
    }
  }
}
