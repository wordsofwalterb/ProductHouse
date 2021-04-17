import 'package:ProductByte/services/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'byte.freezed.dart';
part 'byte.g.dart';

@freezed
abstract class PHByte with _$PHByte implements Model {
  @Implements(Model)
  const factory PHByte({
    @required String id,
    @required String title,
    @required List<String> tags,
    @required String overview,
    @required String readTime,
    @Default([]) List<String> collections,
    @required List<Map<String, String>> body,
    bool featured,
  }) = _PHByte;

  factory PHByte.fromJson(Map<String, dynamic> json) => _$PHByteFromJson(json);
}
