part of 'read_bytes_cubit.dart';

@freezed
abstract class ReadBytesState with _$ReadBytesState {
  const factory ReadBytesState.initial(List<String> readByteIds) = _Initial;
}
