import 'package:ProductByte/services/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'phcollection.freezed.dart';
part 'phcollection.g.dart';

@freezed
abstract class PHCollection with _$PHCollection implements Model {
  @Implements(Model)
  factory PHCollection({
    @required String id,
    @required String title,
    @Default([]) List<String> tags,
    @required String readTime,
    @Default([]) List<String> bytes,
  }) = _PHCollection;

  factory PHCollection.fromJson(Map<String, dynamic> json) =>
      _$PHCollectionFromJson(json);
}
