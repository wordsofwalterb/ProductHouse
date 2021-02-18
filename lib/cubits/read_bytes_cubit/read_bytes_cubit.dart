import 'package:ProductByte/services/byte_repository.dart';
import 'package:ProductByte/services/user_repository.dart';
import 'package:ProductByte/util/global.dart';
import 'package:ProductByte/util/result.dart';
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

  ReadBytesCubit(this._byteRepository, this._userRepository, List<String> ids)
      : super(ReadBytesState.initial(ids));

  Future<void> toggleReadByte(String byteId) async {
    final String currentUserID = _firebaseAuth.currentUser.uid;
    PHResult<bool> result;
    List<String> updatedReadByteIds = state.readByteIds.toList();

    if (state.readByteIds.contains(byteId)) {
      result = await _userRepository.updateUserWithMap(currentUserID, {
        "read": FieldValue.arrayRemove([byteId]),
      });
      updatedReadByteIds.remove(byteId);
      PHGlobal.analytics.logEvent(
        name: 'Read Byte Removed',
        parameters: {
          'description': state.toString(),
          'id': byteId,
        },
      );
    } else {
      result = await _userRepository.updateUserWithMap(currentUserID, {
        "read": FieldValue.arrayUnion([byteId]),
      });
      updatedReadByteIds.add(byteId);
      PHGlobal.analytics.logEvent(
        name: 'Read Byte Added',
        parameters: {
          'description': state.toString(),
          'id': byteId,
        },
      );
    }

    emit(ReadBytesState.initial(updatedReadByteIds));
  }
}
