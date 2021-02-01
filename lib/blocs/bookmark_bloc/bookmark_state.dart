part of 'bookmark_bloc.dart';

@freezed
abstract class BookmarkState with _$BookmarkState {
  const factory BookmarkState.initial() = _Initial;
  const factory BookmarkState.loadInProgress() = _LoadInProgress;
  const factory BookmarkState.loadSuccess(List<PHByte> bookmarked) =
      _LoadSuccess;
  const factory BookmarkState.loadFailure(
      List<PHByte> bookmarked, String errorMessage) = _LoadFailure;
}
