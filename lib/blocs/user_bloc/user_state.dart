part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState.unauthenticated() = _Unauthenticated;
  const factory UserState.authenticating() = _Authenticating;
  const factory UserState.authenticatedAnonymously({@required PHUser user}) =
      _AuthenticatedAnonymously;
  const factory UserState.authenticationFailure() = _AuthenticationFailure;
}
