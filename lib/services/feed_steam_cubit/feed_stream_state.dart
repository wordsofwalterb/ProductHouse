part of 'feed_stream_cubit.dart';

@freezed
abstract class FeedStreamState<T extends Model> with _$FeedStreamState<T> {
  const factory FeedStreamState.initial(Map<String, T> itemIds) = _Initial;
  const factory FeedStreamState.loading(Map<String, T> itemIds) = _Loading;
  const factory FeedStreamState.loaded(Map<String, T> itemIds) = _Success;
  const factory FeedStreamState.loadingMore(Map<String, T> itemIds) =
      _LoadingMore;
  const factory FeedStreamState.reachedMax(Map<String, T> itemIds) =
      _ReachedMax;
  const factory FeedStreamState.empty(Map<String, T> itemIds) = _Empty;
  const factory FeedStreamState.failure(Map<String, T> itemIds) = _Failure;
}
