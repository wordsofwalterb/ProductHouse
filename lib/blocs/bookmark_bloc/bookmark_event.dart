part of 'bookmark_bloc.dart';

@freezed
abstract class BookmarkEvent with _$BookmarkEvent {
  const factory BookmarkEvent.bookmarkAdded(PHByte byte) = _BookmarkAdded;
  const factory BookmarkEvent.bookmarkRemoved(PHByte byte) = _BookmarkRemoved;
}
