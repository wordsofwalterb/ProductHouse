import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

class PHGlobal {
  static const primaryColor = Color.fromRGBO(12, 107, 196, 1);

  static final FirebaseAnalytics analytics = FirebaseAnalytics();

  static final CollectionReference userRef =
      FirebaseFirestore.instance.collection('users');
}
