import 'package:ProductHouse/models/byte.dart';
import 'package:ProductHouse/services/byte_repository.dart';
import 'package:ProductHouse/services/user_repository.dart';
import 'package:ProductHouse/util/byte_json.dart';
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

      if (currentState.bookmarks.contains(byteJson)) {
        result = await _userRepository.updateUserWithMap(currentUserID, {
          "bookmarks": FieldValue.arrayRemove([byte.id]),
        });
        updatedBookmarks = currentState.bookmarks.toList()..remove(byte);
      } else {
        result = await _userRepository.updateUserWithMap(currentUserID, {
          "bookmarks": FieldValue.arrayUnion([byte.id]),
        });
        updatedBookmarks = currentState.bookmarks.toList()..add(byte);
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
    await Future.delayed(Duration(seconds: 1));

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
