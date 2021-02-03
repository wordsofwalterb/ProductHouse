part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  /// The initial state of authentication.
  const factory UserState.unauthenticated() = _Unauthenticated;
  const factory UserState.authenticating() = _Authenticating;
  const factory UserState.authenticatedAnonymously({@required PHUser user}) =
      _AuthenticatedAnonymously;
  const factory UserState.authenticationFailed() = _AuthenticationFailure;
}
