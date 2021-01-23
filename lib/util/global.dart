import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PHGlobal {
  static const primaryColor = Color.fromRGBO(93, 88, 243, 1);

  static final CollectionReference userRef =
      FirebaseFirestore.instance.collection('users');
}
