part of 'bookmark_bloc.dart';

@freezed
abstract class BookmarkEvent with _$BookmarkEvent {
  const factory BookmarkEvent.updateBookmark(PHByte byte) = _UpdateBookmark;
  const factory BookmarkEvent.loadBookmarks(List<String> ids) = _LoadBookmarks;
}
