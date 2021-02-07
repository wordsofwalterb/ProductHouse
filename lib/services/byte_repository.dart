import 'package:ProductHouse/models/byte.dart';
import 'package:ProductHouse/util/result.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ProductHouse/util/global.dart';
import 'package:ProductHouse/util/functions.dart';
import 'package:flutter/foundation.dart';

class ByteRepository {
  Future<PHResult<List<PHByte>>> getBytesByIDs(List<String> byteIDs) async {
    try {
      List<Map<String, dynamic>> jsonObjects = [];

      for (String id in byteIDs) {
        final snapshot = await PHGlobal.byteRef.doc(id).get();
        if (snapshot.data() != null) {
          jsonObjects.add(snapshot.data()..addAll({'id': snapshot.id}));
        }
      }

      return PHResult.success(parseJsonList<PHByte>(jsonObjects));
    } catch (error) {
      return PHResult.failure(
          errorCode: error.toString(),
          errorMessage: ' There was a problem retrieving bytes');
    }
  }

  Future<PHResult<PHByte>> retrieveFeaturedByte() async {
    try {
      final querySnapshot =
          await PHGlobal.byteRef.where('featured', isEqualTo: true).get();
      final document = querySnapshot.docs.first;
      return PHResult.success(parseJson(document.data()));
    } catch (error) {
      return PHResult.failure(
          errorCode: error.toString(),
          errorMessage: 'There was a problem retrieving all bytes');
    }
  }

  Future<PHResult<List<PHByte>>> getAllBytes() async {
    try {
      final querySnapshot = await PHGlobal.byteRef.get();

      return PHResult.success(parseFirestoreQuery(querySnapshot));
    } catch (error) {
      return PHResult.failure(
          errorCode: error.toString(),
          errorMessage: 'There was a problem retrieving all bytes');
    }
  }
}
