import 'package:ProductHouse/models/byte.dart';
import 'package:ProductHouse/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PHFunctions {
  /// Takes a [DateTime] and returns the same [DateTime], required for JSON parsing
  /// when using @jsonkey for [Timestamp]s - it's used in the toJson parameter.
  static DateTime dateTimeAsIs(DateTime dateTime) => dateTime;

  /// Converts [Timestamp]s to [DateTimes].
  /// https://stackoverflow.com/questions/56627888/how-to-print-firestore-timestamp-as-formatted-date-and-time-in-flutter
  static DateTime dateTimeFromTimestamp(Timestamp timestamp) {
    return DateTime.parse(timestamp.toDate().toString());
  }
}

T parseJson<T>(Map<String, dynamic> data) {
  final mapper = {
    PHUser: (Map<String, dynamic> data) => PHUser.fromJson(data),
    PHByte: (Map<String, dynamic> data) => PHByte.fromJson(data),
  };

  return mapper[T](data) as T;
}
