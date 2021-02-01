part of 'bookmark_bloc.dart';

@freezed
abstract class BookmarkState with _$BookmarkState {
  const factory BookmarkState.initial() = _Initial;
  const factory BookmarkState.loadInProgress() = _LoadInProgress;
  const factory BookmarkState.loadSuccess({
    @Default([]) List<PHByte> bookmarks,
  }) = _LoadSuccess;
  const factory BookmarkState.loadFailure({
    @Default([]) List<PHByte> bookmarks,
    @required String errorMessage,
  }) = _LoadFailure;
}
