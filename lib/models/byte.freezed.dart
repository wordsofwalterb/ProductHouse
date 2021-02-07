// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'byte.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PHByte _$PHByteFromJson(Map<String, dynamic> json) {
  return _PHByte.fromJson(json);
}

/// @nodoc
class _$PHByteTearOff {
  const _$PHByteTearOff();

// ignore: unused_element
  _PHByte call(
      {@required String id,
      @required String title,
      @required List<String> tags,
      @required String overview,
      @required String readTime,
      @required List<Map<String, String>> body,
      @required bool featured}) {
    return _PHByte(
      id: id,
      title: title,
      tags: tags,
      overview: overview,
      readTime: readTime,
      body: body,
      featured: featured,
    );
  }

// ignore: unused_element
  PHByte fromJson(Map<String, Object> json) {
    return PHByte.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PHByte = _$PHByteTearOff();

/// @nodoc
mixin _$PHByte {
  String get id;
  String get title;
  List<String> get tags;
  String get overview;
  String get readTime;
  List<Map<String, String>> get body;
  bool get featured;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PHByteCopyWith<PHByte> get copyWith;
}

/// @nodoc
abstract class $PHByteCopyWith<$Res> {
  factory $PHByteCopyWith(PHByte value, $Res Function(PHByte) then) =
      _$PHByteCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      List<String> tags,
      String overview,
      String readTime,
      List<Map<String, String>> body,
      bool featured});
}

/// @nodoc
class _$PHByteCopyWithImpl<$Res> implements $PHByteCopyWith<$Res> {
  _$PHByteCopyWithImpl(this._value, this._then);

  final PHByte _value;
  // ignore: unused_field
  final $Res Function(PHByte) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object tags = freezed,
    Object overview = freezed,
    Object readTime = freezed,
    Object body = freezed,
    Object featured = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      tags: tags == freezed ? _value.tags : tags as List<String>,
      overview: overview == freezed ? _value.overview : overview as String,
      readTime: readTime == freezed ? _value.readTime : readTime as String,
      body: body == freezed ? _value.body : body as List<Map<String, String>>,
      featured: featured == freezed ? _value.featured : featured as bool,
    ));
  }
}

/// @nodoc
abstract class _$PHByteCopyWith<$Res> implements $PHByteCopyWith<$Res> {
  factory _$PHByteCopyWith(_PHByte value, $Res Function(_PHByte) then) =
      __$PHByteCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      List<String> tags,
      String overview,
      String readTime,
      List<Map<String, String>> body,
      bool featured});
}

/// @nodoc
class __$PHByteCopyWithImpl<$Res> extends _$PHByteCopyWithImpl<$Res>
    implements _$PHByteCopyWith<$Res> {
  __$PHByteCopyWithImpl(_PHByte _value, $Res Function(_PHByte) _then)
      : super(_value, (v) => _then(v as _PHByte));

  @override
  _PHByte get _value => super._value as _PHByte;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object tags = freezed,
    Object overview = freezed,
    Object readTime = freezed,
    Object body = freezed,
    Object featured = freezed,
  }) {
    return _then(_PHByte(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      tags: tags == freezed ? _value.tags : tags as List<String>,
      overview: overview == freezed ? _value.overview : overview as String,
      readTime: readTime == freezed ? _value.readTime : readTime as String,
      body: body == freezed ? _value.body : body as List<Map<String, String>>,
      featured: featured == freezed ? _value.featured : featured as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PHByte with DiagnosticableTreeMixin implements _PHByte {
  const _$_PHByte(
      {@required this.id,
      @required this.title,
      @required this.tags,
      @required this.overview,
      @required this.readTime,
      @required this.body,
      @required this.featured})
      : assert(id != null),
        assert(title != null),
        assert(tags != null),
        assert(overview != null),
        assert(readTime != null),
        assert(body != null),
        assert(featured != null);

  factory _$_PHByte.fromJson(Map<String, dynamic> json) =>
      _$_$_PHByteFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final List<String> tags;
  @override
  final String overview;
  @override
  final String readTime;
  @override
  final List<Map<String, String>> body;
  @override
  final bool featured;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PHByte(id: $id, title: $title, tags: $tags, overview: $overview, readTime: $readTime, body: $body, featured: $featured)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PHByte'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('tags', tags))
      ..add(DiagnosticsProperty('overview', overview))
      ..add(DiagnosticsProperty('readTime', readTime))
      ..add(DiagnosticsProperty('body', body))
      ..add(DiagnosticsProperty('featured', featured));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PHByte &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.overview, overview) ||
                const DeepCollectionEquality()
                    .equals(other.overview, overview)) &&
            (identical(other.readTime, readTime) ||
                const DeepCollectionEquality()
                    .equals(other.readTime, readTime)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.featured, featured) ||
                const DeepCollectionEquality()
                    .equals(other.featured, featured)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(overview) ^
      const DeepCollectionEquality().hash(readTime) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(featured);

  @JsonKey(ignore: true)
  @override
  _$PHByteCopyWith<_PHByte> get copyWith =>
      __$PHByteCopyWithImpl<_PHByte>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PHByteToJson(this);
  }
}

abstract class _PHByte implements PHByte {
  const factory _PHByte(
      {@required String id,
      @required String title,
      @required List<String> tags,
      @required String overview,
      @required String readTime,
      @required List<Map<String, String>> body,
      @required bool featured}) = _$_PHByte;

  factory _PHByte.fromJson(Map<String, dynamic> json) = _$_PHByte.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  List<String> get tags;
  @override
  String get overview;
  @override
  String get readTime;
  @override
  List<Map<String, String>> get body;
  @override
  bool get featured;
  @override
  @JsonKey(ignore: true)
  _$PHByteCopyWith<_PHByte> get copyWith;
}
