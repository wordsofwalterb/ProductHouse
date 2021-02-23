part of 'suggested_feed_cubit.dart';

@freezed
abstract class SuggestedFeedState with _$SuggestedFeedState {
  const factory SuggestedFeedState.initial() = _Initial;
  const factory SuggestedFeedState.loading() = _Loading;
  const factory SuggestedFeedState.loaded({@required List<PHByte> bytes}) =
      _Loaded;
  const factory SuggestedFeedState.failure() = _Failure;
}
