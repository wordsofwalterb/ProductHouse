// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'phlink.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PHLink _$PHLinkFromJson(Map<String, dynamic> json) {
  return _PHLink.fromJson(json);
}

/// @nodoc
class _$PHLinkTearOff {
  const _$PHLinkTearOff();

// ignore: unused_element
  _PHLink call(
      {@required String id,
      @required String title,
      @required String sourceName,
      @required String sourceType,
      @required String url,
      dynamic relatedBytes = const []}) {
    return _PHLink(
      id: id,
      title: title,
      sourceName: sourceName,
      sourceType: sourceType,
      url: url,
      relatedBytes: relatedBytes,
    );
  }

// ignore: unused_element
  PHLink fromJson(Map<String, Object> json) {
    return PHLink.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PHLink = _$PHLinkTearOff();

/// @nodoc
mixin _$PHLink {
  String get id;
  String get title;
  String get sourceName;
  String get sourceType;
  String get url;
  dynamic get relatedBytes;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PHLinkCopyWith<PHLink> get copyWith;
}

/// @nodoc
abstract class $PHLinkCopyWith<$Res> {
  factory $PHLinkCopyWith(PHLink value, $Res Function(PHLink) then) =
      _$PHLinkCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String sourceName,
      String sourceType,
      String url,
      dynamic relatedBytes});
}

/// @nodoc
class _$PHLinkCopyWithImpl<$Res> implements $PHLinkCopyWith<$Res> {
  _$PHLinkCopyWithImpl(this._value, this._then);

  final PHLink _value;
  // ignore: unused_field
  final $Res Function(PHLink) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object sourceName = freezed,
    Object sourceType = freezed,
    Object url = freezed,
    Object relatedBytes = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      sourceName:
          sourceName == freezed ? _value.sourceName : sourceName as String,
      sourceType:
          sourceType == freezed ? _value.sourceType : sourceType as String,
      url: url == freezed ? _value.url : url as String,
      relatedBytes: relatedBytes == freezed
          ? _value.relatedBytes
          : relatedBytes as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$PHLinkCopyWith<$Res> implements $PHLinkCopyWith<$Res> {
  factory _$PHLinkCopyWith(_PHLink value, $Res Function(_PHLink) then) =
      __$PHLinkCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String sourceName,
      String sourceType,
      String url,
      dynamic relatedBytes});
}

/// @nodoc
class __$PHLinkCopyWithImpl<$Res> extends _$PHLinkCopyWithImpl<$Res>
    implements _$PHLinkCopyWith<$Res> {
  __$PHLinkCopyWithImpl(_PHLink _value, $Res Function(_PHLink) _then)
      : super(_value, (v) => _then(v as _PHLink));

  @override
  _PHLink get _value => super._value as _PHLink;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object sourceName = freezed,
    Object sourceType = freezed,
    Object url = freezed,
    Object relatedBytes = freezed,
  }) {
    return _then(_PHLink(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      sourceName:
          sourceName == freezed ? _value.sourceName : sourceName as String,
      sourceType:
          sourceType == freezed ? _value.sourceType : sourceType as String,
      url: url == freezed ? _value.url : url as String,
      relatedBytes:
          relatedBytes == freezed ? _value.relatedBytes : relatedBytes,
    ));
  }
}

@JsonSerializable()
@Implements(Model)

/// @nodoc
class _$_PHLink implements _PHLink {
  const _$_PHLink(
      {@required this.id,
      @required this.title,
      @required this.sourceName,
      @required this.sourceType,
      @required this.url,
      this.relatedBytes = const []})
      : assert(id != null),
        assert(title != null),
        assert(sourceName != null),
        assert(sourceType != null),
        assert(url != null),
        assert(relatedBytes != null);

  factory _$_PHLink.fromJson(Map<String, dynamic> json) =>
      _$_$_PHLinkFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String sourceName;
  @override
  final String sourceType;
  @override
  final String url;
  @JsonKey(defaultValue: const [])
  @override
  final dynamic relatedBytes;

  @override
  String toString() {
    return 'PHLink(id: $id, title: $title, sourceName: $sourceName, sourceType: $sourceType, url: $url, relatedBytes: $relatedBytes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PHLink &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.sourceName, sourceName) ||
                const DeepCollectionEquality()
                    .equals(other.sourceName, sourceName)) &&
            (identical(other.sourceType, sourceType) ||
                const DeepCollectionEquality()
                    .equals(other.sourceType, sourceType)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.relatedBytes, relatedBytes) ||
                const DeepCollectionEquality()
                    .equals(other.relatedBytes, relatedBytes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(sourceName) ^
      const DeepCollectionEquality().hash(sourceType) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(relatedBytes);

  @JsonKey(ignore: true)
  @override
  _$PHLinkCopyWith<_PHLink> get copyWith =>
      __$PHLinkCopyWithImpl<_PHLink>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PHLinkToJson(this);
  }
}

abstract class _PHLink implements PHLink, Model {
  const factory _PHLink(
      {@required String id,
      @required String title,
      @required String sourceName,
      @required String sourceType,
      @required String url,
      dynamic relatedBytes}) = _$_PHLink;

  factory _PHLink.fromJson(Map<String, dynamic> json) = _$_PHLink.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get sourceName;
  @override
  String get sourceType;
  @override
  String get url;
  @override
  dynamic get relatedBytes;
  @override
  @JsonKey(ignore: true)
  _$PHLinkCopyWith<_PHLink> get copyWith;
}
