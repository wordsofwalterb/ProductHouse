part of 'bookmark_bloc.dart';

@freezed
abstract class BookmarkEvent with _$BookmarkEvent {
  const factory BookmarkEvent.bookmarked() = _Bookmarked;
}
