import 'package:ProductByte/models/byte.dart';
import 'package:ProductByte/models/user.dart';
import 'package:ProductByte/services/model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'global.dart';

class PHFunctions {
  /// Takes a [DateTime] and returns the same [DateTime], required for JSON parsing
  /// when using @jsonkey for [Timestamp]s - it's used in the toJson parameter.
  static DateTime dateTimeAsIs(DateTime dateTime) => dateTime;

  /// Converts [Timestamp]s to [DateTimes].
  /// https://stackoverflow.com/questions/56627888/how-to-print-firestore-timestamp-as-formatted-date-and-time-in-flutter
  static DateTime dateTimeFromTimestamp(Timestamp timestamp) {
    return DateTime.parse(timestamp.toDate().toString());
  }

  static final jsonMapper = {
    PHUser: (Map<String, dynamic> data) => PHUser.fromJson(data),
    PHByte: (Map<String, dynamic> data) => PHByte.fromJson(data),
  };
}

T parseJson<T extends Model>(Map<String, dynamic> data) {
  return PHGlobal.jsonMapper[T](data) as T;
}

List<T> parseFirestoreQuery<T extends Model>(QuerySnapshot queryList) {
  return queryList.docs
      .map((e) => PHGlobal.jsonMapper[T](e.data()..addAll({'id': e.id})) as T)
      .toList();
}

List<T> parseJsonList<T>(List<Map<String, dynamic>> jsonList) {
  return jsonList.map((e) => PHGlobal.jsonMapper[T](e) as T).toList();
}

// // Global Functions for use with compute

// T parseJson<T>(Map<String, dynamic> data) {
//   return PHFunctions.jsonMapper[T](data) as T;
// }

// List<T> parseFirestoreQuery<T>(QuerySnapshot queryList) {
//   if (queryList?.docs == null) {
//     return <T>[];
//   }
//   return queryList.docs
//       .map(
//           (e) => PHFunctions.jsonMapper[T](e.data()..addAll({'id': e.id})) as T)
//       .toList();
// }

// List<T> parseJsonList<T>(List<Map<String, dynamic>> jsonList) {
//   return jsonList?.map((e) => PHFunctions.jsonMapper[T](e) as T)?.toList();
// }

// https://github.com/furkansarihan/firestore_collection/blob/master/lib/firestore_document.dart
extension FirestoreDocumentExtension on DocumentReference {
  Future<DocumentSnapshot> getSavy() async {
    try {
      DocumentSnapshot ds = await this.get(GetOptions(source: Source.cache));
      if (ds == null) return this.get(GetOptions(source: Source.server));
      return ds;
    } catch (_) {
      return this.get(GetOptions(source: Source.server));
    }
  }
}

// https://github.com/furkansarihan/firestore_collection/blob/master/lib/firestore_query.dart
extension FirestoreQueryExtension on Query {
  Future<QuerySnapshot> getSavy() async {
    try {
      QuerySnapshot qs = await this.get(GetOptions(source: Source.cache));
      if (qs.docs.isEmpty) return this.get(GetOptions(source: Source.server));
      return qs;
    } catch (_) {
      return this.get(GetOptions(source: Source.server));
    }
  }
}
