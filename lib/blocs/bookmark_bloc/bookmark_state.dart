part of 'bookmark_bloc.dart';

@freezed
abstract class BookmarkState with _$BookmarkState {
  const factory BookmarkState.initial() = _Initial;
  const factory BookmarkState.loadInProgress() = _LoadInProgress;
  const factory BookmarkState.loadSuccess(List<String> bookmarked) =
      _LoadSuccess;
  const factory BookmarkState.loadFailure(
      List<String> bookmarked, String errorMessage) = _LoadFailure;
}
