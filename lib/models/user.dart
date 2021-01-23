import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class PHUser with _$PHUser {
  const factory PHUser({
    /// The unique identifier for the user
    @required String userID,

    /// List of references to bookmarked Bytes
    @required List<String> bookmarks,

    /// List of references to 5 most recent Bytes
    @required List<String> recent,

    /// List of references to all the read Bytes
    @required List<String> read,
  }) = _PHUser;

  factory PHUser.fromJson(Map<String, dynamic> json) => _$PHUserFromJson(json);
}
