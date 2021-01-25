import 'package:ProductHouse/util/functions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

/// The class representing users within the app. Used by both the current user,
/// and by other user profiles being viewed on the app.
@freezed
abstract class PHUser with _$PHUser {
  const factory PHUser({
    /// The unique identifier for the user, assigned by Firestore automatically.
    @required String userID,

    /// List of references(IDs) to byte bookmarked by the user
    @required List<String> bookmarks,

    /// List of references(IDs) to 5 most recent Bytes
    @required List<String> recent,

    /// List of references(IDs) to all the bytes marked read by the user
    @required List<String> read,

    /// When the account was created. Created from firestore [Timestamp].
    @required
    @JsonKey(fromJson: PHFunctions.dateTimeFromTimestamp, toJson: PHFunctions.dateTimeAsIs)
        DateTime creationDate,

    /// The last time the user opened the app. Created from firestore [Timestamp].
    @required
    @JsonKey(fromJson: PHFunctions.dateTimeFromTimestamp, toJson: PHFunctions.dateTimeAsIs)
        DateTime lastOpenDate,
  }) = _PHUser;

  /// All JSON fields must match the parameters of PHUser class. [lastOpenDate]
  /// and [creationDate] are expecting Firebase timestamp formated dates.
  factory PHUser.fromJson(Map<String, dynamic> json) => _$PHUserFromJson(json);
}
