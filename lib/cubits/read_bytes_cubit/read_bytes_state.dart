part of 'read_bytes_cubit.dart';

@freezed
abstract class ReadBytesState with _$ReadBytesState {
  const factory ReadBytesState.initial() = _Initial;
  const factory ReadBytesState.loadInProgress() = _LoadInProgress;
  const factory ReadBytesState.loadSuccess({
    @Default([]) List<String> readByteIds,
  }) = _LoadSuccess;
  const factory ReadBytesState.loadFailure({
    @Default([]) List<String> readByteIds,
    @required String errorMessage,
  }) = _LoadFailure;
}
