import 'package:ProductByte/models/byte.dart';
import 'package:ProductByte/services/byte_repository.dart';
import 'package:ProductByte/services/user_repository.dart';
import 'package:ProductByte/util/global.dart';
import 'package:ProductByte/util/result.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recent_bytes_state.dart';
part 'recent_bytes_cubit.freezed.dart';

class RecentBytesCubit extends Cubit<RecentBytesState> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final ByteRepository _byteRepository;
  final UserRepository _userRepository;

  RecentBytesCubit(this._byteRepository, this._userRepository)
      : super(RecentBytesState.initial());

  Future<void> updateRecents(PHByte byte) async {
    final currentState = state;
    if (currentState is _LoadSuccess) {
      final String currentUserID = _firebaseAuth.currentUser.uid;
      final updatedRecents = currentState.recents.toList();

      if (updatedRecents.contains(byte)) {
        updatedRecents.remove(byte);
        updatedRecents.insert(0, byte);
      } else {
        updatedRecents.insert(0, byte);
      }

      // If there are more than two recents, remove oldest byte
      if (updatedRecents.length > 2) {
        updatedRecents.removeAt(1);
      }

      PHGlobal.analytics.logEvent(
        name: 'Byte Read',
        parameters: {
          'description': state.toString(),
          'id': byte.id,
        },
      );

      // Don't update database or state if order is the same
      if (!listEquals(currentState.recents, updatedRecents)) {
        // Add new recent byte to database and locally
        final result = await _userRepository.updateUserWithMap(currentUserID, {
          "recent": updatedRecents.map((e) => e.id).toList(),
        });

        if (result.hasData) {
          emit(RecentBytesState.loadSuccess(recents: updatedRecents));
        } else {
          emit(RecentBytesState.loadFailure(
            recents: currentState.recents,
            errorMessage: 'There was a problem updating recents',
          ));
        }
      }
    }
  }

  Future<void> loadRecentBytes(List<String> ids) async {
    emit(const RecentBytesState.loadInProgress());

    PHResult<List<PHByte>> result;

    result = await _byteRepository.getBytesByIDs(ids);

    if (result.hasData) {
      emit(RecentBytesState.loadSuccess(recents: result.data));
    } else {
      emit(RecentBytesState.loadFailure(
        recents: result.data,
        errorMessage: 'There was a problem with recent bytes',
      ));
    }
  }
}
