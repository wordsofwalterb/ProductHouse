// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PHUser _$PHUserFromJson(Map<String, dynamic> json) {
  return _PHUser.fromJson(json);
}

/// @nodoc
class _$PHUserTearOff {
  const _$PHUserTearOff();

// ignore: unused_element
  _PHUser call(
      {@required String userID,
      @required List<String> bookmarks,
      @required List<String> recent,
      @required List<String> read}) {
    return _PHUser(
      userID: userID,
      bookmarks: bookmarks,
      recent: recent,
      read: read,
    );
  }

// ignore: unused_element
  PHUser fromJson(Map<String, Object> json) {
    return PHUser.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PHUser = _$PHUserTearOff();

/// @nodoc
mixin _$PHUser {
  /// The unique identifier for the user
  String get userID;

  /// List of references to bookmarked Bytes
  List<String> get bookmarks;

  /// List of references to 5 most recent Bytes
  List<String> get recent;

  /// List of references to all the read Bytes
  List<String> get read;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PHUserCopyWith<PHUser> get copyWith;
}

/// @nodoc
abstract class $PHUserCopyWith<$Res> {
  factory $PHUserCopyWith(PHUser value, $Res Function(PHUser) then) =
      _$PHUserCopyWithImpl<$Res>;
  $Res call(
      {String userID,
      List<String> bookmarks,
      List<String> recent,
      List<String> read});
}

/// @nodoc
class _$PHUserCopyWithImpl<$Res> implements $PHUserCopyWith<$Res> {
  _$PHUserCopyWithImpl(this._value, this._then);

  final PHUser _value;
  // ignore: unused_field
  final $Res Function(PHUser) _then;

  @override
  $Res call({
    Object userID = freezed,
    Object bookmarks = freezed,
    Object recent = freezed,
    Object read = freezed,
  }) {
    return _then(_value.copyWith(
      userID: userID == freezed ? _value.userID : userID as String,
      bookmarks:
          bookmarks == freezed ? _value.bookmarks : bookmarks as List<String>,
      recent: recent == freezed ? _value.recent : recent as List<String>,
      read: read == freezed ? _value.read : read as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$PHUserCopyWith<$Res> implements $PHUserCopyWith<$Res> {
  factory _$PHUserCopyWith(_PHUser value, $Res Function(_PHUser) then) =
      __$PHUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String userID,
      List<String> bookmarks,
      List<String> recent,
      List<String> read});
}

/// @nodoc
class __$PHUserCopyWithImpl<$Res> extends _$PHUserCopyWithImpl<$Res>
    implements _$PHUserCopyWith<$Res> {
  __$PHUserCopyWithImpl(_PHUser _value, $Res Function(_PHUser) _then)
      : super(_value, (v) => _then(v as _PHUser));

  @override
  _PHUser get _value => super._value as _PHUser;

  @override
  $Res call({
    Object userID = freezed,
    Object bookmarks = freezed,
    Object recent = freezed,
    Object read = freezed,
  }) {
    return _then(_PHUser(
      userID: userID == freezed ? _value.userID : userID as String,
      bookmarks:
          bookmarks == freezed ? _value.bookmarks : bookmarks as List<String>,
      recent: recent == freezed ? _value.recent : recent as List<String>,
      read: read == freezed ? _value.read : read as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PHUser with DiagnosticableTreeMixin implements _PHUser {
  const _$_PHUser(
      {@required this.userID,
      @required this.bookmarks,
      @required this.recent,
      @required this.read})
      : assert(userID != null),
        assert(bookmarks != null),
        assert(recent != null),
        assert(read != null);

  factory _$_PHUser.fromJson(Map<String, dynamic> json) =>
      _$_$_PHUserFromJson(json);

  @override

  /// The unique identifier for the user
  final String userID;
  @override

  /// List of references to bookmarked Bytes
  final List<String> bookmarks;
  @override

  /// List of references to 5 most recent Bytes
  final List<String> recent;
  @override

  /// List of references to all the read Bytes
  final List<String> read;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PHUser(userID: $userID, bookmarks: $bookmarks, recent: $recent, read: $read)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PHUser'))
      ..add(DiagnosticsProperty('userID', userID))
      ..add(DiagnosticsProperty('bookmarks', bookmarks))
      ..add(DiagnosticsProperty('recent', recent))
      ..add(DiagnosticsProperty('read', read));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PHUser &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)) &&
            (identical(other.bookmarks, bookmarks) ||
                const DeepCollectionEquality()
                    .equals(other.bookmarks, bookmarks)) &&
            (identical(other.recent, recent) ||
                const DeepCollectionEquality().equals(other.recent, recent)) &&
            (identical(other.read, read) ||
                const DeepCollectionEquality().equals(other.read, read)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userID) ^
      const DeepCollectionEquality().hash(bookmarks) ^
      const DeepCollectionEquality().hash(recent) ^
      const DeepCollectionEquality().hash(read);

  @JsonKey(ignore: true)
  @override
  _$PHUserCopyWith<_PHUser> get copyWith =>
      __$PHUserCopyWithImpl<_PHUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PHUserToJson(this);
  }
}

abstract class _PHUser implements PHUser {
  const factory _PHUser(
      {@required String userID,
      @required List<String> bookmarks,
      @required List<String> recent,
      @required List<String> read}) = _$_PHUser;

  factory _PHUser.fromJson(Map<String, dynamic> json) = _$_PHUser.fromJson;

  @override

  /// The unique identifier for the user
  String get userID;
  @override

  /// List of references to bookmarked Bytes
  List<String> get bookmarks;
  @override

  /// List of references to 5 most recent Bytes
  List<String> get recent;
  @override

  /// List of references to all the read Bytes
  List<String> get read;
  @override
  @JsonKey(ignore: true)
  _$PHUserCopyWith<_PHUser> get copyWith;
}
