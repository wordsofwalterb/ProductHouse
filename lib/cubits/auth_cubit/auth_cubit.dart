import 'package:ProductByte/models/user.dart';
import 'package:ProductByte/services/user_repository.dart';
import 'package:ProductByte/util/result.dart';
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
}
