part of 'auth_cubit.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.authenticating() = _Authenticating;
  const factory AuthState.authenticatedAnonymously({@required PHUser user}) =
      _AuthenticatedAnonymously;
  const factory AuthState.authenticationFailed(errorMessage) =
      _AuthenticationFailure;
}
