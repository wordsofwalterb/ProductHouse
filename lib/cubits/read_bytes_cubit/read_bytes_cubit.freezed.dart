// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'read_bytes_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ReadBytesStateTearOff {
  const _$ReadBytesStateTearOff();

// ignore: unused_element
  _Initial initial(List<String> readByteIds) {
    return _Initial(
      readByteIds,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ReadBytesState = _$ReadBytesStateTearOff();

/// @nodoc
mixin _$ReadBytesState {
  List<String> get readByteIds;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(List<String> readByteIds),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(List<String> readByteIds),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ReadBytesStateCopyWith<ReadBytesState> get copyWith;
}

/// @nodoc
abstract class $ReadBytesStateCopyWith<$Res> {
  factory $ReadBytesStateCopyWith(
          ReadBytesState value, $Res Function(ReadBytesState) then) =
      _$ReadBytesStateCopyWithImpl<$Res>;
  $Res call({List<String> readByteIds});
}

/// @nodoc
class _$ReadBytesStateCopyWithImpl<$Res>
    implements $ReadBytesStateCopyWith<$Res> {
  _$ReadBytesStateCopyWithImpl(this._value, this._then);

  final ReadBytesState _value;
  // ignore: unused_field
  final $Res Function(ReadBytesState) _then;

  @override
  $Res call({
    Object readByteIds = freezed,
  }) {
    return _then(_value.copyWith(
      readByteIds: readByteIds == freezed
          ? _value.readByteIds
          : readByteIds as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $ReadBytesStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({List<String> readByteIds});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ReadBytesStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object readByteIds = freezed,
  }) {
    return _then(_Initial(
      readByteIds == freezed ? _value.readByteIds : readByteIds as List<String>,
    ));
  }
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial(this.readByteIds) : assert(readByteIds != null);

  @override
  final List<String> readByteIds;

  @override
  String toString() {
    return 'ReadBytesState.initial(readByteIds: $readByteIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.readByteIds, readByteIds) ||
                const DeepCollectionEquality()
                    .equals(other.readByteIds, readByteIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(readByteIds);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(List<String> readByteIds),
  }) {
    assert(initial != null);
    return initial(readByteIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(List<String> readByteIds),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(readByteIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
  }) {
    assert(initial != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ReadBytesState {
  const factory _Initial(List<String> readByteIds) = _$_Initial;

  @override
  List<String> get readByteIds;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith;
}
