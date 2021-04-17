// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'phcollection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PHCollection _$PHCollectionFromJson(Map<String, dynamic> json) {
  return _PHCollection.fromJson(json);
}

/// @nodoc
class _$PHCollectionTearOff {
  const _$PHCollectionTearOff();

// ignore: unused_element
  _PHCollection call(
      {@required String id,
      @required String title,
      List<String> tags = const [],
      @required String readTime,
      List<String> bytes = const []}) {
    return _PHCollection(
      id: id,
      title: title,
      tags: tags,
      readTime: readTime,
      bytes: bytes,
    );
  }

// ignore: unused_element
  PHCollection fromJson(Map<String, Object> json) {
    return PHCollection.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PHCollection = _$PHCollectionTearOff();

/// @nodoc
mixin _$PHCollection {
  String get id;
  String get title;
  List<String> get tags;
  String get readTime;
  List<String> get bytes;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PHCollectionCopyWith<PHCollection> get copyWith;
}

/// @nodoc
abstract class $PHCollectionCopyWith<$Res> {
  factory $PHCollectionCopyWith(
          PHCollection value, $Res Function(PHCollection) then) =
      _$PHCollectionCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      List<String> tags,
      String readTime,
      List<String> bytes});
}

/// @nodoc
class _$PHCollectionCopyWithImpl<$Res> implements $PHCollectionCopyWith<$Res> {
  _$PHCollectionCopyWithImpl(this._value, this._then);

  final PHCollection _value;
  // ignore: unused_field
  final $Res Function(PHCollection) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object tags = freezed,
    Object readTime = freezed,
    Object bytes = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      tags: tags == freezed ? _value.tags : tags as List<String>,
      readTime: readTime == freezed ? _value.readTime : readTime as String,
      bytes: bytes == freezed ? _value.bytes : bytes as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$PHCollectionCopyWith<$Res>
    implements $PHCollectionCopyWith<$Res> {
  factory _$PHCollectionCopyWith(
          _PHCollection value, $Res Function(_PHCollection) then) =
      __$PHCollectionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      List<String> tags,
      String readTime,
      List<String> bytes});
}

/// @nodoc
class __$PHCollectionCopyWithImpl<$Res> extends _$PHCollectionCopyWithImpl<$Res>
    implements _$PHCollectionCopyWith<$Res> {
  __$PHCollectionCopyWithImpl(
      _PHCollection _value, $Res Function(_PHCollection) _then)
      : super(_value, (v) => _then(v as _PHCollection));

  @override
  _PHCollection get _value => super._value as _PHCollection;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object tags = freezed,
    Object readTime = freezed,
    Object bytes = freezed,
  }) {
    return _then(_PHCollection(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      tags: tags == freezed ? _value.tags : tags as List<String>,
      readTime: readTime == freezed ? _value.readTime : readTime as String,
      bytes: bytes == freezed ? _value.bytes : bytes as List<String>,
    ));
  }
}

@JsonSerializable()
@Implements(Model)

/// @nodoc
class _$_PHCollection implements _PHCollection {
  _$_PHCollection(
      {@required this.id,
      @required this.title,
      this.tags = const [],
      @required this.readTime,
      this.bytes = const []})
      : assert(id != null),
        assert(title != null),
        assert(tags != null),
        assert(readTime != null),
        assert(bytes != null);

  factory _$_PHCollection.fromJson(Map<String, dynamic> json) =>
      _$_$_PHCollectionFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> tags;
  @override
  final String readTime;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> bytes;

  @override
  String toString() {
    return 'PHCollection(id: $id, title: $title, tags: $tags, readTime: $readTime, bytes: $bytes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PHCollection &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.readTime, readTime) ||
                const DeepCollectionEquality()
                    .equals(other.readTime, readTime)) &&
            (identical(other.bytes, bytes) ||
                const DeepCollectionEquality().equals(other.bytes, bytes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(readTime) ^
      const DeepCollectionEquality().hash(bytes);

  @JsonKey(ignore: true)
  @override
  _$PHCollectionCopyWith<_PHCollection> get copyWith =>
      __$PHCollectionCopyWithImpl<_PHCollection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PHCollectionToJson(this);
  }
}

abstract class _PHCollection implements PHCollection, Model {
  factory _PHCollection(
      {@required String id,
      @required String title,
      List<String> tags,
      @required String readTime,
      List<String> bytes}) = _$_PHCollection;

  factory _PHCollection.fromJson(Map<String, dynamic> json) =
      _$_PHCollection.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  List<String> get tags;
  @override
  String get readTime;
  @override
  List<String> get bytes;
  @override
  @JsonKey(ignore: true)
  _$PHCollectionCopyWith<_PHCollection> get copyWith;
}
