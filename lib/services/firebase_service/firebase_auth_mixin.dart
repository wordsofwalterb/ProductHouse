import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

import '../../util/functions.dart';

import '../../util/global.dart';
import '../../util/result.dart';
import '../model.dart';

mixin FirebaseAuthMixin<T extends Model> {
  final auth = FirebaseAuth.instance;

  /// Checks if the current user withing the [FirebaseAuth]
  /// instance is signed in.
  bool isSignedIn() {
    final currentUser = auth.currentUser;
    return (currentUser != null);
  }

  Future<PHResult<UserCredential>> signInWithCredentials(
      String email, String password) async {
    try {
      final userCredential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return PHResult.success(userCredential);
    } on FirebaseAuthException catch (error) {
      String errorMessage;

      switch (error.code) {
        case 'invalid-email':
          errorMessage = 'Email address not found';
          break;
        case 'wrong-password':
          errorMessage = 'Password is incorrect';
          break;
        case 'user-not-found':
          errorMessage = "User with this email doesn't exist.";
          break;
        case 'user-disabled':
          errorMessage = 'User with this email has been disabled.';
          break;
        case 'ERROR_TOO_MANY_REQUESTS':
          errorMessage = 'Too many requests. Try again later.';
          break;
        case 'ERROR_OPERATION_NOT_ALLOWED':
          errorMessage = 'Email and Password signup is not enabled.';
          break;
        default:
          errorMessage = 'An undefined Error happened.';
      }

      return PHResult.failure(
        errorCode: error.code,
        errorMessage: errorMessage,
      );
    } catch (error) {
      log(error.toString());
      return PHResult.failure(
        errorCode: 'UNKNOWN_ERROR',
        errorMessage: 'There was an unknown error signing in.',
      );
    }
  }

  /// Returns a [T] object from Firestore based on the ID of the currently
  /// signed in [FirebaseAuth] user uid.
  Future<PHResult<T>> getUser() async {
    assert(auth.currentUser != null,
        'There must be a currently signed in user in the firebase instance.');

    try {
      final firebaseUser = auth.currentUser;
      if (firebaseUser == null) {
        throw Exception();
      }
      final userDoc = await PHGlobal.userRef.doc(firebaseUser.uid).get();

      await PHGlobal.userRef
          .doc(firebaseUser.uid)
          .update({'lastOpenDate': Timestamp.now()});

      final map = userDoc.data()
        ..update('lastOpenDate', (value) => Timestamp.now());

      final user = parseJson<T>(map);

      return PHResult.success(user);
    } catch (error) {
      log(error.toString());
      return PHResult.failure(
          errorCode: error.toString(),
          errorMessage: 'There was a problem retrieving your account');
    }
  }

  /// Returns a [T] object from Firestore based on the ID of the currently
  /// signed in [FirebaseAuth] user uid.
  Stream<PHResult<T>> getUserStream() {
    assert(auth.currentUser != null,
        'There must be a currently signed in user in the firebase instance.');

    final firebaseUser = auth.currentUser;
    if (firebaseUser == null) {
      throw Exception();
    }

    PHGlobal.userRef
        .doc(firebaseUser.uid)
        .update({'lastOpenDate': Timestamp.now()});

    return PHGlobal.collectionMapper[T]
        .doc(firebaseUser.uid)
        .snapshots()
        .map((doc) {
      final fun = PHGlobal.jsonMapper[T];
      final data = doc.data();

      if (fun != null && data != null) {
        final conv = fun(data) as T;
        return PHResult<T>.success(conv);
      } else {
        throw Exception('Problem getting userStream');
      }
    });
  }

  /// Signs the current user out
  Future<void> signOut() async {
    await Future.wait([
      auth.signOut(),
    ]);
  }
}
