import 'package:ProductHouse/models/user.dart';
import 'package:ProductHouse/util/result.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ProductHouse/util/global.dart';

class UserRepository {
  final FirebaseAuth _firebaseAuth;

  UserRepository({FirebaseAuth firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  /// Creates document in firestore for an anonymous user
  Future<PHResult<PHUser>> createAnonymousUser() async {
    try {
      final firebaseUser = (await _firebaseAuth.signInAnonymously()).user;

      final userMap = {
        'userID': firebaseUser.uid,
        'bookmarked': [],
        'recent': [],
        'read': [],
        'creationDate': Timestamp.now(),
        'lastOpenDate': Timestamp.now(),
      };

      await PHGlobal.userRef.doc(firebaseUser.uid).set(userMap);

      return PHResult.success(PHUser.fromJson(userMap));
    } catch (error) {
      return PHResult.failure(
          errorCode: error.toString(),
          errorMessage: 'There was a problem setting up your account.');
    }
  }

  Future<PHResult<PHUser>> updateUser(PHUser updatedUser) async {
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

  bool isSignedIn() {
    final User currentUser = _firebaseAuth.currentUser;
    return currentUser != null;
  }

  Future<PHResult<PHUser>> getUser() async {
    try {
      final User currentUser = _firebaseAuth.currentUser;
      final DocumentSnapshot userDoc =
          await PHGlobal.userRef.doc(currentUser.uid).get();

      return PHResult.success(
        PHUser.fromJson(userDoc.data()),
      );
    } catch (error) {
      return PHResult.failure(
          errorCode: error.toString(),
          errorMessage: 'There was a problem retrieving your account');
    }
  }
}
