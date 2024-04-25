import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/entity/offline_request_entity.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/enum/offline_request_status.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/usecase/offline_get_requests_usecase.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/usecase/offline_watch_db_usecase.dart';

part 'offline_state.dart';
part 'offline_cubit.freezed.dart';

class OfflineCubit extends Cubit<OfflineState> {
  OfflineCubit(
    this._offlineGetRequestUsecase,
    this._offlineWatchDBUsecase,
  ) : super(const OfflineState.initial());

  final OfflineGetRequestUsecase _offlineGetRequestUsecase;
  final OfflineWatchDBUsecase _offlineWatchDBUsecase;

  Future<void> getRequestsFlow() async {
    await getRequestsFromLocal();
    initWatcherLocalDB();
  }

  Future<void> getRequestsFromLocal() async {
    try {
      final list = await _offlineGetRequestUsecase(null);
      final result = arrangeList(list);
      emit(state.copyWith(waiting: result.$1, success: result.$2));
    } catch (_) {
      return;
    }
  }

  void initWatcherLocalDB() => _offlineWatchDBUsecase(emitLocalData);

  void emitLocalData(List<OfflineRequestEntity> data) {
    final result = arrangeList(data);
    emit(state.copyWith(waiting: result.$1, success: result.$2));
  }

  (List<OfflineRequestEntity>, List<OfflineRequestEntity>) arrangeList(
    List<OfflineRequestEntity> data,
  ) {
    final waiting = <OfflineRequestEntity>[];
    final success = <OfflineRequestEntity>[];
    for (final item in data) {
      if (item.status == OfflineRequestStatus.success) {
        success.add(item);
      } else {
        waiting.add(item);
      }
    }
    return (waiting, success);
  }
}
