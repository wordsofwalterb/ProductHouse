part of 'user_bloc.dart';

@freezed
abstract class UserEvent with _$UserEvent {
  /// Logs in the user without the need for any credentials
  const factory UserEvent.loginAnonymously() = _LoginAnonymously;
  const factory UserEvent.updateUser({bool hasDarkMode}) = _UpdateUser;
}
