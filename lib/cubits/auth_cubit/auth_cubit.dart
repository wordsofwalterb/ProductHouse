import 'package:ProductHouse/models/user.dart';
import 'package:ProductHouse/services/user_repository.dart';
import 'package:ProductHouse/util/result.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  final UserRepository _userRepository;

  AuthCubit(this._userRepository) : super(const AuthState.unauthenticated());

  Future<void> loginAnonymously() async {
    emit(const AuthState.authenticating());

    final authResult = (_userRepository.isSignedIn())
        ? await _userRepository.getUser()
        : await _userRepository.createAnonymousUser();

    (authResult.hasData)
        ? emit(AuthState.authenticatedAnonymously(user: authResult.data))
        : emit(AuthState.authenticationFailed(authResult.errorMessage));
  }

  // Future<void> toggleReadByte(String byteId) async {
  //  final currentState = state;
  // if (currentState is _AuthenticatedAnonymously) {
  //     PHResult<bool> result;
  //     List<String> readByteIds = currentState.user.read.toList();
  //     String userId = currentState.user.userID;

  //     if (readByteIds.contains(byteId)) {
  //       result = await _userRepository.updateUserWithMap(userId, {
  //         "read": FieldValue.arrayRemove([byteId]),
  //       });
  //       readByteIds.remove(byteId);
  //     } else {
  //       result = await _userRepository.updateUserWithMap(userId, {
  //         "read": FieldValue.arrayUnion([byteId]),
  //       });
  //       readByteIds.add(byteId);
  //     }

  //     if (result.hasData) {
  //       emit(currentState.copyWith.user(read: readByteIds));
  //     } else {
  //       emit(ReadBytesState.loadFailure(
  //         readByteIds: currentState.readByteIds,
  //         errorMessage: 'There was a problem updating bookmarks',
  //       ));
  //     }
  // }
}
