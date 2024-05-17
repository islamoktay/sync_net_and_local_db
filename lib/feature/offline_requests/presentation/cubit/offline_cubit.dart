import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sync_net_and_local_db/core/constant/app_constants.dart';
import 'package:sync_net_and_local_db/core/dependency_injection/di.dart';
import 'package:sync_net_and_local_db/core/services/local_storage_service/i_local_storage_service.dart';
import 'package:sync_net_and_local_db/core/services/network_status_service/domain/usecase/check_network_usecase.dart';
import 'package:sync_net_and_local_db/core/services/network_status_service/domain/usecase/watch_network_usecase.dart';
import 'package:sync_net_and_local_db/core/services/notification_service/i_notification_service.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/entity/enum/offline_request_status.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/entity/offline_request_entity.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/usecase/offline_delete_request_usecase.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/usecase/offline_get_requests_usecase.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/usecase/offline_save_request_usecase.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/usecase/offline_send_request_usecase.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/usecase/offline_watch_db_usecase.dart';
import 'package:sync_net_and_local_db/feature/common/domain/usecase/get_users_flow_usecase.dart';
import 'package:sync_net_and_local_db/feature/home/domain/usecase/get_users_from_network_usecase.dart';

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
    this._getUsersFromNetworkUsecase,
    this._notificationService,
    this._getUsersFlowUsecase,
    this._offlineSaveRequestUsecase,
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
  final OfflineSaveRequestUsecase _offlineSaveRequestUsecase;
  final CheckNetworkUsecase _checkNetworkUsecase;
  final WatchNetworkUsecase _watchNetworkUsecase;
  final OfflineDeleteRequestUsecase _offlineDeleteRequestUsecase;
  final GetUsersFlowUsecase _getUsersFlowUsecase;
  final GetUsersFromNetworkUsecase _getUsersFromNetworkUsecase;
  final INotificationService _notificationService;
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

  Future<void> removeNotSentList() async {
    try {
      final successList = state.maybeMap(
        initial: (value) => value.notSentList,
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
      await removeNotSentList();
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
      if (val) await sendRequest();
    });
  }

  Future<void> sendRequest({bool isTriggeredByHand = false}) async {
    final sentIDs = <int>[];

    state.maybeMap(
      initial: (value) => sentIDs.addAll(value.sentLocalIDs),
      orElse: () {},
    );
    try {
      final waiting = state.maybeMap(
        initial: (value) => value.waitingList,
        orElse: () => <OfflineRequestEntity>[],
      );

      emit(const OfflineState.loading());
      final hasNetwork = await _checkNetworkUsecase(null);
      if (hasNetwork) {
        if (waiting.isEmpty) {
          if (isTriggeredByHand) emit(const OfflineState.emptyList());
        } else {
          /// Here there should be only 'OfflineSendRequestUsecase'
          /// and no control for the client side,
          /// the control (is for if item should be inserted into remote db)
          /// should be in the backend side in my humble opinion
          /// but I am putting the control here for this demo
          ///
          /// e.g.:
          /// for (final item in waiting) {
          ///     await _offlineSendRequestUsecase(item);
          /// }
          final notSentActions = <String>[];
          for (final item in waiting) {
            final shouldSend = await controlReq(item);
            if (shouldSend) {
              if (!sentIDs.contains(item.localId)) {
                try {
                  await _offlineSendRequestUsecase(item);
                  sentIDs.add(item.localId ?? 0);
                } catch (_) {
                  await _failOnRequests(notSentActions, item);
                  continue;
                }
              }
            } else {
              item.status = OfflineRequestStatus.notSent;
              await _offlineDeleteRequestUsecase(item.localId ?? 0);
              await _offlineSaveRequestUsecase(item);
              await _failOnRequests(notSentActions, item);
            }
          }
          if (notSentActions.isEmpty) {
            emit(const OfflineState.success());
          } else {
            final items = notSentActions.join(', ');
            emit(OfflineState.someNotSent(items));
          }
          await _getUsersFlowUsecase(null);
        }
      } else {
        if (waiting.isEmpty) {
          if (isTriggeredByHand) emit(const OfflineState.emptyList());
        } else {
          emit(const OfflineState.noNetwork());
        }
      }
    } catch (_) {
      emit(const OfflineState.error());
      rethrow;
    } finally {
      await getRequestsFromLocal(sentIDs: sentIDs);
    }
  }

  Future<void> _failOnRequests(
    List<String> notSentActions,
    OfflineRequestEntity item,
  ) async {
    if (!notSentActions.contains(item.moduleName)) {
      notSentActions.add(item.moduleName ?? 'Not known module');
    }
  }

  Future<bool> controlReq(OfflineRequestEntity item) async {
    if (item.remoteID == null) return true;
    final list = await _getUsersFromNetworkUsecase(null);
    for (final element in list) {
      if (element.id == item.remoteID) {
        if (element.updatedTime != null) {
          final isAfter = element.updatedTime!.isAfter(item.updatedTime);
          if (isAfter) {
            return false;
          } else {
            return true;
          }
        } else {
          return true;
        }
      }
    }
    return true;
  }

  Future<void> getRequestsFlow() async {
    await getRequestsFromLocal();
    initWatcherLocalDB();
  }

  Future<void> getRequestsFromLocal({List<int> sentIDs = const <int>[]}) async {
    try {
      final list = await _offlineGetRequestUsecase(null);
      final result = arrangeList(list);
      emit(
        OfflineState.initial(
          waitingList: result.$1,
          successList: result.$2,
          notSentList: result.$3,
          sentLocalIDs: sentIDs,
        ),
      );
    } catch (_) {
      return;
    }
  }

  void initWatcherLocalDB() => _offlineWatchDBUsecase(
        (data) {
          if (!isClosed) emitLocalData(data);
          if (data.isEmpty) {
            _notificationService.cancelNotifications();
          } else {
            final list = data
                .where(
                  (element) => element.status == OfflineRequestStatus.waiting,
                )
                .toList();
            if (list.isNotEmpty) {
              _notificationService.repeatNotification(
                title: 'Waiting Requests',
                body: 'There are waiting requests in your app. '
                    'Please look for a stable network and send them away',
              );
            } else if (list.isEmpty) {
              _notificationService.cancelNotifications();
            }
          }
        },
      );

  void emitLocalData(List<OfflineRequestEntity> data) {
    final result = arrangeList(data);
    emit(OfflineState.initial(waitingList: result.$1, successList: result.$2));
  }

  (
    List<OfflineRequestEntity>,
    List<OfflineRequestEntity>,
    List<OfflineRequestEntity>,
  ) arrangeList(
    List<OfflineRequestEntity> data,
  ) {
    final waiting = <OfflineRequestEntity>[];
    final success = <OfflineRequestEntity>[];
    final notSent = <OfflineRequestEntity>[];
    for (final item in data) {
      if (item.status == OfflineRequestStatus.success) {
        success.add(item);
      } else if (item.status == OfflineRequestStatus.notSent) {
        notSent.add(item);
      } else {
        waiting.add(item);
      }
    }
    return (waiting, success, notSent);
  }
}
