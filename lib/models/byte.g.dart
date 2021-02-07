// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'byte.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PHByte _$_$_PHByteFromJson(Map<String, dynamic> json) {
  return _$_PHByte(
    id: json['id'] as String,
    title: json['title'] as String,
    tags: (json['tags'] as List)?.map((e) => e as String)?.toList(),
    overview: json['overview'] as String,
    readTime: json['readTime'] as String,
    body: (json['body'] as List)
        ?.map((e) => (e as Map<String, dynamic>)?.map(
              (k, e) => MapEntry(k, e as String),
            ))
        ?.toList(),
    featured: json['featured'] as bool,
  );
}

Map<String, dynamic> _$_$_PHByteToJson(_$_PHByte instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'tags': instance.tags,
      'overview': instance.overview,
      'readTime': instance.readTime,
      'body': instance.body,
      'featured': instance.featured,
    };
