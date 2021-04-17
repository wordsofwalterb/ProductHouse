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
      {@required
          String id,
      @required
          List<String> bookmarks,
      @required
          List<String> recent,
      @required
          List<String> read,
      bool isTester,
      String featuredByteId,
      @required
      @JsonKey(fromJson: PHFunctions.dateTimeFromTimestamp, toJson: PHFunctions.dateTimeAsIs)
          DateTime creationDate,
      @required
      @JsonKey(fromJson: PHFunctions.dateTimeFromTimestamp, toJson: PHFunctions.dateTimeAsIs)
          DateTime lastOpenDate}) {
    return _PHUser(
      id: id,
      bookmarks: bookmarks,
      recent: recent,
      read: read,
      isTester: isTester,
      featuredByteId: featuredByteId,
      creationDate: creationDate,
      lastOpenDate: lastOpenDate,
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
  /// The unique identifier for the user, assigned by Firestore automatically.
  String get id;

  /// List of references(IDs) to byte bookmarked by the user
  List<String> get bookmarks;

  /// List of references(IDs) to 5 most recent Bytes
  List<String> get recent;

  /// List of references(IDs) to all the bytes marked read by the user
  List<String> get read;

  /// If true then disable analytics for the user
  bool get isTester;

  /// If the user has a specific featured byte
  String get featuredByteId;

  /// When the account was created. Created from firestore [Timestamp].
  @JsonKey(
      fromJson: PHFunctions.dateTimeFromTimestamp,
      toJson: PHFunctions.dateTimeAsIs)
  DateTime get creationDate;

  /// The last time the user opened the app. Created from firestore [Timestamp].
  @JsonKey(
      fromJson: PHFunctions.dateTimeFromTimestamp,
      toJson: PHFunctions.dateTimeAsIs)
  DateTime get lastOpenDate;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PHUserCopyWith<PHUser> get copyWith;
}

/// @nodoc
abstract class $PHUserCopyWith<$Res> {
  factory $PHUserCopyWith(PHUser value, $Res Function(PHUser) then) =
      _$PHUserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      List<String> bookmarks,
      List<String> recent,
      List<String> read,
      bool isTester,
      String featuredByteId,
      @JsonKey(fromJson: PHFunctions.dateTimeFromTimestamp, toJson: PHFunctions.dateTimeAsIs)
          DateTime creationDate,
      @JsonKey(fromJson: PHFunctions.dateTimeFromTimestamp, toJson: PHFunctions.dateTimeAsIs)
          DateTime lastOpenDate});
}

/// @nodoc
class _$PHUserCopyWithImpl<$Res> implements $PHUserCopyWith<$Res> {
  _$PHUserCopyWithImpl(this._value, this._then);

  final PHUser _value;
  // ignore: unused_field
  final $Res Function(PHUser) _then;

  @override
  $Res call({
    Object id = freezed,
    Object bookmarks = freezed,
    Object recent = freezed,
    Object read = freezed,
    Object isTester = freezed,
    Object featuredByteId = freezed,
    Object creationDate = freezed,
    Object lastOpenDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      bookmarks:
          bookmarks == freezed ? _value.bookmarks : bookmarks as List<String>,
      recent: recent == freezed ? _value.recent : recent as List<String>,
      read: read == freezed ? _value.read : read as List<String>,
      isTester: isTester == freezed ? _value.isTester : isTester as bool,
      featuredByteId: featuredByteId == freezed
          ? _value.featuredByteId
          : featuredByteId as String,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate as DateTime,
      lastOpenDate: lastOpenDate == freezed
          ? _value.lastOpenDate
          : lastOpenDate as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$PHUserCopyWith<$Res> implements $PHUserCopyWith<$Res> {
  factory _$PHUserCopyWith(_PHUser value, $Res Function(_PHUser) then) =
      __$PHUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      List<String> bookmarks,
      List<String> recent,
      List<String> read,
      bool isTester,
      String featuredByteId,
      @JsonKey(fromJson: PHFunctions.dateTimeFromTimestamp, toJson: PHFunctions.dateTimeAsIs)
          DateTime creationDate,
      @JsonKey(fromJson: PHFunctions.dateTimeFromTimestamp, toJson: PHFunctions.dateTimeAsIs)
          DateTime lastOpenDate});
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
    Object id = freezed,
    Object bookmarks = freezed,
    Object recent = freezed,
    Object read = freezed,
    Object isTester = freezed,
    Object featuredByteId = freezed,
    Object creationDate = freezed,
    Object lastOpenDate = freezed,
  }) {
    return _then(_PHUser(
      id: id == freezed ? _value.id : id as String,
      bookmarks:
          bookmarks == freezed ? _value.bookmarks : bookmarks as List<String>,
      recent: recent == freezed ? _value.recent : recent as List<String>,
      read: read == freezed ? _value.read : read as List<String>,
      isTester: isTester == freezed ? _value.isTester : isTester as bool,
      featuredByteId: featuredByteId == freezed
          ? _value.featuredByteId
          : featuredByteId as String,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate as DateTime,
      lastOpenDate: lastOpenDate == freezed
          ? _value.lastOpenDate
          : lastOpenDate as DateTime,
    ));
  }
}

@JsonSerializable()
@Implements(Model)

