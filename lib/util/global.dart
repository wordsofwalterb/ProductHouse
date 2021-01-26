import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

class PHGlobal {
  static const primaryColor = Color.fromRGBO(12, 107, 196, 1);

  static final FirebaseAnalytics analytics = FirebaseAnalytics();

  /// userRef points to the collection that stores data related to
  /// creating [PHUser] objects from Firestore.
  static final CollectionReference userRef =
      FirebaseFirestore.instance.collection('users');
}
