import 'package:ProductHouse/models/byte.dart';
import 'package:ProductHouse/services/byte_repository.dart';
import 'package:ProductHouse/services/user_repository.dart';
import 'package:ProductHouse/util/global.dart';
import 'package:ProductHouse/util/result.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookmark_state.dart';
part 'bookmark_cubit.freezed.dart';

class BookmarkCubit extends Cubit<BookmarkState> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final ByteRepository _byteRepository;
  final UserRepository _userRepository;

  BookmarkCubit(this._byteRepository, this._userRepository)
      : super(BookmarkState.initial());

  Future<void> updateBookmark(PHByte byte) async {
    final currentState = state;
    if (currentState is _LoadSuccess) {
      final String currentUserID = _firebaseAuth.currentUser.uid;
      PHResult<bool> result;
      List<PHByte> updatedBookmarks;

      if (currentState.bookmarks.contains(byte)) {
        result = await _userRepository.updateUserWithMap(currentUserID, {
          "bookmarks": FieldValue.arrayRemove([byte.id]),
        });
        updatedBookmarks = currentState.bookmarks.toList()..remove(byte);
        PHGlobal.analytics.logEvent(
          name: 'Bookmark Removed',
          parameters: {
            'description': state.toString(),
            'id': byte.id,
          },
        );
      } else {
        result = await _userRepository.updateUserWithMap(currentUserID, {
          "bookmarks": FieldValue.arrayUnion([byte.id]),
        });
        updatedBookmarks = currentState.bookmarks.toList()..add(byte);
        PHGlobal.analytics.logEvent(
          name: 'Bookmark Added',
          parameters: {'description': state.toString(), 'id': byte.id},
        );
      }

      if (!result.hasError) {
        emit(BookmarkState.loadSuccess(bookmarks: updatedBookmarks));
      } else {
        emit(BookmarkState.loadFailure(
          bookmarks: currentState.bookmarks,
          errorMessage: 'There was a problem updating bookmarks',
        ));
      }
    }
  }

  Future<void> loadBookmarks(List<String> ids) async {
    emit(const BookmarkState.loadInProgress());

    PHResult<List<PHByte>> result;

    result = await _byteRepository.getBytesByIDs(ids);

    if (!result.hasError) {
      emit(BookmarkState.loadSuccess(bookmarks: result.data));
    } else {
      emit(BookmarkState.loadFailure(
        bookmarks: result.data,
        errorMessage: 'There was a problem with bookmarks',
      ));
    }
  }
}
