import 'dart:convert';

import 'package:sync_net_and_local_db/core/services/local_db_service/i_local_db_service.dart';
import 'package:sync_net_and_local_db/core/services/network_service/i_network_service.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/data/model/local/offline_request_local_model.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/entity/offline_request_entity.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/entity/offline_save_request_entity.dart';
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
  Future<void> saveRequest(OfflineSaveRequestEntity item) async {
    try {
      final request = OfflineRequestLocalModel()
        ..url = item.url
        ..method = item.method
        ..bodyAsJson = item.body
        ..reason = item.reason
        ..queryAsJson = item.query
        ..moduleName = item.moduleName;
      await _localDBService.saveData<OfflineRequestLocalModel>(request);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> sendRequests() async {
    try {
      final list = await _localDBService.getData<OfflineRequestLocalModel>();
      for (final request in list) {
        try {
          if ((request.url?.isNotEmpty ?? false) &&
              (request.bodyAsJson?.isNotEmpty ?? false)) {
            await _networkService.networkRequest(
              request.url!,
              method: request.method,
              body: jsonDecode(request.bodyAsJson!) as Map<String, dynamic>,
            );

            if (request.id != null) {
              await _localDBService
                  .removeData<OfflineRequestLocalModel>(request.id!);
            }
          }
        } catch (_) {
          continue;
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
}