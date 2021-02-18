import 'package:ProductByte/models/byte.dart';
import 'package:ProductByte/services/byte_repository.dart';
import 'package:ProductByte/services/user_repository.dart';
import 'package:ProductByte/util/global.dart';
import 'package:ProductByte/util/result.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookmark_state.dart';
part 'bookmark_event.dart';
part 'bookmark_bloc.freezed.dart';

class BookmarkBloc extends Bloc<BookmarkEvent, BookmarkState> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final ByteRepository _byteRepository;
  final UserRepository _userRepository;

  BookmarkBloc(this._byteRepository, this._userRepository)
      : super(const BookmarkState.initial());

  @override
  Stream<BookmarkState> mapEventToState(BookmarkEvent event) async* {
    yield* event.map(
      updateBookmark: (_UpdateBookmark event) =>
          mapUpdateBookmarkToState(event),
      loadBookmarks: (_LoadBookmarks event) => mapLoadBookmarksToState(event),
    );
  }

  Stream<BookmarkState> mapUpdateBookmarkToState(_UpdateBookmark event) async* {
    final currentState = state;
    if (currentState is _LoadSuccess) {
      final String currentUserID = _firebaseAuth.currentUser.uid;
      PHResult<bool> result;
      List<PHByte> updatedBookmarks;

      if (currentState.bookmarks.contains(event.byte)) {
        result = await _userRepository.updateUserWithMap(currentUserID, {
          "bookmarks": FieldValue.arrayRemove([event.byte.id]),
        });
        updatedBookmarks = currentState.bookmarks.toList()..remove(event.byte);
        PHGlobal.analytics.logEvent(
          name: 'Bookmark Removed',
          parameters: {
            'description': state.toString(),
          },
        );
      } else {
        result = await _userRepository.updateUserWithMap(currentUserID, {
          "bookmarks": FieldValue.arrayUnion([event.byte.id]),
        });
        updatedBookmarks = currentState.bookmarks.toList()..add(event.byte);
        PHGlobal.analytics.logEvent(
          name: 'Bookmark Added',
          parameters: {
            'description': state.toString(),
          },
        );
      }

      if (!result.hasError) {
        yield BookmarkState.loadSuccess(bookmarks: updatedBookmarks);
      } else {
        yield BookmarkState.loadFailure(
          bookmarks: currentState.bookmarks,
          errorMessage: 'There was a problem updating bookmarks',
        );
      }
    }
  }

  Stream<BookmarkState> mapLoadBookmarksToState(_LoadBookmarks event) async* {
    yield const BookmarkState.loadInProgress();

    PHResult<List<PHByte>> result;

    result = await _byteRepository.getBytesByIDs(event.ids);
    await Future.delayed(Duration(seconds: 1));

    if (!result.hasError) {
      yield BookmarkState.loadSuccess(bookmarks: result.data);
    } else {
      yield BookmarkState.loadFailure(
        bookmarks: result.data,
        errorMessage: 'There was a problem with bookmarks',
      );
    }
  }
}
