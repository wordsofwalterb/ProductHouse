import 'package:ProductHouse/models/byte.dart';
import 'package:ProductHouse/util/result.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ProductHouse/util/global.dart';
import 'package:ProductHouse/util/functions.dart';
import 'package:flutter/foundation.dart';

class ByteRepository {
  // Maybe this should not be in memory, but instead in local storage?? Maybe just Ids?
  Set<String> cachedByteIds = {'ds'};

  ByteRepository() {
    // Retrieve relevant cached bytes from local storage
  }

  Future<PHResult<List<PHByte>>> searchBytesByTitle(String title) async {
    try {
      final query = await PHGlobal.byteRef
          .where('titleLower',
              isGreaterThanOrEqualTo: title.toLowerCase().trim())
          .get();

      final bytes = parseFirestoreQuery<PHByte>(query);

      return PHResult.success(bytes);
    } catch (error) {
      return PHResult.failure(
          errorCode: error.toString(),
          errorMessage: ' There was a problem retrieving bytes');
    }
  }

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
      return PHResult.success(parseJson<PHByte>(document.data()));
    } catch (error) {
      return PHResult.failure(
          errorCode: error.toString(),
          errorMessage: 'There was a problem retrieving all bytes');
    }
  }

  Future<PHResult<List<PHByte>>> getBytesFromCategory(String category) async {
    if (category == 'All') {
      return getAllBytes();
    }
    try {
      final querySnapshot =
          await PHGlobal.byteRef.where('tags', arrayContains: category).get();

      final bytes = parseFirestoreQuery<PHByte>(querySnapshot);

      return PHResult.success(bytes);
    } catch (error) {
      print('eerror');
      print(error.toString);
      return PHResult.failure(
          errorCode: error.toString(),
          errorMessage: 'There was a problem retrieving all bytes');
    }
  }

  Future<PHResult<List<PHByte>>> getAllBytes() async {
    try {
      final querySnapshot = await PHGlobal.byteRef.get();

      final bytes = parseFirestoreQuery<PHByte>(querySnapshot);

      return PHResult.success(bytes);
    } catch (error) {
      print('eerror');
      print(error.toString);
      return PHResult.failure(
          errorCode: error.toString(),
          errorMessage: 'There was a problem retrieving all bytes');
    }
  }

  Future<void> cacheResults(List<PHByte> items) async {
    cachedByteIds.addAll(items.map((e) => e.id));
  }

  Future<PHResult<List<PHByte>>> getSuggestedBytes() async {
    try {
      final querySnapshot =
          await PHGlobal.byteRef.where('suggested', isEqualTo: true).get();

      final bytes = parseFirestoreQuery<PHByte>(querySnapshot);

      return PHResult.success(bytes);
    } catch (error) {
      return PHResult.failure(
          errorCode: error.toString(),
          errorMessage: 'There was a problem retrieving suggested bytes.');
    }
  }
}
