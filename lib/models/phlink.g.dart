// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phlink.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PHLink _$_$_PHLinkFromJson(Map<String, dynamic> json) {
  return _$_PHLink(
    id: json['id'] as String,
    title: json['title'] as String,
    sourceName: json['sourceName'] as String,
    sourceType: json['sourceType'] as String,
    url: json['url'] as String,
    relatedBytes: json['relatedBytes'] ?? [],
  );
}

Map<String, dynamic> _$_$_PHLinkToJson(_$_PHLink instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'sourceName': instance.sourceName,
      'sourceType': instance.sourceType,
      'url': instance.url,
      'relatedBytes': instance.relatedBytes,
    };
