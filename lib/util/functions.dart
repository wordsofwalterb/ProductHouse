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
