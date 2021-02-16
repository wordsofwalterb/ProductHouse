// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  _Unauthenticated unauthenticated() {
    return const _Unauthenticated();
  }

// ignore: unused_element
  _Authenticating authenticating() {
    return const _Authenticating();
  }

// ignore: unused_element
  _AuthenticatedAnonymously authenticatedAnonymously({@required PHUser user}) {
    return _AuthenticatedAnonymously(
      user: user,
    );
  }

// ignore: unused_element
  _AuthenticationFailure authenticationFailed(dynamic errorMessage) {
    return _AuthenticationFailure(
      errorMessage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unauthenticated(),
    @required TResult authenticating(),
    @required TResult authenticatedAnonymously(PHUser user),
    @required TResult authenticationFailed(dynamic errorMessage),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unauthenticated(),
    TResult authenticating(),
    TResult authenticatedAnonymously(PHUser user),
    TResult authenticationFailed(dynamic errorMessage),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticating(_Authenticating value),
    @required TResult authenticatedAnonymously(_AuthenticatedAnonymously value),
    @required TResult authenticationFailed(_AuthenticationFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticating(_Authenticating value),
    TResult authenticatedAnonymously(_AuthenticatedAnonymously value),
    TResult authenticationFailed(_AuthenticationFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$UnauthenticatedCopyWith<$Res> {
  factory _$UnauthenticatedCopyWith(
          _Unauthenticated value, $Res Function(_Unauthenticated) then) =
      __$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$UnauthenticatedCopyWith<$Res> {
  __$UnauthenticatedCopyWithImpl(
      _Unauthenticated _value, $Res Function(_Unauthenticated) _then)
      : super(_value, (v) => _then(v as _Unauthenticated));

  @override
  _Unauthenticated get _value => super._value as _Unauthenticated;
}

/// @nodoc
class _$_Unauthenticated implements _Unauthenticated {
  const _$_Unauthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unauthenticated(),
    @required TResult authenticating(),
    @required TResult authenticatedAnonymously(PHUser user),
    @required TResult authenticationFailed(dynamic errorMessage),
  }) {
    assert(unauthenticated != null);
    assert(authenticating != null);
    assert(authenticatedAnonymously != null);
    assert(authenticationFailed != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unauthenticated(),
    TResult authenticating(),
    TResult authenticatedAnonymously(PHUser user),
    TResult authenticationFailed(dynamic errorMessage),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticating(_Authenticating value),
    @required TResult authenticatedAnonymously(_AuthenticatedAnonymously value),
    @required TResult authenticationFailed(_AuthenticationFailure value),
  }) {
    assert(unauthenticated != null);
    assert(authenticating != null);
    assert(authenticatedAnonymously != null);
    assert(authenticationFailed != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticating(_Authenticating value),
    TResult authenticatedAnonymously(_AuthenticatedAnonymously value),
    TResult authenticationFailed(_AuthenticationFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthState {
  const factory _Unauthenticated() = _$_Unauthenticated;
}

/// @nodoc
abstract class _$AuthenticatingCopyWith<$Res> {
  factory _$AuthenticatingCopyWith(
          _Authenticating value, $Res Function(_Authenticating) then) =
      __$AuthenticatingCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthenticatingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthenticatingCopyWith<$Res> {
  __$AuthenticatingCopyWithImpl(
      _Authenticating _value, $Res Function(_Authenticating) _then)
      : super(_value, (v) => _then(v as _Authenticating));

  @override
  _Authenticating get _value => super._value as _Authenticating;
}

/// @nodoc
class _$_Authenticating implements _Authenticating {
  const _$_Authenticating();

  @override
  String toString() {
    return 'AuthState.authenticating()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Authenticating);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unauthenticated(),
    @required TResult authenticating(),
    @required TResult authenticatedAnonymously(PHUser user),
    @required TResult authenticationFailed(dynamic errorMessage),
  }) {
    assert(unauthenticated != null);
    assert(authenticating != null);
    assert(authenticatedAnonymously != null);
    assert(authenticationFailed != null);
    return authenticating();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unauthenticated(),
    TResult authenticating(),
    TResult authenticatedAnonymously(PHUser user),
    TResult authenticationFailed(dynamic errorMessage),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticating != null) {
      return authenticating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticating(_Authenticating value),
    @required TResult authenticatedAnonymously(_AuthenticatedAnonymously value),
    @required TResult authenticationFailed(_AuthenticationFailure value),
  }) {
    assert(unauthenticated != null);
    assert(authenticating != null);
    assert(authenticatedAnonymously != null);
    assert(authenticationFailed != null);
    return authenticating(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticating(_Authenticating value),
    TResult authenticatedAnonymously(_AuthenticatedAnonymously value),
    TResult authenticationFailed(_AuthenticationFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticating != null) {
      return authenticating(this);
    }
    return orElse();
  }
}

abstract class _Authenticating implements AuthState {
  const factory _Authenticating() = _$_Authenticating;
}

/// @nodoc
abstract class _$AuthenticatedAnonymouslyCopyWith<$Res> {
  factory _$AuthenticatedAnonymouslyCopyWith(_AuthenticatedAnonymously value,
          $Res Function(_AuthenticatedAnonymously) then) =
      __$AuthenticatedAnonymouslyCopyWithImpl<$Res>;
  $Res call({PHUser user});

  $PHUserCopyWith<$Res> get user;
}

/// @nodoc
class __$AuthenticatedAnonymouslyCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthenticatedAnonymouslyCopyWith<$Res> {
  __$AuthenticatedAnonymouslyCopyWithImpl(_AuthenticatedAnonymously _value,
      $Res Function(_AuthenticatedAnonymously) _then)
      : super(_value, (v) => _then(v as _AuthenticatedAnonymously));

  @override
  _AuthenticatedAnonymously get _value =>
      super._value as _AuthenticatedAnonymously;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_AuthenticatedAnonymously(
      user: user == freezed ? _value.user : user as PHUser,
    ));
  }

  @override
  $PHUserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $PHUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$_AuthenticatedAnonymously implements _AuthenticatedAnonymously {
  const _$_AuthenticatedAnonymously({@required this.user})
      : assert(user != null);

  @override
  final PHUser user;

  @override
  String toString() {
    return 'AuthState.authenticatedAnonymously(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthenticatedAnonymously &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$AuthenticatedAnonymouslyCopyWith<_AuthenticatedAnonymously> get copyWith =>
      __$AuthenticatedAnonymouslyCopyWithImpl<_AuthenticatedAnonymously>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unauthenticated(),
    @required TResult authenticating(),
    @required TResult authenticatedAnonymously(PHUser user),
    @required TResult authenticationFailed(dynamic errorMessage),
  }) {
    assert(unauthenticated != null);
    assert(authenticating != null);
    assert(authenticatedAnonymously != null);
    assert(authenticationFailed != null);
    return authenticatedAnonymously(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unauthenticated(),
    TResult authenticating(),
    TResult authenticatedAnonymously(PHUser user),
    TResult authenticationFailed(dynamic errorMessage),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticatedAnonymously != null) {
      return authenticatedAnonymously(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticating(_Authenticating value),
    @required TResult authenticatedAnonymously(_AuthenticatedAnonymously value),
    @required TResult authenticationFailed(_AuthenticationFailure value),
  }) {
    assert(unauthenticated != null);
    assert(authenticating != null);
    assert(authenticatedAnonymously != null);
    assert(authenticationFailed != null);
    return authenticatedAnonymously(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticating(_Authenticating value),
    TResult authenticatedAnonymously(_AuthenticatedAnonymously value),
    TResult authenticationFailed(_AuthenticationFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticatedAnonymously != null) {
      return authenticatedAnonymously(this);
    }
    return orElse();
  }
}

abstract class _AuthenticatedAnonymously implements AuthState {
  const factory _AuthenticatedAnonymously({@required PHUser user}) =
      _$_AuthenticatedAnonymously;

  PHUser get user;
  @JsonKey(ignore: true)
  _$AuthenticatedAnonymouslyCopyWith<_AuthenticatedAnonymously> get copyWith;
}

/// @nodoc
abstract class _$AuthenticationFailureCopyWith<$Res> {
  factory _$AuthenticationFailureCopyWith(_AuthenticationFailure value,
          $Res Function(_AuthenticationFailure) then) =
      __$AuthenticationFailureCopyWithImpl<$Res>;
  $Res call({dynamic errorMessage});
}

/// @nodoc
class __$AuthenticationFailureCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthenticationFailureCopyWith<$Res> {
  __$AuthenticationFailureCopyWithImpl(_AuthenticationFailure _value,
      $Res Function(_AuthenticationFailure) _then)
      : super(_value, (v) => _then(v as _AuthenticationFailure));

  @override
  _AuthenticationFailure get _value => super._value as _AuthenticationFailure;

  @override
  $Res call({
    Object errorMessage = freezed,
  }) {
    return _then(_AuthenticationFailure(
      errorMessage == freezed ? _value.errorMessage : errorMessage,
    ));
  }
}

/// @nodoc
class _$_AuthenticationFailure implements _AuthenticationFailure {
  const _$_AuthenticationFailure(this.errorMessage)
      : assert(errorMessage != null);

  @override
  final dynamic errorMessage;

  @override
  String toString() {
    return 'AuthState.authenticationFailed(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthenticationFailure &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$AuthenticationFailureCopyWith<_AuthenticationFailure> get copyWith =>
      __$AuthenticationFailureCopyWithImpl<_AuthenticationFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unauthenticated(),
    @required TResult authenticating(),
    @required TResult authenticatedAnonymously(PHUser user),
    @required TResult authenticationFailed(dynamic errorMessage),
  }) {
    assert(unauthenticated != null);
    assert(authenticating != null);
    assert(authenticatedAnonymously != null);
    assert(authenticationFailed != null);
    return authenticationFailed(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unauthenticated(),
    TResult authenticating(),
    TResult authenticatedAnonymously(PHUser user),
    TResult authenticationFailed(dynamic errorMessage),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticationFailed != null) {
      return authenticationFailed(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticating(_Authenticating value),
    @required TResult authenticatedAnonymously(_AuthenticatedAnonymously value),
    @required TResult authenticationFailed(_AuthenticationFailure value),
  }) {
    assert(unauthenticated != null);
    assert(authenticating != null);
    assert(authenticatedAnonymously != null);
    assert(authenticationFailed != null);
    return authenticationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticating(_Authenticating value),
    TResult authenticatedAnonymously(_AuthenticatedAnonymously value),
    TResult authenticationFailed(_AuthenticationFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticationFailed != null) {
      return authenticationFailed(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationFailure implements AuthState {
  const factory _AuthenticationFailure(dynamic errorMessage) =
      _$_AuthenticationFailure;

  dynamic get errorMessage;
  @JsonKey(ignore: true)
  _$AuthenticationFailureCopyWith<_AuthenticationFailure> get copyWith;
}
