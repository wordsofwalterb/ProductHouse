import 'dart:async';

import 'package:ProductByte/models/byte.dart';
import 'package:ProductByte/services/byte_repository.dart';
import 'package:ProductByte/services/test_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'suggested_feed_state.dart';
part 'suggested_feed_cubit.freezed.dart';

class SuggestedFeedCubit extends Cubit<SuggestedFeedState> {
  StreamSubscription _repositorySubcription;
  TestRepository _byteRepository;

  SuggestedFeedCubit({@required TestRepository byteRepository})
      : _byteRepository = byteRepository,
        super(const SuggestedFeedState.initial()) {
    _repositorySubcription = _byteRepository.subject.stream.listen((event) {});
  }

  Future<void> getBytes() async {
    emit(SuggestedFeedState.loaded(bytes: []));
  }

  Future<void> addByte() async {
    emit(SuggestedFeedState.loaded(bytes: []));
  }
}
