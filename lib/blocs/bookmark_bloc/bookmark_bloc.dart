import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookmark_state.dart';
part 'bookmark_event.dart';
part 'bookmark_bloc.freezed.dart';

class BookmarkBloc extends Bloc<BookmarkEvent, BookmarkState> {
  BookmarkBloc() : super(_Initial());

  @override
  Stream<BookmarkState> mapEventToState(BookmarkEvent event) async* {
    //yield* event.map(bookmarked: _);
  }
}
