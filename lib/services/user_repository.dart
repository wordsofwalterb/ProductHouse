import 'package:ProductHouse/models/user.dart';
import 'package:ProductHouse/util/functions.dart';
import 'package:ProductHouse/util/result.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ProductHouse/util/global.dart';

class UserRepository {
  final FirebaseAuth _firebaseAuth;

  UserRepository({FirebaseAuth firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  /// Creates document in firestore for an anonymous user and initializes the
  /// user locally through [FirebaseAuth].
  Future<PHResult<PHUser>> createAnonymousUser() async {
    try {
      final firebaseUser = (await _firebaseAuth.signInAnonymously()).user;

      final userMap = {
        'userID': firebaseUser.uid,
        'bookmarks': [],
        'recent': [],
        'read': [],
        'creationDate': Timestamp.now(),
        'lastOpenDate': Timestamp.now(),
      };

      await PHGlobal.userRef.doc(firebaseUser.uid).set(userMap);

      return PHResult.success(parseJson(userMap));
    } catch (error) {
      return PHResult.failure(
          errorCode: error.toString(),
          errorMessage: 'There was a problem setting up your account.');
    }
  }

  /// Updates the firestore document for the [PHUser] by sending all
  /// data within the passed [PHUser] to merge with data in firestore.
  Future<PHResult<PHUser>> updateUser(PHUser updatedUser) async {
    assert(updatedUser != null, 'updateUser must not be null');
    try {
      final User firebaseUser = _firebaseAuth.currentUser;

      await PHGlobal.userRef
          .doc(firebaseUser.uid)
          .set(updatedUser.toJson(), SetOptions(merge: true));

      return PHResult.success(updatedUser);
    } catch (error) {
      return PHResult.failure(
          errorCode: error.toString(),
          errorMessage: 'There was a problem updating the user account.');
    }
  }

  Future<PHResult<bool>> updateUserWithMap(
      String id, Map<String, dynamic> data) async {
    try {
      final User firebaseUser = _firebaseAuth.currentUser;

      await PHGlobal.userRef.doc(firebaseUser.uid).update(data);

      return PHResult.success(true);
    } catch (error) {
      return PHResult.failure(
          errorCode: error.toString(),
          errorMessage: 'There was a problem updating the user account.');
    }
  }

  /// Checks if the current user withing the [FirebaseAuth] instance is signed in.
  bool isSignedIn() {
    final User currentUser = _firebaseAuth.currentUser;
    return currentUser != null;
  }

  /// Returns a [PHUser] object from Firestore based on the ID of the currently
  /// signed in [FirebaseAuth] user uid.
  Future<PHResult<PHUser>> getUser() async {
    assert(_firebaseAuth.currentUser != null,
        'There must be a currently signed in user in the firebaseAuth instance.');

    try {
      final User currentUser = _firebaseAuth.currentUser;
      final DocumentSnapshot userDoc =
          await PHGlobal.userRef.doc(currentUser.uid).get();

      PHGlobal.userRef
          .doc(currentUser.uid)
          .update({'lastOpenDate': Timestamp.now()});

      final user = parseJson<PHUser>(
          userDoc.data()..update('lastOpenDate', (value) => Timestamp.now()));

      if (user.isTester) {
        await PHGlobal.analytics.setAnalyticsCollectionEnabled(false);
      }

      return PHResult.success(user);
    } catch (error) {
      return PHResult.failure(
          errorCode: error.toString(),
          errorMessage: 'There was a problem retrieving your account');
    }
  }
}
