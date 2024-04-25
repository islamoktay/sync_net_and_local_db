part of 'offline_cubit.dart';

@freezed
class OfflineState with _$OfflineState {
  const factory OfflineState.initial({
    @Default(<OfflineRequestEntity>[]) List<OfflineRequestEntity> waiting,
    @Default(<OfflineRequestEntity>[]) List<OfflineRequestEntity> success,
  }) = _Initial;
}
