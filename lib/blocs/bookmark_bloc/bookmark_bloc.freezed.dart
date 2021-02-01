// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bookmark_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BookmarkStateTearOff {
  const _$BookmarkStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(List<PHByte> bookmarked) {
    return _LoadSuccess(
      bookmarked,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(List<PHByte> bookmarked, String errorMessage) {
    return _LoadFailure(
      bookmarked,
      errorMessage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BookmarkState = _$BookmarkStateTearOff();

/// @nodoc
mixin _$BookmarkState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<PHByte> bookmarked),
    @required TResult loadFailure(List<PHByte> bookmarked, String errorMessage),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<PHByte> bookmarked),
    TResult loadFailure(List<PHByte> bookmarked, String errorMessage),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $BookmarkStateCopyWith<$Res> {
  factory $BookmarkStateCopyWith(
          BookmarkState value, $Res Function(BookmarkState) then) =
      _$BookmarkStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookmarkStateCopyWithImpl<$Res>
    implements $BookmarkStateCopyWith<$Res> {
  _$BookmarkStateCopyWithImpl(this._value, this._then);

  final BookmarkState _value;
  // ignore: unused_field
  final $Res Function(BookmarkState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$BookmarkStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'BookmarkState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<PHByte> bookmarked),
    @required TResult loadFailure(List<PHByte> bookmarked, String errorMessage),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<PHByte> bookmarked),
    TResult loadFailure(List<PHByte> bookmarked, String errorMessage),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BookmarkState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'BookmarkState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<PHByte> bookmarked),
    @required TResult loadFailure(List<PHByte> bookmarked, String errorMessage),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<PHByte> bookmarked),
    TResult loadFailure(List<PHByte> bookmarked, String errorMessage),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements BookmarkState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<PHByte> bookmarked});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$BookmarkStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object bookmarked = freezed,
  }) {
    return _then(_LoadSuccess(
      bookmarked == freezed ? _value.bookmarked : bookmarked as List<PHByte>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.bookmarked) : assert(bookmarked != null);

  @override
  final List<PHByte> bookmarked;

  @override
  String toString() {
    return 'BookmarkState.loadSuccess(bookmarked: $bookmarked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.bookmarked, bookmarked) ||
                const DeepCollectionEquality()
                    .equals(other.bookmarked, bookmarked)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bookmarked);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<PHByte> bookmarked),
    @required TResult loadFailure(List<PHByte> bookmarked, String errorMessage),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(bookmarked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<PHByte> bookmarked),
    TResult loadFailure(List<PHByte> bookmarked, String errorMessage),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(bookmarked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements BookmarkState {
  const factory _LoadSuccess(List<PHByte> bookmarked) = _$_LoadSuccess;

  List<PHByte> get bookmarked;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({List<PHByte> bookmarked, String errorMessage});
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$BookmarkStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object bookmarked = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_LoadFailure(
      bookmarked == freezed ? _value.bookmarked : bookmarked as List<PHByte>,
      errorMessage == freezed ? _value.errorMessage : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.bookmarked, this.errorMessage)
      : assert(bookmarked != null),
        assert(errorMessage != null);

  @override
  final List<PHByte> bookmarked;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'BookmarkState.loadFailure(bookmarked: $bookmarked, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.bookmarked, bookmarked) ||
                const DeepCollectionEquality()
                    .equals(other.bookmarked, bookmarked)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bookmarked) ^
      const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<PHByte> bookmarked),
    @required TResult loadFailure(List<PHByte> bookmarked, String errorMessage),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(bookmarked, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<PHByte> bookmarked),
    TResult loadFailure(List<PHByte> bookmarked, String errorMessage),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(bookmarked, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements BookmarkState {
  const factory _LoadFailure(List<PHByte> bookmarked, String errorMessage) =
      _$_LoadFailure;

  List<PHByte> get bookmarked;
  String get errorMessage;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}

/// @nodoc
class _$BookmarkEventTearOff {
  const _$BookmarkEventTearOff();

// ignore: unused_element
  _BookmarkAdded bookmarkAdded(PHByte byte) {
    return _BookmarkAdded(
      byte,
    );
  }

// ignore: unused_element
  _BookmarkRemoved bookmarkRemoved(PHByte byte) {
    return _BookmarkRemoved(
      byte,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BookmarkEvent = _$BookmarkEventTearOff();

/// @nodoc
mixin _$BookmarkEvent {
  PHByte get byte;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult bookmarkAdded(PHByte byte),
    @required TResult bookmarkRemoved(PHByte byte),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult bookmarkAdded(PHByte byte),
    TResult bookmarkRemoved(PHByte byte),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult bookmarkAdded(_BookmarkAdded value),
    @required TResult bookmarkRemoved(_BookmarkRemoved value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult bookmarkAdded(_BookmarkAdded value),
    TResult bookmarkRemoved(_BookmarkRemoved value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $BookmarkEventCopyWith<BookmarkEvent> get copyWith;
}

/// @nodoc
abstract class $BookmarkEventCopyWith<$Res> {
  factory $BookmarkEventCopyWith(
          BookmarkEvent value, $Res Function(BookmarkEvent) then) =
      _$BookmarkEventCopyWithImpl<$Res>;
  $Res call({PHByte byte});

  $PHByteCopyWith<$Res> get byte;
}

/// @nodoc
class _$BookmarkEventCopyWithImpl<$Res>
    implements $BookmarkEventCopyWith<$Res> {
  _$BookmarkEventCopyWithImpl(this._value, this._then);

  final BookmarkEvent _value;
  // ignore: unused_field
  final $Res Function(BookmarkEvent) _then;

  @override
  $Res call({
    Object byte = freezed,
  }) {
    return _then(_value.copyWith(
      byte: byte == freezed ? _value.byte : byte as PHByte,
    ));
  }

  @override
  $PHByteCopyWith<$Res> get byte {
    if (_value.byte == null) {
      return null;
    }
    return $PHByteCopyWith<$Res>(_value.byte, (value) {
      return _then(_value.copyWith(byte: value));
    });
  }
}

/// @nodoc
abstract class _$BookmarkAddedCopyWith<$Res>
    implements $BookmarkEventCopyWith<$Res> {
  factory _$BookmarkAddedCopyWith(
          _BookmarkAdded value, $Res Function(_BookmarkAdded) then) =
      __$BookmarkAddedCopyWithImpl<$Res>;
  @override
  $Res call({PHByte byte});

  @override
  $PHByteCopyWith<$Res> get byte;
}

/// @nodoc
class __$BookmarkAddedCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res>
    implements _$BookmarkAddedCopyWith<$Res> {
  __$BookmarkAddedCopyWithImpl(
      _BookmarkAdded _value, $Res Function(_BookmarkAdded) _then)
      : super(_value, (v) => _then(v as _BookmarkAdded));

  @override
  _BookmarkAdded get _value => super._value as _BookmarkAdded;

  @override
  $Res call({
    Object byte = freezed,
  }) {
    return _then(_BookmarkAdded(
      byte == freezed ? _value.byte : byte as PHByte,
    ));
  }
}

/// @nodoc
class _$_BookmarkAdded implements _BookmarkAdded {
  const _$_BookmarkAdded(this.byte) : assert(byte != null);

  @override
  final PHByte byte;

  @override
  String toString() {
    return 'BookmarkEvent.bookmarkAdded(byte: $byte)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookmarkAdded &&
            (identical(other.byte, byte) ||
                const DeepCollectionEquality().equals(other.byte, byte)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(byte);

  @JsonKey(ignore: true)
  @override
  _$BookmarkAddedCopyWith<_BookmarkAdded> get copyWith =>
      __$BookmarkAddedCopyWithImpl<_BookmarkAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult bookmarkAdded(PHByte byte),
    @required TResult bookmarkRemoved(PHByte byte),
  }) {
    assert(bookmarkAdded != null);
    assert(bookmarkRemoved != null);
    return bookmarkAdded(byte);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult bookmarkAdded(PHByte byte),
    TResult bookmarkRemoved(PHByte byte),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (bookmarkAdded != null) {
      return bookmarkAdded(byte);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult bookmarkAdded(_BookmarkAdded value),
    @required TResult bookmarkRemoved(_BookmarkRemoved value),
  }) {
    assert(bookmarkAdded != null);
    assert(bookmarkRemoved != null);
    return bookmarkAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult bookmarkAdded(_BookmarkAdded value),
    TResult bookmarkRemoved(_BookmarkRemoved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (bookmarkAdded != null) {
      return bookmarkAdded(this);
    }
    return orElse();
  }
}

abstract class _BookmarkAdded implements BookmarkEvent {
  const factory _BookmarkAdded(PHByte byte) = _$_BookmarkAdded;

  @override
  PHByte get byte;
  @override
  @JsonKey(ignore: true)
  _$BookmarkAddedCopyWith<_BookmarkAdded> get copyWith;
}

/// @nodoc
abstract class _$BookmarkRemovedCopyWith<$Res>
    implements $BookmarkEventCopyWith<$Res> {
  factory _$BookmarkRemovedCopyWith(
          _BookmarkRemoved value, $Res Function(_BookmarkRemoved) then) =
      __$BookmarkRemovedCopyWithImpl<$Res>;
  @override
  $Res call({PHByte byte});

  @override
  $PHByteCopyWith<$Res> get byte;
}

/// @nodoc
class __$BookmarkRemovedCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res>
    implements _$BookmarkRemovedCopyWith<$Res> {
  __$BookmarkRemovedCopyWithImpl(
      _BookmarkRemoved _value, $Res Function(_BookmarkRemoved) _then)
      : super(_value, (v) => _then(v as _BookmarkRemoved));

  @override
  _BookmarkRemoved get _value => super._value as _BookmarkRemoved;

  @override
  $Res call({
    Object byte = freezed,
  }) {
    return _then(_BookmarkRemoved(
      byte == freezed ? _value.byte : byte as PHByte,
    ));
  }
}

/// @nodoc
class _$_BookmarkRemoved implements _BookmarkRemoved {
  const _$_BookmarkRemoved(this.byte) : assert(byte != null);

  @override
  final PHByte byte;

  @override
  String toString() {
    return 'BookmarkEvent.bookmarkRemoved(byte: $byte)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookmarkRemoved &&
            (identical(other.byte, byte) ||
                const DeepCollectionEquality().equals(other.byte, byte)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(byte);

  @JsonKey(ignore: true)
  @override
  _$BookmarkRemovedCopyWith<_BookmarkRemoved> get copyWith =>
      __$BookmarkRemovedCopyWithImpl<_BookmarkRemoved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult bookmarkAdded(PHByte byte),
    @required TResult bookmarkRemoved(PHByte byte),
  }) {
    assert(bookmarkAdded != null);
    assert(bookmarkRemoved != null);
    return bookmarkRemoved(byte);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult bookmarkAdded(PHByte byte),
    TResult bookmarkRemoved(PHByte byte),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (bookmarkRemoved != null) {
      return bookmarkRemoved(byte);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult bookmarkAdded(_BookmarkAdded value),
    @required TResult bookmarkRemoved(_BookmarkRemoved value),
  }) {
    assert(bookmarkAdded != null);
    assert(bookmarkRemoved != null);
    return bookmarkRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult bookmarkAdded(_BookmarkAdded value),
    TResult bookmarkRemoved(_BookmarkRemoved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (bookmarkRemoved != null) {
      return bookmarkRemoved(this);
    }
    return orElse();
  }
}

abstract class _BookmarkRemoved implements BookmarkEvent {
  const factory _BookmarkRemoved(PHByte byte) = _$_BookmarkRemoved;

  @override
  PHByte get byte;
  @override
  @JsonKey(ignore: true)
  _$BookmarkRemovedCopyWith<_BookmarkRemoved> get copyWith;
}
