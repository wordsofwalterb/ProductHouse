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
  _LoadSuccess loadSuccess({List<PHByte> bookmarks = const []}) {
    return _LoadSuccess(
      bookmarks: bookmarks,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(
      {List<PHByte> bookmarks = const [], @required String errorMessage}) {
    return _LoadFailure(
      bookmarks: bookmarks,
      errorMessage: errorMessage,
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
    @required TResult loadSuccess(List<PHByte> bookmarks),
    @required TResult loadFailure(List<PHByte> bookmarks, String errorMessage),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<PHByte> bookmarks),
    TResult loadFailure(List<PHByte> bookmarks, String errorMessage),
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
    @required TResult loadSuccess(List<PHByte> bookmarks),
    @required TResult loadFailure(List<PHByte> bookmarks, String errorMessage),
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
    TResult loadSuccess(List<PHByte> bookmarks),
    TResult loadFailure(List<PHByte> bookmarks, String errorMessage),
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
    @required TResult loadSuccess(List<PHByte> bookmarks),
    @required TResult loadFailure(List<PHByte> bookmarks, String errorMessage),
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
    TResult loadSuccess(List<PHByte> bookmarks),
    TResult loadFailure(List<PHByte> bookmarks, String errorMessage),
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
  $Res call({List<PHByte> bookmarks});
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
    Object bookmarks = freezed,
  }) {
    return _then(_LoadSuccess(
      bookmarks:
          bookmarks == freezed ? _value.bookmarks : bookmarks as List<PHByte>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess({this.bookmarks = const []}) : assert(bookmarks != null);

  @JsonKey(defaultValue: const [])
  @override
  final List<PHByte> bookmarks;

  @override
  String toString() {
    return 'BookmarkState.loadSuccess(bookmarks: $bookmarks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.bookmarks, bookmarks) ||
                const DeepCollectionEquality()
                    .equals(other.bookmarks, bookmarks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bookmarks);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<PHByte> bookmarks),
    @required TResult loadFailure(List<PHByte> bookmarks, String errorMessage),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(bookmarks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<PHByte> bookmarks),
    TResult loadFailure(List<PHByte> bookmarks, String errorMessage),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(bookmarks);
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
  const factory _LoadSuccess({List<PHByte> bookmarks}) = _$_LoadSuccess;

  List<PHByte> get bookmarks;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({List<PHByte> bookmarks, String errorMessage});
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
    Object bookmarks = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_LoadFailure(
      bookmarks:
          bookmarks == freezed ? _value.bookmarks : bookmarks as List<PHByte>,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure({this.bookmarks = const [], @required this.errorMessage})
      : assert(bookmarks != null),
        assert(errorMessage != null);

  @JsonKey(defaultValue: const [])
  @override
  final List<PHByte> bookmarks;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'BookmarkState.loadFailure(bookmarks: $bookmarks, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.bookmarks, bookmarks) ||
                const DeepCollectionEquality()
                    .equals(other.bookmarks, bookmarks)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bookmarks) ^
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
    @required TResult loadSuccess(List<PHByte> bookmarks),
    @required TResult loadFailure(List<PHByte> bookmarks, String errorMessage),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(bookmarks, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<PHByte> bookmarks),
    TResult loadFailure(List<PHByte> bookmarks, String errorMessage),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(bookmarks, errorMessage);
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
  const factory _LoadFailure(
      {List<PHByte> bookmarks, @required String errorMessage}) = _$_LoadFailure;

  List<PHByte> get bookmarks;
  String get errorMessage;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}

/// @nodoc
class _$BookmarkEventTearOff {
  const _$BookmarkEventTearOff();

// ignore: unused_element
  _UpdateBookmark updateBookmark(PHByte byte) {
    return _UpdateBookmark(
      byte,
    );
  }

// ignore: unused_element
  _LoadBookmarks loadBookmarks(List<String> ids) {
    return _LoadBookmarks(
      ids,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BookmarkEvent = _$BookmarkEventTearOff();

/// @nodoc
mixin _$BookmarkEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updateBookmark(PHByte byte),
    @required TResult loadBookmarks(List<String> ids),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updateBookmark(PHByte byte),
    TResult loadBookmarks(List<String> ids),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updateBookmark(_UpdateBookmark value),
    @required TResult loadBookmarks(_LoadBookmarks value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updateBookmark(_UpdateBookmark value),
    TResult loadBookmarks(_LoadBookmarks value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $BookmarkEventCopyWith<$Res> {
  factory $BookmarkEventCopyWith(
          BookmarkEvent value, $Res Function(BookmarkEvent) then) =
      _$BookmarkEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookmarkEventCopyWithImpl<$Res>
    implements $BookmarkEventCopyWith<$Res> {
  _$BookmarkEventCopyWithImpl(this._value, this._then);

  final BookmarkEvent _value;
  // ignore: unused_field
  final $Res Function(BookmarkEvent) _then;
}

/// @nodoc
abstract class _$UpdateBookmarkCopyWith<$Res> {
  factory _$UpdateBookmarkCopyWith(
          _UpdateBookmark value, $Res Function(_UpdateBookmark) then) =
      __$UpdateBookmarkCopyWithImpl<$Res>;
  $Res call({PHByte byte});

  $PHByteCopyWith<$Res> get byte;
}

/// @nodoc
class __$UpdateBookmarkCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res>
    implements _$UpdateBookmarkCopyWith<$Res> {
  __$UpdateBookmarkCopyWithImpl(
      _UpdateBookmark _value, $Res Function(_UpdateBookmark) _then)
      : super(_value, (v) => _then(v as _UpdateBookmark));

  @override
  _UpdateBookmark get _value => super._value as _UpdateBookmark;

  @override
  $Res call({
    Object byte = freezed,
  }) {
    return _then(_UpdateBookmark(
      byte == freezed ? _value.byte : byte as PHByte,
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
class _$_UpdateBookmark implements _UpdateBookmark {
  const _$_UpdateBookmark(this.byte) : assert(byte != null);

  @override
  final PHByte byte;

  @override
  String toString() {
    return 'BookmarkEvent.updateBookmark(byte: $byte)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateBookmark &&
            (identical(other.byte, byte) ||
                const DeepCollectionEquality().equals(other.byte, byte)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(byte);

  @JsonKey(ignore: true)
  @override
  _$UpdateBookmarkCopyWith<_UpdateBookmark> get copyWith =>
      __$UpdateBookmarkCopyWithImpl<_UpdateBookmark>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updateBookmark(PHByte byte),
    @required TResult loadBookmarks(List<String> ids),
  }) {
    assert(updateBookmark != null);
    assert(loadBookmarks != null);
    return updateBookmark(byte);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updateBookmark(PHByte byte),
    TResult loadBookmarks(List<String> ids),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateBookmark != null) {
      return updateBookmark(byte);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updateBookmark(_UpdateBookmark value),
    @required TResult loadBookmarks(_LoadBookmarks value),
  }) {
    assert(updateBookmark != null);
    assert(loadBookmarks != null);
    return updateBookmark(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updateBookmark(_UpdateBookmark value),
    TResult loadBookmarks(_LoadBookmarks value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateBookmark != null) {
      return updateBookmark(this);
    }
    return orElse();
  }
}

abstract class _UpdateBookmark implements BookmarkEvent {
  const factory _UpdateBookmark(PHByte byte) = _$_UpdateBookmark;

  PHByte get byte;
  @JsonKey(ignore: true)
  _$UpdateBookmarkCopyWith<_UpdateBookmark> get copyWith;
}

/// @nodoc
abstract class _$LoadBookmarksCopyWith<$Res> {
  factory _$LoadBookmarksCopyWith(
          _LoadBookmarks value, $Res Function(_LoadBookmarks) then) =
      __$LoadBookmarksCopyWithImpl<$Res>;
  $Res call({List<String> ids});
}

/// @nodoc
class __$LoadBookmarksCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res>
    implements _$LoadBookmarksCopyWith<$Res> {
  __$LoadBookmarksCopyWithImpl(
      _LoadBookmarks _value, $Res Function(_LoadBookmarks) _then)
      : super(_value, (v) => _then(v as _LoadBookmarks));

  @override
  _LoadBookmarks get _value => super._value as _LoadBookmarks;

  @override
  $Res call({
    Object ids = freezed,
  }) {
    return _then(_LoadBookmarks(
      ids == freezed ? _value.ids : ids as List<String>,
    ));
  }
}

/// @nodoc
class _$_LoadBookmarks implements _LoadBookmarks {
  const _$_LoadBookmarks(this.ids) : assert(ids != null);

  @override
  final List<String> ids;

  @override
  String toString() {
    return 'BookmarkEvent.loadBookmarks(ids: $ids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadBookmarks &&
            (identical(other.ids, ids) ||
                const DeepCollectionEquality().equals(other.ids, ids)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ids);

  @JsonKey(ignore: true)
  @override
  _$LoadBookmarksCopyWith<_LoadBookmarks> get copyWith =>
      __$LoadBookmarksCopyWithImpl<_LoadBookmarks>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updateBookmark(PHByte byte),
    @required TResult loadBookmarks(List<String> ids),
  }) {
    assert(updateBookmark != null);
    assert(loadBookmarks != null);
    return loadBookmarks(ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updateBookmark(PHByte byte),
    TResult loadBookmarks(List<String> ids),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadBookmarks != null) {
      return loadBookmarks(ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updateBookmark(_UpdateBookmark value),
    @required TResult loadBookmarks(_LoadBookmarks value),
  }) {
    assert(updateBookmark != null);
    assert(loadBookmarks != null);
    return loadBookmarks(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updateBookmark(_UpdateBookmark value),
    TResult loadBookmarks(_LoadBookmarks value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadBookmarks != null) {
      return loadBookmarks(this);
    }
    return orElse();
  }
}

abstract class _LoadBookmarks implements BookmarkEvent {
  const factory _LoadBookmarks(List<String> ids) = _$_LoadBookmarks;

  List<String> get ids;
  @JsonKey(ignore: true)
  _$LoadBookmarksCopyWith<_LoadBookmarks> get copyWith;
}
