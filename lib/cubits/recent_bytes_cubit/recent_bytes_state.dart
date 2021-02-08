part of 'recent_bytes_cubit.dart';

@freezed
abstract class RecentBytesState with _$RecentBytesState {
  const factory RecentBytesState.initial() = _Initial;
  const factory RecentBytesState.loadInProgress() = _LoadInProgress;
  const factory RecentBytesState.loadSuccess({
    @Default([]) List<PHByte> recents,
  }) = _LoadSuccess;
  const factory RecentBytesState.loadFailure({
    @Default([]) List<PHByte> recents,
    @required String errorMessage,
  }) = _LoadFailure;
}
