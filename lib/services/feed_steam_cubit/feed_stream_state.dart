part of 'feed_stream_cubit.dart';

@freezed
abstract class FeedStreamState<T extends Model> with _$FeedStreamState<T> {
  const factory FeedStreamState.loading(Map<String, T> itemIds) = _Loading;
  const factory FeedStreamState.loaded(Map<String, T> itemIds,
      {@Default(true) bool hasMoreItems}) = _Success;
  const factory FeedStreamState.empty(Map<String, T> itemIds) = _Empty;
  const factory FeedStreamState.failure(Map<String, T> itemIds) = _Failure;
}
