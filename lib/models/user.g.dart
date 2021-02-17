// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PHUser _$_$_PHUserFromJson(Map<String, dynamic> json) {
  return _$_PHUser(
    userID: json['userID'] as String,
    bookmarks: (json['bookmarks'] as List)?.map((e) => e as String)?.toList(),
    recent: (json['recent'] as List)?.map((e) => e as String)?.toList(),
    read: (json['read'] as List)?.map((e) => e as String)?.toList(),
    isTester: json['isTester'] as bool,
    creationDate:
        PHFunctions.dateTimeFromTimestamp(json['creationDate'] as Timestamp),
    lastOpenDate:
        PHFunctions.dateTimeFromTimestamp(json['lastOpenDate'] as Timestamp),
  );
}

Map<String, dynamic> _$_$_PHUserToJson(_$_PHUser instance) => <String, dynamic>{
      'userID': instance.userID,
      'bookmarks': instance.bookmarks,
      'recent': instance.recent,
      'read': instance.read,
      'isTester': instance.isTester,
      'creationDate': PHFunctions.dateTimeAsIs(instance.creationDate),
      'lastOpenDate': PHFunctions.dateTimeAsIs(instance.lastOpenDate),
    };
