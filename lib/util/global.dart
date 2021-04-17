import 'package:ProductByte/models/byte.dart';
import 'package:ProductByte/models/phcollection.dart';
import 'package:ProductByte/models/phlink.dart';
import 'package:ProductByte/models/user.dart';
import 'package:ProductByte/services/model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';

class PHGlobal {
  static const primaryColor = Color.fromRGBO(12, 107, 196, 1);
  static const lightGrey = Color.fromRGBO(240, 241, 245, 1);
  static const green = Color.fromRGBO(48, 170, 65, 1);

  static final FirebaseAnalytics analytics = FirebaseAnalytics();

  /// userRef points to the collection that stores data related to
  /// creating [PHUser] objects from Firestore.
  static final CollectionReference userRef =
      FirebaseFirestore.instance.collection('users');
  static final CollectionReference byteRef =
      FirebaseFirestore.instance.collection('bytes');
  static final CollectionReference collectionRef =
      FirebaseFirestore.instance.collection('collections');
  static final CollectionReference linkRef =
      FirebaseFirestore.instance.collection('links');

  static final collectionMapper = <Type, CollectionReference>{
    PHByte: byteRef,
    PHUser: userRef,
    PHCollection: collectionRef,
    PHLink: linkRef,
  };

  static final jsonMapper = {
    PHByte: (Map<String, dynamic> data) => PHByte.fromJson(data),
    PHUser: (Map<String, dynamic> data) => PHUser.fromJson(data),
    PHCollection: (Map<String, dynamic> data) => PHCollection.fromJson(data),
    PHLink: (Map<String, dynamic> data) => PHLink.fromJson(data),
  };
}
