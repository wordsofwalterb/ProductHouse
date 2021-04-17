
import 'package:freezed_annotation/freezed_annotation.dart';

part 'phcollection.freezed.dart';
part 'phcollection.g.dart';

@freezed
abstract class PHCollection with _$PHCollection {
  factory PHCollection() = _PHCollection;
	
  factory PHCollection.fromJson(Map<String, dynamic> json) =>
			_$PHCollectionFromJson(json);
}
