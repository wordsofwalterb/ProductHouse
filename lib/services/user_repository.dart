import 'package:ProductHouse/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ProductHouse/util/global.dart';

class UserRepository {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  UserRepository({FirebaseAuth firebaseAuth, FirebaseFirestore firestore})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _firestore = firestore ?? FirebaseFirestore.instance;

  /// Signs the user in
  Future<void> signIn() async {
    try {
      if (await isSignedIn()) {
        return _firebaseAuth.currentUser;
      } else {
        await _firebaseAuth.signInAnonymously();
        await setupAnonymousUser();
      }
    } catch (error) {
      throw 'Unable to sign in Anonymously';
    }
  }

  /// Creates document in firestore for an anonymous user
  Future<void> setupAnonymousUser() async {
    try {
      final currentUser = _firebaseAuth.currentUser;

      await PHGlobal.userRef.doc(currentUser.uid).set({
        'userId': currentUser.uid,
        'bookmarked': [],
        'recent': [],
        'read': [],
      });
    } catch (error) {
      print('Unable to setup user: $error');
      throw 'There was an unexpected error connecting to the database';
    }
  }

  Future<void> updateUser(PHUser updatedUser) async {
    final User currentUser = _firebaseAuth.currentUser;
    await PHGlobal.userRef
        .doc(currentUser.uid)
        .set(updatedUser.toJson(), SetOptions(merge: true));
  }

  Future<bool> isSignedIn() async {
    final User currentUser = _firebaseAuth.currentUser;
    return currentUser != null;
  }

  Future<PHUser> getUser() async {
    final User currentUser = _firebaseAuth.currentUser;
    final DocumentSnapshot userDoc =
        await PHGlobal.userRef.doc(currentUser.uid).get();

    return PHUser.fromJson(
      userDoc.data()
        ..addAll(
          {'id': userDoc.id},
        ),
    );
  }
}
