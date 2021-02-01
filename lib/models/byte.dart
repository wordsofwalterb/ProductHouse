import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'byte.freezed.dart';
part 'byte.g.dart';

@freezed
abstract class PHByte with _$PHByte {
  const factory PHByte({
    @required String id,
    @required String title,
    @required List<String> tags,
    @required String overview,
    @required String readTime,
    @required List<Map<String, String>> body,
  }) = _PHByte;

  factory PHByte.fromJson(Map<String, dynamic> json) => _$PHByteFromJson(json);
}
