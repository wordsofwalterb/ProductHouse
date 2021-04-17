import 'package:ProductByte/services/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'phlink.freezed.dart';
part 'phlink.g.dart';

@freezed
abstract class PHLink with _$PHLink implements Model {
  @Implements(Model)
  const factory PHLink({
    @required String id,
    @required String title,
    @required String sourceName,
    @required String sourceType,
    @Default([]) relatedBytes,
  }) = _PHLink;

  factory PHLink.fromJson(Map<String, dynamic> json) => _$PHLinkFromJson(json);
}
