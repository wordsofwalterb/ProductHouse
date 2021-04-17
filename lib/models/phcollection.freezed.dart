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
  _PHCollection call() {
    return _PHCollection();
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
  Map<String, dynamic> toJson();
}

/// @nodoc
abstract class $PHCollectionCopyWith<$Res> {
  factory $PHCollectionCopyWith(
          PHCollection value, $Res Function(PHCollection) then) =
      _$PHCollectionCopyWithImpl<$Res>;
}

/// @nodoc
class _$PHCollectionCopyWithImpl<$Res> implements $PHCollectionCopyWith<$Res> {
  _$PHCollectionCopyWithImpl(this._value, this._then);

  final PHCollection _value;
  // ignore: unused_field
  final $Res Function(PHCollection) _then;
}

/// @nodoc
abstract class _$PHCollectionCopyWith<$Res> {
  factory _$PHCollectionCopyWith(
          _PHCollection value, $Res Function(_PHCollection) then) =
      __$PHCollectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$PHCollectionCopyWithImpl<$Res> extends _$PHCollectionCopyWithImpl<$Res>
    implements _$PHCollectionCopyWith<$Res> {
  __$PHCollectionCopyWithImpl(
      _PHCollection _value, $Res Function(_PHCollection) _then)
      : super(_value, (v) => _then(v as _PHCollection));

  @override
  _PHCollection get _value => super._value as _PHCollection;
}

@JsonSerializable()

/// @nodoc
class _$_PHCollection implements _PHCollection {
  _$_PHCollection();

  factory _$_PHCollection.fromJson(Map<String, dynamic> json) =>
      _$_$_PHCollectionFromJson(json);

  @override
  String toString() {
    return 'PHCollection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PHCollection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PHCollectionToJson(this);
  }
}

abstract class _PHCollection implements PHCollection {
  factory _PHCollection() = _$_PHCollection;

  factory _PHCollection.fromJson(Map<String, dynamic> json) =
      _$_PHCollection.fromJson;
}
