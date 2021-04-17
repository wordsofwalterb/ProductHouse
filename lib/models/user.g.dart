// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PHUser _$_$_PHUserFromJson(Map<String, dynamic> json) {
  return _$_PHUser(
    id: json['id'] as String,
    bookmarks: (json['bookmarks'] as List)?.map((e) => e as String)?.toList(),
    recent: (json['recent'] as List)?.map((e) => e as String)?.toList(),
    read: (json['read'] as List)?.map((e) => e as String)?.toList(),
    isTester: json['isTester'] as bool,
    featuredByteId: json['featuredByteId'] as String,
    creationDate:
        PHFunctions.dateTimeFromTimestamp(json['creationDate'] as Timestamp),
    lastOpenDate:
        PHFunctions.dateTimeFromTimestamp(json['lastOpenDate'] as Timestamp),
  );
}

Map<String, dynamic> _$_$_PHUserToJson(_$_PHUser instance) => <String, dynamic>{
      'id': instance.id,
      'bookmarks': instance.bookmarks,
      'recent': instance.recent,
      'read': instance.read,
      'isTester': instance.isTester,
      'featuredByteId': instance.featuredByteId,
      'creationDate': PHFunctions.dateTimeAsIs(instance.creationDate),
      'lastOpenDate': PHFunctions.dateTimeAsIs(instance.lastOpenDate),
    };
