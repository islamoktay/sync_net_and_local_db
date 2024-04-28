import 'dart:convert';

import 'package:sync_net_and_local_db/core/services/local_db_service/i_local_db_service.dart';
import 'package:sync_net_and_local_db/core/services/network_service/i_network_service.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/data/model/local/offline_request_local_model.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/entity/offline_request_entity.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/enum/offline_request_status.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/repo/i_offline_request_service.dart';

class OfflineRequestService implements IOfflineRequestService {
  OfflineRequestService(this._localDBService, this._networkService);

  final ILocalDBService _localDBService;
  final INetworkService _networkService;
  @override
  Future<List<OfflineRequestEntity>> getRequests() async {
    try {
      final result = await _localDBService.getData<OfflineRequestLocalModel>();
      return result.map((e) => e.toEntity).toList();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> saveRequest(OfflineRequestEntity item) async {
    try {
      final request = OfflineRequestLocalModel().fromEntity(item);
      await _localDBService.saveData<OfflineRequestLocalModel>(request);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> sendRequest(OfflineRequestEntity entity) async {
    try {
      final item = OfflineRequestLocalModel().fromEntity(entity);
      if (item.url?.isNotEmpty ?? false) {
        await _networkService.networkRequest(
          item.url!,
          method: item.method,
          body: item.bodyAsJson == null
              ? null
              : jsonDecode(item.bodyAsJson!) as Map<String, dynamic>,
        );

        if (item.id != null) {
          item.requestStatus = OfflineRequestStatus.success;
          await updateRequest(item.toEntity);
        }
      }
    } catch (_) {
      rethrow;
    }
  }

  @override
  void initWatcher(void Function(List<OfflineRequestEntity> val) callback) {
    try {
      _localDBService.initWatcher<OfflineRequestLocalModel>(
        (List<OfflineRequestLocalModel> data) {
          final result = data.map((e) => e.toEntity).toList();
          callback.call(result);
        },
      );
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> removeRequest(int id) async {
    try {
      await _localDBService.removeData<OfflineRequestLocalModel>(id);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> updateRequest(OfflineRequestEntity entity) async {
    try {
      await _localDBService.updateData<OfflineRequestLocalModel>(
        OfflineRequestLocalModel().fromEntity(entity),
      );
    } catch (_) {
      rethrow;
    }
  }
}
