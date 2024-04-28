part of 'offline_cubit.dart';

@freezed
class OfflineState with _$OfflineState {
  const factory OfflineState.initial({
    @Default(<OfflineRequestEntity>[]) List<OfflineRequestEntity> waitingList,
    @Default(<OfflineRequestEntity>[]) List<OfflineRequestEntity> successList,
    @Default(<OfflineRequestEntity>[]) List<OfflineRequestEntity> notSentList,
    @Default(<int>[]) List<int> sentLocalIDs,
  }) = _Initial;
  const factory OfflineState.noNetwork() = _noNetwork;
  const factory OfflineState.emptyList() = _emptyList;
  const factory OfflineState.loading() = _loading;
  const factory OfflineState.error() = _error;
  const factory OfflineState.success() = _success;
  const factory OfflineState.someNotSent(String items) = _someNotSent;
}
