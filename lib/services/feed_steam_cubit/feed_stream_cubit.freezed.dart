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
  _Initial<T> initial<T extends Model>(Map<String, T> itemIds) {
    return _Initial<T>(
      itemIds,
    );
  }

// ignore: unused_element
  _Loading<T> loading<T extends Model>(Map<String, T> itemIds) {
    return _Loading<T>(
      itemIds,
    );
  }

// ignore: unused_element
  _Success<T> loaded<T extends Model>(Map<String, T> itemIds) {
    return _Success<T>(
      itemIds,
    );
  }

// ignore: unused_element
  _LoadingMore<T> loadingMore<T extends Model>(Map<String, T> itemIds) {
    return _LoadingMore<T>(
      itemIds,
    );
  }

// ignore: unused_element
  _ReachedMax<T> reachedMax<T extends Model>(Map<String, T> itemIds) {
    return _ReachedMax<T>(
      itemIds,
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
    @required TResult initial(Map<String, T> itemIds),
    @required TResult loading(Map<String, T> itemIds),
    @required TResult loaded(Map<String, T> itemIds),
    @required TResult loadingMore(Map<String, T> itemIds),
    @required TResult reachedMax(Map<String, T> itemIds),
    @required TResult empty(Map<String, T> itemIds),
    @required TResult failure(Map<String, T> itemIds),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Map<String, T> itemIds),
    TResult loading(Map<String, T> itemIds),
    TResult loaded(Map<String, T> itemIds),
    TResult loadingMore(Map<String, T> itemIds),
    TResult reachedMax(Map<String, T> itemIds),
    TResult empty(Map<String, T> itemIds),
    TResult failure(Map<String, T> itemIds),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial<T> value),
    @required TResult loading(_Loading<T> value),
    @required TResult loaded(_Success<T> value),
    @required TResult loadingMore(_LoadingMore<T> value),
    @required TResult reachedMax(_ReachedMax<T> value),
    @required TResult empty(_Empty<T> value),
    @required TResult failure(_Failure<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial<T> value),
    TResult loading(_Loading<T> value),
    TResult loaded(_Success<T> value),
    TResult loadingMore(_LoadingMore<T> value),
    TResult reachedMax(_ReachedMax<T> value),
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
abstract class _$InitialCopyWith<T extends Model, $Res>
    implements $FeedStreamStateCopyWith<T, $Res> {
  factory _$InitialCopyWith(
          _Initial<T> value, $Res Function(_Initial<T>) then) =
      __$InitialCopyWithImpl<T, $Res>;
  @override
  $Res call({Map<String, T> itemIds});
}

/// @nodoc
class __$InitialCopyWithImpl<T extends Model, $Res>
    extends _$FeedStreamStateCopyWithImpl<T, $Res>
    implements _$InitialCopyWith<T, $Res> {
  __$InitialCopyWithImpl(_Initial<T> _value, $Res Function(_Initial<T>) _then)
      : super(_value, (v) => _then(v as _Initial<T>));

  @override
  _Initial<T> get _value => super._value as _Initial<T>;

  @override
  $Res call({
    Object itemIds = freezed,
  }) {
    return _then(_Initial<T>(
      itemIds == freezed ? _value.itemIds : itemIds as Map<String, T>,
    ));
  }
}

/// @nodoc
class _$_Initial<T extends Model> implements _Initial<T> {
  const _$_Initial(this.itemIds) : assert(itemIds != null);

  @override
  final Map<String, T> itemIds;

