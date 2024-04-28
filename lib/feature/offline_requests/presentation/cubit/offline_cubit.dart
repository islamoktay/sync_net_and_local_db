import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sync_net_and_local_db/core/constant/app_constants.dart';
import 'package:sync_net_and_local_db/core/dependency_injection/di.dart';
import 'package:sync_net_and_local_db/core/services/local_storage_service/i_local_storage_service.dart';
import 'package:sync_net_and_local_db/core/services/network_status_service/domain/usecase/check_network_usecase.dart';
import 'package:sync_net_and_local_db/core/services/network_status_service/domain/usecase/watch_network_usecase.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/entity/offline_request_entity.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/enum/offline_request_status.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/usecase/offline_delete_request_usecase.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/usecase/offline_get_requests_usecase.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/usecase/offline_send_request_usecase.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/usecase/offline_watch_db_usecase.dart';
import 'package:sync_net_and_local_db/feature/common/domain/usecase/get_users_flow_usecase.dart';

part 'offline_state.dart';
part 'offline_cubit.freezed.dart';

class OfflineCubit extends Cubit<OfflineState> {
  OfflineCubit(
    this._offlineGetRequestUsecase,
    this._offlineWatchDBUsecase,
    this._checkNetworkUsecase,
    this._offlineSendRequestUsecase,
    this._watchNetworkUsecase,
    this._offlineDeleteRequestUsecase,
    this._getUsersFlowUsecase,
  ) : super(const OfflineState.initial()) {
    getRequestsFlow().whenComplete(
      () => sl<ILocalStorageService>()
          .readValue(AppConstants.autoSendRequest)
          .then((value) {
        final isAuto = bool.tryParse(value ?? 'false') ?? false;
        if (isAuto) {
          initNetworkWatcher();
        }
      }),
    );
  }

  final OfflineGetRequestUsecase _offlineGetRequestUsecase;
  final OfflineWatchDBUsecase _offlineWatchDBUsecase;
  final OfflineSendRequestUsecase _offlineSendRequestUsecase;
  final CheckNetworkUsecase _checkNetworkUsecase;
  final WatchNetworkUsecase _watchNetworkUsecase;
  final OfflineDeleteRequestUsecase _offlineDeleteRequestUsecase;
  final GetUsersFlowUsecase _getUsersFlowUsecase;

  Future<void> removeWaitingList() async {
    try {
      final waiting = state.maybeMap(
        initial: (value) => value.waitingList,
        orElse: () => <OfflineRequestEntity>[],
      );
      for (final element in waiting) {
        await removeRequest(element.localId ?? 0);
      }
    } catch (_) {
      return;
    }
  }

  Future<void> removeSuccessList() async {
    try {
      final successList = state.maybeMap(
        initial: (value) => value.successList,
        orElse: () => <OfflineRequestEntity>[],
      );
      for (final element in successList) {
        await removeRequest(element.localId ?? 0);
      }
    } catch (_) {
      return;
    }
  }

  Future<void> removeAllRequests() async {
    try {
      await removeWaitingList();
      await removeSuccessList();
    } catch (_) {
      return;
    }
  }

  Future<void> removeRequest(int id) async {
    try {
      await _offlineDeleteRequestUsecase(id);
    } catch (_) {
      return;
    }
  }

  void initNetworkWatcher() {
    _watchNetworkUsecase.call((val) async {
      if (val) {
        await sendRequest();
      }
    });
  }

  Future<void> sendRequest() async {
    try {
      final waiting = state.maybeMap(
        initial: (value) => value.waitingList,
        orElse: () => <OfflineRequestEntity>[],
      );
      emit(const OfflineState.loading());
      final hasNetwork = await _checkNetworkUsecase(null);
      if (hasNetwork) {
        if (waiting.isEmpty) {
          emit(const OfflineState.emptyList());
        } else {
          for (final item in waiting) {
            await _offlineSendRequestUsecase(item);
          }
          emit(const OfflineState.success());
          await _getUsersFlowUsecase(null);
        }
      } else {
        emit(const OfflineState.noNetwork());
      }
    } catch (_) {
      emit(const OfflineState.error());
      rethrow;
    } finally {
      await getRequestsFromLocal();
    }
  }

  Future<void> getRequestsFlow() async {
    await getRequestsFromLocal();
    initWatcherLocalDB();
  }

  Future<void> getRequestsFromLocal() async {
    try {
      final list = await _offlineGetRequestUsecase(null);
      final result = arrangeList(list);
      emit(
        OfflineState.initial(
          waitingList: result.$1,
          successList: result.$2,
        ),
      );
    } catch (_) {
      return;
    }
  }

  void initWatcherLocalDB() => _offlineWatchDBUsecase(
        (data) {
          if (!isClosed) emitLocalData(data);
        },
      );

  void emitLocalData(List<OfflineRequestEntity> data) {
    final result = arrangeList(data);
    emit(OfflineState.initial(waitingList: result.$1, successList: result.$2));
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
