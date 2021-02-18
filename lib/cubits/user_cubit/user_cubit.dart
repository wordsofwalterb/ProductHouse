import 'dart:async';

import 'package:ProductByte/cubits/auth_cubit/auth_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';

class UserCubit extends Cubit<UserState> {
  final AuthCubit _authCubit;
  StreamSubscription _authSubcription;

  UserCubit(this._authCubit) : super(const UserState.initial()) {
    _authSubcription = _authCubit.listen((state) {
      state.when(
          unauthenticated: null,
          authenticating: null,
          authenticatedAnonymously: (user) => {},
          authenticationFailed: null);
    });
  }

  @override
  Future<void> close() {
    _authSubcription.cancel();
    return super.close();
  }
}