  @override
  String toString() {
    return 'FeedStreamState<$T>.initial(itemIds: $itemIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial<T> &&
            (identical(other.itemIds, itemIds) ||
                const DeepCollectionEquality().equals(other.itemIds, itemIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemIds);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<T, _Initial<T>> get copyWith =>
      __$InitialCopyWithImpl<T, _Initial<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Map<String, T> itemIds),
    @required TResult loading(Map<String, T> itemIds),
    @required TResult loaded(Map<String, T> itemIds),
    @required TResult loadingMore(Map<String, T> itemIds),
    @required TResult reachedMax(Map<String, T> itemIds),
    @required TResult empty(Map<String, T> itemIds),
    @required TResult failure(Map<String, T> itemIds),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(loadingMore != null);
    assert(reachedMax != null);
    assert(empty != null);
    assert(failure != null);
    return initial(itemIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Map<String, T> itemIds),
    TResult loading(Map<String, T> itemIds),
    TResult loaded(Map<String, T> itemIds),
    TResult loadingMore(Map<String, T> itemIds),
    TResult reachedMax(Map<String, T> itemIds),
    TResult empty(Map<String, T> itemIds),
    TResult failure(Map<String, T> itemIds),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(itemIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial<T> value),
    @required TResult loading(_Loading<T> value),
    @required TResult loaded(_Success<T> value),
    @required TResult loadingMore(_LoadingMore<T> value),
    @required TResult reachedMax(_ReachedMax<T> value),
    @required TResult empty(_Empty<T> value),
    @required TResult failure(_Failure<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(loadingMore != null);
    assert(reachedMax != null);
    assert(empty != null);
    assert(failure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial<T> value),
    TResult loading(_Loading<T> value),
    TResult loaded(_Success<T> value),
    TResult loadingMore(_LoadingMore<T> value),
    TResult reachedMax(_ReachedMax<T> value),
    TResult empty(_Empty<T> value),
    TResult failure(_Failure<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T extends Model> implements FeedStreamState<T> {
  const factory _Initial(Map<String, T> itemIds) = _$_Initial<T>;

  @override
  Map<String, T> get itemIds;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<T, _Initial<T>> get copyWith;
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
    @required TResult initial(Map<String, T> itemIds),
    @required TResult loading(Map<String, T> itemIds),
    @required TResult loaded(Map<String, T> itemIds),
    @required TResult loadingMore(Map<String, T> itemIds),
    @required TResult reachedMax(Map<String, T> itemIds),
    @required TResult empty(Map<String, T> itemIds),
    @required TResult failure(Map<String, T> itemIds),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(loadingMore != null);
    assert(reachedMax != null);
    assert(empty != null);
    assert(failure != null);
    return loading(itemIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Map<String, T> itemIds),
    TResult loading(Map<String, T> itemIds),
    TResult loaded(Map<String, T> itemIds),
    TResult loadingMore(Map<String, T> itemIds),
    TResult reachedMax(Map<String, T> itemIds),
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
    @required TResult initial(_Initial<T> value),
    @required TResult loading(_Loading<T> value),
    @required TResult loaded(_Success<T> value),
    @required TResult loadingMore(_LoadingMore<T> value),
    @required TResult reachedMax(_ReachedMax<T> value),
    @required TResult empty(_Empty<T> value),
    @required TResult failure(_Failure<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(loadingMore != null);
    assert(reachedMax != null);
    assert(empty != null);
    assert(failure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial<T> value),
    TResult loading(_Loading<T> value),
    TResult loaded(_Success<T> value),
    TResult loadingMore(_LoadingMore<T> value),
    TResult reachedMax(_ReachedMax<T> value),
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
  $Res call({Map<String, T> itemIds});
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
  }) {
    return _then(_Success<T>(
      itemIds == freezed ? _value.itemIds : itemIds as Map<String, T>,
    ));
  }
}

/// @nodoc
class _$_Success<T extends Model> implements _Success<T> {
  const _$_Success(this.itemIds) : assert(itemIds != null);

  @override
  final Map<String, T> itemIds;

  @override
  String toString() {
    return 'FeedStreamState<$T>.loaded(itemIds: $itemIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success<T> &&
            (identical(other.itemIds, itemIds) ||
                const DeepCollectionEquality().equals(other.itemIds, itemIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemIds);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<T, _Success<T>> get copyWith =>
      __$SuccessCopyWithImpl<T, _Success<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Map<String, T> itemIds),
    @required TResult loading(Map<String, T> itemIds),
    @required TResult loaded(Map<String, T> itemIds),
    @required TResult loadingMore(Map<String, T> itemIds),
    @required TResult reachedMax(Map<String, T> itemIds),
    @required TResult empty(Map<String, T> itemIds),
    @required TResult failure(Map<String, T> itemIds),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(loadingMore != null);
    assert(reachedMax != null);
    assert(empty != null);
    assert(failure != null);
    return loaded(itemIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Map<String, T> itemIds),
    TResult loading(Map<String, T> itemIds),
    TResult loaded(Map<String, T> itemIds),
    TResult loadingMore(Map<String, T> itemIds),
    TResult reachedMax(Map<String, T> itemIds),
    TResult empty(Map<String, T> itemIds),
    TResult failure(Map<String, T> itemIds),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(itemIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial<T> value),
    @required TResult loading(_Loading<T> value),
    @required TResult loaded(_Success<T> value),
    @required TResult loadingMore(_LoadingMore<T> value),
    @required TResult reachedMax(_ReachedMax<T> value),
    @required TResult empty(_Empty<T> value),
    @required TResult failure(_Failure<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(loadingMore != null);
    assert(reachedMax != null);
    assert(empty != null);
    assert(failure != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial<T> value),
    TResult loading(_Loading<T> value),
    TResult loaded(_Success<T> value),
    TResult loadingMore(_LoadingMore<T> value),
    TResult reachedMax(_ReachedMax<T> value),
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
  const factory _Success(Map<String, T> itemIds) = _$_Success<T>;

  @override
  Map<String, T> get itemIds;
  @override
  @JsonKey(ignore: true)
  _$SuccessCopyWith<T, _Success<T>> get copyWith;
}

/// @nodoc
abstract class _$LoadingMoreCopyWith<T extends Model, $Res>
    implements $FeedStreamStateCopyWith<T, $Res> {
  factory _$LoadingMoreCopyWith(
          _LoadingMore<T> value, $Res Function(_LoadingMore<T>) then) =
      __$LoadingMoreCopyWithImpl<T, $Res>;
  @override
  $Res call({Map<String, T> itemIds});
}

/// @nodoc
class __$LoadingMoreCopyWithImpl<T extends Model, $Res>
    extends _$FeedStreamStateCopyWithImpl<T, $Res>
    implements _$LoadingMoreCopyWith<T, $Res> {
  __$LoadingMoreCopyWithImpl(
      _LoadingMore<T> _value, $Res Function(_LoadingMore<T>) _then)
      : super(_value, (v) => _then(v as _LoadingMore<T>));

  @override
  _LoadingMore<T> get _value => super._value as _LoadingMore<T>;

  @override
  $Res call({
    Object itemIds = freezed,
  }) {
    return _then(_LoadingMore<T>(
      itemIds == freezed ? _value.itemIds : itemIds as Map<String, T>,
    ));
  }
}

/// @nodoc
class _$_LoadingMore<T extends Model> implements _LoadingMore<T> {
  const _$_LoadingMore(this.itemIds) : assert(itemIds != null);

  @override
  final Map<String, T> itemIds;

  @override
  String toString() {
    return 'FeedStreamState<$T>.loadingMore(itemIds: $itemIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadingMore<T> &&
            (identical(other.itemIds, itemIds) ||
                const DeepCollectionEquality().equals(other.itemIds, itemIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemIds);

  @JsonKey(ignore: true)
  @override
  _$LoadingMoreCopyWith<T, _LoadingMore<T>> get copyWith =>
      __$LoadingMoreCopyWithImpl<T, _LoadingMore<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Map<String, T> itemIds),
    @required TResult loading(Map<String, T> itemIds),
    @required TResult loaded(Map<String, T> itemIds),
    @required TResult loadingMore(Map<String, T> itemIds),
    @required TResult reachedMax(Map<String, T> itemIds),
    @required TResult empty(Map<String, T> itemIds),
    @required TResult failure(Map<String, T> itemIds),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(loadingMore != null);
    assert(reachedMax != null);
    assert(empty != null);
    assert(failure != null);
    return loadingMore(itemIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Map<String, T> itemIds),
    TResult loading(Map<String, T> itemIds),
    TResult loaded(Map<String, T> itemIds),
    TResult loadingMore(Map<String, T> itemIds),
    TResult reachedMax(Map<String, T> itemIds),
    TResult empty(Map<String, T> itemIds),
    TResult failure(Map<String, T> itemIds),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingMore != null) {
      return loadingMore(itemIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial<T> value),
    @required TResult loading(_Loading<T> value),
    @required TResult loaded(_Success<T> value),
    @required TResult loadingMore(_LoadingMore<T> value),
    @required TResult reachedMax(_ReachedMax<T> value),
    @required TResult empty(_Empty<T> value),
    @required TResult failure(_Failure<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(loadingMore != null);
    assert(reachedMax != null);
    assert(empty != null);
    assert(failure != null);
    return loadingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial<T> value),
    TResult loading(_Loading<T> value),
    TResult loaded(_Success<T> value),
    TResult loadingMore(_LoadingMore<T> value),
    TResult reachedMax(_ReachedMax<T> value),
    TResult empty(_Empty<T> value),
    TResult failure(_Failure<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingMore != null) {
      return loadingMore(this);
    }
    return orElse();
  }
}

abstract class _LoadingMore<T extends Model> implements FeedStreamState<T> {
  const factory _LoadingMore(Map<String, T> itemIds) = _$_LoadingMore<T>;

  @override
  Map<String, T> get itemIds;
  @override
  @JsonKey(ignore: true)
  _$LoadingMoreCopyWith<T, _LoadingMore<T>> get copyWith;
}

/// @nodoc
abstract class _$ReachedMaxCopyWith<T extends Model, $Res>
    implements $FeedStreamStateCopyWith<T, $Res> {
  factory _$ReachedMaxCopyWith(
          _ReachedMax<T> value, $Res Function(_ReachedMax<T>) then) =
      __$ReachedMaxCopyWithImpl<T, $Res>;
  @override
  $Res call({Map<String, T> itemIds});
}

/// @nodoc
class __$ReachedMaxCopyWithImpl<T extends Model, $Res>
    extends _$FeedStreamStateCopyWithImpl<T, $Res>
    implements _$ReachedMaxCopyWith<T, $Res> {
  __$ReachedMaxCopyWithImpl(
      _ReachedMax<T> _value, $Res Function(_ReachedMax<T>) _then)
      : super(_value, (v) => _then(v as _ReachedMax<T>));

  @override
  _ReachedMax<T> get _value => super._value as _ReachedMax<T>;

  @override
  $Res call({
    Object itemIds = freezed,
  }) {
    return _then(_ReachedMax<T>(
      itemIds == freezed ? _value.itemIds : itemIds as Map<String, T>,
    ));
  }
}

/// @nodoc
class _$_ReachedMax<T extends Model> implements _ReachedMax<T> {
  const _$_ReachedMax(this.itemIds) : assert(itemIds != null);

  @override
  final Map<String, T> itemIds;

  @override
  String toString() {
    return 'FeedStreamState<$T>.reachedMax(itemIds: $itemIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReachedMax<T> &&
            (identical(other.itemIds, itemIds) ||
                const DeepCollectionEquality().equals(other.itemIds, itemIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemIds);

  @JsonKey(ignore: true)
  @override
  _$ReachedMaxCopyWith<T, _ReachedMax<T>> get copyWith =>
      __$ReachedMaxCopyWithImpl<T, _ReachedMax<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Map<String, T> itemIds),
    @required TResult loading(Map<String, T> itemIds),
    @required TResult loaded(Map<String, T> itemIds),
    @required TResult loadingMore(Map<String, T> itemIds),
    @required TResult reachedMax(Map<String, T> itemIds),
    @required TResult empty(Map<String, T> itemIds),
    @required TResult failure(Map<String, T> itemIds),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(loadingMore != null);
    assert(reachedMax != null);
    assert(empty != null);
    assert(failure != null);
    return reachedMax(itemIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Map<String, T> itemIds),
    TResult loading(Map<String, T> itemIds),
    TResult loaded(Map<String, T> itemIds),
    TResult loadingMore(Map<String, T> itemIds),
    TResult reachedMax(Map<String, T> itemIds),
    TResult empty(Map<String, T> itemIds),
    TResult failure(Map<String, T> itemIds),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reachedMax != null) {
      return reachedMax(itemIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial<T> value),
    @required TResult loading(_Loading<T> value),
    @required TResult loaded(_Success<T> value),
    @required TResult loadingMore(_LoadingMore<T> value),
    @required TResult reachedMax(_ReachedMax<T> value),
    @required TResult empty(_Empty<T> value),
    @required TResult failure(_Failure<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(loadingMore != null);
    assert(reachedMax != null);
    assert(empty != null);
    assert(failure != null);
    return reachedMax(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial<T> value),
    TResult loading(_Loading<T> value),
    TResult loaded(_Success<T> value),
    TResult loadingMore(_LoadingMore<T> value),
    TResult reachedMax(_ReachedMax<T> value),
    TResult empty(_Empty<T> value),
    TResult failure(_Failure<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reachedMax != null) {
      return reachedMax(this);
    }
    return orElse();
  }
}

abstract class _ReachedMax<T extends Model> implements FeedStreamState<T> {
  const factory _ReachedMax(Map<String, T> itemIds) = _$_ReachedMax<T>;

  @override
  Map<String, T> get itemIds;
  @override
  @JsonKey(ignore: true)
  _$ReachedMaxCopyWith<T, _ReachedMax<T>> get copyWith;
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
    @required TResult initial(Map<String, T> itemIds),
    @required TResult loading(Map<String, T> itemIds),
    @required TResult loaded(Map<String, T> itemIds),
    @required TResult loadingMore(Map<String, T> itemIds),
    @required TResult reachedMax(Map<String, T> itemIds),
    @required TResult empty(Map<String, T> itemIds),
    @required TResult failure(Map<String, T> itemIds),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(loadingMore != null);
    assert(reachedMax != null);
    assert(empty != null);
    assert(failure != null);
    return empty(itemIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Map<String, T> itemIds),
    TResult loading(Map<String, T> itemIds),
    TResult loaded(Map<String, T> itemIds),
    TResult loadingMore(Map<String, T> itemIds),
    TResult reachedMax(Map<String, T> itemIds),
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
    @required TResult initial(_Initial<T> value),
    @required TResult loading(_Loading<T> value),
    @required TResult loaded(_Success<T> value),
    @required TResult loadingMore(_LoadingMore<T> value),
    @required TResult reachedMax(_ReachedMax<T> value),
    @required TResult empty(_Empty<T> value),
    @required TResult failure(_Failure<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(loadingMore != null);
    assert(reachedMax != null);
    assert(empty != null);
    assert(failure != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial<T> value),
    TResult loading(_Loading<T> value),
    TResult loaded(_Success<T> value),
    TResult loadingMore(_LoadingMore<T> value),
    TResult reachedMax(_ReachedMax<T> value),
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
    @required TResult initial(Map<String, T> itemIds),
    @required TResult loading(Map<String, T> itemIds),
    @required TResult loaded(Map<String, T> itemIds),
    @required TResult loadingMore(Map<String, T> itemIds),
    @required TResult reachedMax(Map<String, T> itemIds),
    @required TResult empty(Map<String, T> itemIds),
    @required TResult failure(Map<String, T> itemIds),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(loadingMore != null);
    assert(reachedMax != null);
    assert(empty != null);
    assert(failure != null);
    return failure(itemIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Map<String, T> itemIds),
    TResult loading(Map<String, T> itemIds),
    TResult loaded(Map<String, T> itemIds),
    TResult loadingMore(Map<String, T> itemIds),
    TResult reachedMax(Map<String, T> itemIds),
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
    @required TResult initial(_Initial<T> value),
    @required TResult loading(_Loading<T> value),
    @required TResult loaded(_Success<T> value),
    @required TResult loadingMore(_LoadingMore<T> value),
    @required TResult reachedMax(_ReachedMax<T> value),
    @required TResult empty(_Empty<T> value),
    @required TResult failure(_Failure<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(loadingMore != null);
    assert(reachedMax != null);
    assert(empty != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial<T> value),
    TResult loading(_Loading<T> value),
    TResult loaded(_Success<T> value),
    TResult loadingMore(_LoadingMore<T> value),
    TResult reachedMax(_ReachedMax<T> value),
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
