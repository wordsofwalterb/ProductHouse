import 'package:ProductHouse/models/byte.dart';
import 'package:ProductHouse/services/byte_repository.dart';
import 'package:ProductHouse/services/user_repository.dart';
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
      bookmarkAdded: (_BookmarkAdded event) => mapBookmarkAddedToState(event),
      bookmarkRemoved: (BookmarkEvent event) => mapBookmarkRemovedToState(),
    );
  }

  Stream<BookmarkState> mapBookmarkAddedToState(_BookmarkAdded event) {
    final currentState = state;
    // currentState.maybeMap(
    //   loadSuccess: () => {},
    //   orElse: () => {},
    //   );

    if (currentState == _LoadSuccess) {
      // add bookmark id from database
      final String currentUserID = _firebaseAuth.currentUser.uid;

      _userRepository.updateUserWithMap(currentUserID, {
        "bookmarked": FieldValue.arrayUnion([event.byte.id]),
      });

      // add bookmark id locally
      // yield* BookmarkState.loadSuccess(currentState.);
    }
  }

  Stream<BookmarkState> mapBookmarkRemovedToState() {}
}
