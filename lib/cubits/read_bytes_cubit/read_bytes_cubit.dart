import 'package:ProductHouse/services/byte_repository.dart';
import 'package:ProductHouse/services/user_repository.dart';
import 'package:ProductHouse/util/result.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_bytes_state.dart';
part 'read_bytes_cubit.freezed.dart';

class ReadBytesCubit extends Cubit<ReadBytesState> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final ByteRepository _byteRepository;
  final UserRepository _userRepository;

  ReadBytesCubit(this._byteRepository, this._userRepository)
      : super(ReadBytesState.initial());

  Future<void> toggleReadByte(String byteId) async {
    final currentState = state;
    if (currentState is _LoadSuccess) {
      final String currentUserID = _firebaseAuth.currentUser.uid;
      PHResult<bool> result;
      List<String> updatedReadByteIds = currentState.readByteIds.toList();

      if (currentState.readByteIds.contains(byteId)) {
        result = await _userRepository.updateUserWithMap(currentUserID, {
          "read": FieldValue.arrayRemove([byteId]),
        });
        updatedReadByteIds.remove(byteId);
      } else {
        result = await _userRepository.updateUserWithMap(currentUserID, {
          "read": FieldValue.arrayUnion([byteId]),
        });
        updatedReadByteIds.add(byteId);
      }

      if (!result.hasError) {
        emit(ReadBytesState.loadSuccess(readByteIds: updatedReadByteIds));
      } else {
        emit(ReadBytesState.loadFailure(
          readByteIds: currentState.readByteIds,
          errorMessage: 'There was a problem updating bookmarks',
        ));
      }
    }
  }
}