/// @nodoc
class _$_PHUser with DiagnosticableTreeMixin implements _PHUser {
  const _$_PHUser(
      {@required
          this.id,
      @required
          this.bookmarks,
      @required
          this.recent,
      @required
          this.read,
      this.isTester,
      this.featuredByteId,
      @required
      @JsonKey(fromJson: PHFunctions.dateTimeFromTimestamp, toJson: PHFunctions.dateTimeAsIs)
          this.creationDate,
      @required
      @JsonKey(fromJson: PHFunctions.dateTimeFromTimestamp, toJson: PHFunctions.dateTimeAsIs)
          this.lastOpenDate})
      : assert(id != null),
        assert(bookmarks != null),
        assert(recent != null),
        assert(read != null),
        assert(creationDate != null),
        assert(lastOpenDate != null);

  factory _$_PHUser.fromJson(Map<String, dynamic> json) =>
      _$_$_PHUserFromJson(json);

  @override

  /// The unique identifier for the user, assigned by Firestore automatically.
  final String id;
  @override

  /// List of references(IDs) to byte bookmarked by the user
  final List<String> bookmarks;
  @override

  /// List of references(IDs) to 5 most recent Bytes
  final List<String> recent;
  @override

  /// List of references(IDs) to all the bytes marked read by the user
  final List<String> read;
  @override

  /// If true then disable analytics for the user
  final bool isTester;
  @override

  /// If the user has a specific featured byte
  final String featuredByteId;
  @override

  /// When the account was created. Created from firestore [Timestamp].
  @JsonKey(
      fromJson: PHFunctions.dateTimeFromTimestamp,
      toJson: PHFunctions.dateTimeAsIs)
  final DateTime creationDate;
  @override

  /// The last time the user opened the app. Created from firestore [Timestamp].
  @JsonKey(
      fromJson: PHFunctions.dateTimeFromTimestamp,
      toJson: PHFunctions.dateTimeAsIs)
  final DateTime lastOpenDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PHUser(id: $id, bookmarks: $bookmarks, recent: $recent, read: $read, isTester: $isTester, featuredByteId: $featuredByteId, creationDate: $creationDate, lastOpenDate: $lastOpenDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PHUser'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('bookmarks', bookmarks))
      ..add(DiagnosticsProperty('recent', recent))
      ..add(DiagnosticsProperty('read', read))
      ..add(DiagnosticsProperty('isTester', isTester))
      ..add(DiagnosticsProperty('featuredByteId', featuredByteId))
      ..add(DiagnosticsProperty('creationDate', creationDate))
      ..add(DiagnosticsProperty('lastOpenDate', lastOpenDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PHUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.bookmarks, bookmarks) ||
                const DeepCollectionEquality()
                    .equals(other.bookmarks, bookmarks)) &&
            (identical(other.recent, recent) ||
                const DeepCollectionEquality().equals(other.recent, recent)) &&
            (identical(other.read, read) ||
                const DeepCollectionEquality().equals(other.read, read)) &&
            (identical(other.isTester, isTester) ||
                const DeepCollectionEquality()
                    .equals(other.isTester, isTester)) &&
            (identical(other.featuredByteId, featuredByteId) ||
                const DeepCollectionEquality()
                    .equals(other.featuredByteId, featuredByteId)) &&
            (identical(other.creationDate, creationDate) ||
                const DeepCollectionEquality()
                    .equals(other.creationDate, creationDate)) &&
            (identical(other.lastOpenDate, lastOpenDate) ||
                const DeepCollectionEquality()
                    .equals(other.lastOpenDate, lastOpenDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(bookmarks) ^
      const DeepCollectionEquality().hash(recent) ^
      const DeepCollectionEquality().hash(read) ^
      const DeepCollectionEquality().hash(isTester) ^
      const DeepCollectionEquality().hash(featuredByteId) ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(lastOpenDate);

  @JsonKey(ignore: true)
  @override
  _$PHUserCopyWith<_PHUser> get copyWith =>
      __$PHUserCopyWithImpl<_PHUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PHUserToJson(this);
  }
}

abstract class _PHUser implements PHUser, Model {
  const factory _PHUser(
      {@required
          String id,
      @required
          List<String> bookmarks,
      @required
          List<String> recent,
      @required
          List<String> read,
      bool isTester,
      String featuredByteId,
      @required
      @JsonKey(fromJson: PHFunctions.dateTimeFromTimestamp, toJson: PHFunctions.dateTimeAsIs)
          DateTime creationDate,
      @required
      @JsonKey(fromJson: PHFunctions.dateTimeFromTimestamp, toJson: PHFunctions.dateTimeAsIs)
          DateTime lastOpenDate}) = _$_PHUser;

  factory _PHUser.fromJson(Map<String, dynamic> json) = _$_PHUser.fromJson;

  @override

  /// The unique identifier for the user, assigned by Firestore automatically.
  String get id;
  @override

  /// List of references(IDs) to byte bookmarked by the user
  List<String> get bookmarks;
  @override

  /// List of references(IDs) to 5 most recent Bytes
  List<String> get recent;
  @override

  /// List of references(IDs) to all the bytes marked read by the user
  List<String> get read;
  @override

  /// If true then disable analytics for the user
  bool get isTester;
  @override

  /// If the user has a specific featured byte
  String get featuredByteId;
  @override

  /// When the account was created. Created from firestore [Timestamp].
  @JsonKey(
      fromJson: PHFunctions.dateTimeFromTimestamp,
      toJson: PHFunctions.dateTimeAsIs)
  DateTime get creationDate;
  @override

  /// The last time the user opened the app. Created from firestore [Timestamp].
  @JsonKey(
      fromJson: PHFunctions.dateTimeFromTimestamp,
      toJson: PHFunctions.dateTimeAsIs)
  DateTime get lastOpenDate;
  @override
  @JsonKey(ignore: true)
  _$PHUserCopyWith<_PHUser> get copyWith;
}
