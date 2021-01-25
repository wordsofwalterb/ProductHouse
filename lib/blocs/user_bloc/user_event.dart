part of 'user_bloc.dart';

@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.loginAnonymously() = _LoginAnonymously;
}
