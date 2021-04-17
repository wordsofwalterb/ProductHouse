// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phcollection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PHCollection _$_$_PHCollectionFromJson(Map<String, dynamic> json) {
  return _$_PHCollection(
    id: json['id'] as String,
    title: json['title'] as String,
    tags: (json['tags'] as List)?.map((e) => e as String)?.toList() ?? [],
    readTime: json['readTime'] as String,
    bytes: (json['bytes'] as List)?.map((e) => e as String)?.toList() ?? [],
  );
}

Map<String, dynamic> _$_$_PHCollectionToJson(_$_PHCollection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'tags': instance.tags,
      'readTime': instance.readTime,
      'bytes': instance.bytes,
    };
