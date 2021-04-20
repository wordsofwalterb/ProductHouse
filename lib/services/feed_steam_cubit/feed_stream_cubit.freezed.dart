// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'feed_stream_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FeedStreamStateTearOff {
  const _$FeedStreamStateTearOff();

// ignore: unused_element
  _Loading<T> loading<T extends Model>(Map<String, T> itemIds) {
    return _Loading<T>(
      itemIds,
    );
  }

// ignore: unused_element
  _Success<T> loaded<T extends Model>(Map<String, T> itemIds,
      {bool hasMoreItems = true}) {
    return _Success<T>(
      itemIds,
      hasMoreItems: hasMoreItems,
    );
  }

// ignore: unused_element
  _Empty<T> empty<T extends Model>(Map<String, T> itemIds) {
    return _Empty<T>(
      itemIds,
    );
  }

// ignore: unused_element
  _Failure<T> failure<T extends Model>(Map<String, T> itemIds) {
    return _Failure<T>(
      itemIds,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FeedStreamState = _$FeedStreamStateTearOff();

/// @nodoc
mixin _$FeedStreamState<T extends Model> {
  Map<String, T> get itemIds;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(Map<String, T> itemIds),
    @required TResult loaded(Map<String, T> itemIds, bool hasMoreItems),
    @required TResult empty(Map<String, T> itemIds),
    @required TResult failure(Map<String, T> itemIds),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(Map<String, T> itemIds),
    TResult loaded(Map<String, T> itemIds, bool hasMoreItems),
    TResult empty(Map<String, T> itemIds),
    TResult failure(Map<String, T> itemIds),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading<T> value),
    @required TResult loaded(_Success<T> value),
    @required TResult empty(_Empty<T> value),
    @required TResult failure(_Failure<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading<T> value),
    TResult loaded(_Success<T> value),
    TResult empty(_Empty<T> value),
    TResult failure(_Failure<T> value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $FeedStreamStateCopyWith<T, FeedStreamState<T>> get copyWith;
}

/// @nodoc
abstract class $FeedStreamStateCopyWith<T extends Model, $Res> {
  factory $FeedStreamStateCopyWith(
          FeedStreamState<T> value, $Res Function(FeedStreamState<T>) then) =
      _$FeedStreamStateCopyWithImpl<T, $Res>;
  $Res call({Map<String, T> itemIds});
}

/// @nodoc
class _$FeedStreamStateCopyWithImpl<T extends Model, $Res>
    implements $FeedStreamStateCopyWith<T, $Res> {
  _$FeedStreamStateCopyWithImpl(this._value, this._then);

  final FeedStreamState<T> _value;
  // ignore: unused_field
  final $Res Function(FeedStreamState<T>) _then;

  @override
  $Res call({
    Object itemIds = freezed,
  }) {
    return _then(_value.copyWith(
      itemIds: itemIds == freezed ? _value.itemIds : itemIds as Map<String, T>,
    ));
  }
}

/// @nodoc
abstract class _$LoadingCopyWith<T extends Model, $Res>
    implements $FeedStreamStateCopyWith<T, $Res> {
  factory _$LoadingCopyWith(
          _Loading<T> value, $Res Function(_Loading<T>) then) =
      __$LoadingCopyWithImpl<T, $Res>;
  @override
  $Res call({Map<String, T> itemIds});
}

/// @nodoc
class __$LoadingCopyWithImpl<T extends Model, $Res>
    extends _$FeedStreamStateCopyWithImpl<T, $Res>
    implements _$LoadingCopyWith<T, $Res> {
  __$LoadingCopyWithImpl(_Loading<T> _value, $Res Function(_Loading<T>) _then)
      : super(_value, (v) => _then(v as _Loading<T>));

  @override
  _Loading<T> get _value => super._value as _Loading<T>;

  @override
  $Res call({
    Object itemIds = freezed,
  }) {
    return _then(_Loading<T>(
      itemIds == freezed ? _value.itemIds : itemIds as Map<String, T>,
    ));
  }
}

/// @nodoc
class _$_Loading<T extends Model> implements _Loading<T> {
  const _$_Loading(this.itemIds) : assert(itemIds != null);

  @override
  final Map<String, T> itemIds;

  @override
  String toString() {
    return 'FeedStreamState<$T>.loading(itemIds: $itemIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loading<T> &&
            (identical(other.itemIds, itemIds) ||
                const DeepCollectionEquality().equals(other.itemIds, itemIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemIds);

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<T, _Loading<T>> get copyWith =>
      __$LoadingCopyWithImpl<T, _Loading<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(Map<String, T> itemIds),
    @required TResult loaded(Map<String, T> itemIds, bool hasMoreItems),
    @required TResult empty(Map<String, T> itemIds),
    @required TResult failure(Map<String, T> itemIds),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(empty != null);
    assert(failure != null);
    return loading(itemIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(Map<String, T> itemIds),
    TResult loaded(Map<String, T> itemIds, bool hasMoreItems),
    TResult empty(Map<String, T> itemIds),
    TResult failure(Map<String, T> itemIds),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(itemIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading<T> value),
    @required TResult loaded(_Success<T> value),
    @required TResult empty(_Empty<T> value),
    @required TResult failure(_Failure<T> value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(empty != null);
    assert(failure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading<T> value),
    TResult loaded(_Success<T> value),
    TResult empty(_Empty<T> value),
    TResult failure(_Failure<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T extends Model> implements FeedStreamState<T> {
  const factory _Loading(Map<String, T> itemIds) = _$_Loading<T>;

  @override
  Map<String, T> get itemIds;
  @override
  @JsonKey(ignore: true)
  _$LoadingCopyWith<T, _Loading<T>> get copyWith;
}

/// @nodoc
abstract class _$SuccessCopyWith<T extends Model, $Res>
    implements $FeedStreamStateCopyWith<T, $Res> {
  factory _$SuccessCopyWith(
          _Success<T> value, $Res Function(_Success<T>) then) =
      __$SuccessCopyWithImpl<T, $Res>;
  @override
  $Res call({Map<String, T> itemIds, bool hasMoreItems});
}

/// @nodoc
class __$SuccessCopyWithImpl<T extends Model, $Res>
    extends _$FeedStreamStateCopyWithImpl<T, $Res>
    implements _$SuccessCopyWith<T, $Res> {
  __$SuccessCopyWithImpl(_Success<T> _value, $Res Function(_Success<T>) _then)
      : super(_value, (v) => _then(v as _Success<T>));

  @override
  _Success<T> get _value => super._value as _Success<T>;

  @override
  $Res call({
    Object itemIds = freezed,
    Object hasMoreItems = freezed,
  }) {
    return _then(_Success<T>(
      itemIds == freezed ? _value.itemIds : itemIds as Map<String, T>,
      hasMoreItems:
          hasMoreItems == freezed ? _value.hasMoreItems : hasMoreItems as bool,
    ));
  }
}

/// @nodoc
class _$_Success<T extends Model> implements _Success<T> {
  const _$_Success(this.itemIds, {this.hasMoreItems = true})
      : assert(itemIds != null),
        assert(hasMoreItems != null);

  @override
  final Map<String, T> itemIds;
  @JsonKey(defaultValue: true)
  @override
  final bool hasMoreItems;

  @override
  String toString() {
    return 'FeedStreamState<$T>.loaded(itemIds: $itemIds, hasMoreItems: $hasMoreItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success<T> &&
            (identical(other.itemIds, itemIds) ||
                const DeepCollectionEquality()
                    .equals(other.itemIds, itemIds)) &&
            (identical(other.hasMoreItems, hasMoreItems) ||
                const DeepCollectionEquality()
                    .equals(other.hasMoreItems, hasMoreItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(itemIds) ^
      const DeepCollectionEquality().hash(hasMoreItems);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<T, _Success<T>> get copyWith =>
      __$SuccessCopyWithImpl<T, _Success<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(Map<String, T> itemIds),
    @required TResult loaded(Map<String, T> itemIds, bool hasMoreItems),
    @required TResult empty(Map<String, T> itemIds),
    @required TResult failure(Map<String, T> itemIds),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(empty != null);
    assert(failure != null);
    return loaded(itemIds, hasMoreItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(Map<String, T> itemIds),
    TResult loaded(Map<String, T> itemIds, bool hasMoreItems),
    TResult empty(Map<String, T> itemIds),
    TResult failure(Map<String, T> itemIds),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(itemIds, hasMoreItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading<T> value),
    @required TResult loaded(_Success<T> value),
    @required TResult empty(_Empty<T> value),
    @required TResult failure(_Failure<T> value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(empty != null);
    assert(failure != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading<T> value),
    TResult loaded(_Success<T> value),
    TResult empty(_Empty<T> value),
    TResult failure(_Failure<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Success<T extends Model> implements FeedStreamState<T> {
  const factory _Success(Map<String, T> itemIds, {bool hasMoreItems}) =
      _$_Success<T>;

  @override
  Map<String, T> get itemIds;
  bool get hasMoreItems;
  @override
  @JsonKey(ignore: true)
  _$SuccessCopyWith<T, _Success<T>> get copyWith;
}

/// @nodoc
abstract class _$EmptyCopyWith<T extends Model, $Res>
    implements $FeedStreamStateCopyWith<T, $Res> {
  factory _$EmptyCopyWith(_Empty<T> value, $Res Function(_Empty<T>) then) =
      __$EmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({Map<String, T> itemIds});
}

/// @nodoc
class __$EmptyCopyWithImpl<T extends Model, $Res>
    extends _$FeedStreamStateCopyWithImpl<T, $Res>
    implements _$EmptyCopyWith<T, $Res> {
  __$EmptyCopyWithImpl(_Empty<T> _value, $Res Function(_Empty<T>) _then)
      : super(_value, (v) => _then(v as _Empty<T>));

  @override
  _Empty<T> get _value => super._value as _Empty<T>;

  @override
  $Res call({
    Object itemIds = freezed,
  }) {
    return _then(_Empty<T>(
      itemIds == freezed ? _value.itemIds : itemIds as Map<String, T>,
    ));
  }
}

/// @nodoc
class _$_Empty<T extends Model> implements _Empty<T> {
  const _$_Empty(this.itemIds) : assert(itemIds != null);

  @override
  final Map<String, T> itemIds;

  @override
  String toString() {
    return 'FeedStreamState<$T>.empty(itemIds: $itemIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Empty<T> &&
            (identical(other.itemIds, itemIds) ||
                const DeepCollectionEquality().equals(other.itemIds, itemIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemIds);

  @JsonKey(ignore: true)
  @override
  _$EmptyCopyWith<T, _Empty<T>> get copyWith =>
      __$EmptyCopyWithImpl<T, _Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(Map<String, T> itemIds),
    @required TResult loaded(Map<String, T> itemIds, bool hasMoreItems),
    @required TResult empty(Map<String, T> itemIds),
    @required TResult failure(Map<String, T> itemIds),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(empty != null);
    assert(failure != null);
    return empty(itemIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(Map<String, T> itemIds),
    TResult loaded(Map<String, T> itemIds, bool hasMoreItems),
    TResult empty(Map<String, T> itemIds),
    TResult failure(Map<String, T> itemIds),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(itemIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading<T> value),
    @required TResult loaded(_Success<T> value),
    @required TResult empty(_Empty<T> value),
    @required TResult failure(_Failure<T> value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(empty != null);
    assert(failure != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading<T> value),
    TResult loaded(_Success<T> value),
    TResult empty(_Empty<T> value),
    TResult failure(_Failure<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty<T extends Model> implements FeedStreamState<T> {
  const factory _Empty(Map<String, T> itemIds) = _$_Empty<T>;

  @override
  Map<String, T> get itemIds;
  @override
  @JsonKey(ignore: true)
  _$EmptyCopyWith<T, _Empty<T>> get copyWith;
}

/// @nodoc
abstract class _$FailureCopyWith<T extends Model, $Res>
    implements $FeedStreamStateCopyWith<T, $Res> {
  factory _$FailureCopyWith(
          _Failure<T> value, $Res Function(_Failure<T>) then) =
      __$FailureCopyWithImpl<T, $Res>;
  @override
  $Res call({Map<String, T> itemIds});
}

/// @nodoc
class __$FailureCopyWithImpl<T extends Model, $Res>
    extends _$FeedStreamStateCopyWithImpl<T, $Res>
    implements _$FailureCopyWith<T, $Res> {
  __$FailureCopyWithImpl(_Failure<T> _value, $Res Function(_Failure<T>) _then)
      : super(_value, (v) => _then(v as _Failure<T>));

  @override
  _Failure<T> get _value => super._value as _Failure<T>;

  @override
  $Res call({
    Object itemIds = freezed,
  }) {
    return _then(_Failure<T>(
      itemIds == freezed ? _value.itemIds : itemIds as Map<String, T>,
    ));
  }
}

/// @nodoc
class _$_Failure<T extends Model> implements _Failure<T> {
  const _$_Failure(this.itemIds) : assert(itemIds != null);

  @override
  final Map<String, T> itemIds;

  @override
  String toString() {
    return 'FeedStreamState<$T>.failure(itemIds: $itemIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure<T> &&
            (identical(other.itemIds, itemIds) ||
                const DeepCollectionEquality().equals(other.itemIds, itemIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemIds);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<T, _Failure<T>> get copyWith =>
      __$FailureCopyWithImpl<T, _Failure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(Map<String, T> itemIds),
    @required TResult loaded(Map<String, T> itemIds, bool hasMoreItems),
    @required TResult empty(Map<String, T> itemIds),
    @required TResult failure(Map<String, T> itemIds),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(empty != null);
    assert(failure != null);
    return failure(itemIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(Map<String, T> itemIds),
    TResult loaded(Map<String, T> itemIds, bool hasMoreItems),
    TResult empty(Map<String, T> itemIds),
    TResult failure(Map<String, T> itemIds),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(itemIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading<T> value),
    @required TResult loaded(_Success<T> value),
    @required TResult empty(_Empty<T> value),
    @required TResult failure(_Failure<T> value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(empty != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading<T> value),
    TResult loaded(_Success<T> value),
    TResult empty(_Empty<T> value),
    TResult failure(_Failure<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure<T extends Model> implements FeedStreamState<T> {
  const factory _Failure(Map<String, T> itemIds) = _$_Failure<T>;

  @override
  Map<String, T> get itemIds;
  @override
  @JsonKey(ignore: true)
  _$FailureCopyWith<T, _Failure<T>> get copyWith;
}
