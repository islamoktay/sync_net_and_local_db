import 'dart:convert';

import 'package:sync_net_and_local_db/core/services/local_db_service/i_local_db_service.dart';
import 'package:sync_net_and_local_db/core/services/network_service/i_network_service.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/data/model/local/offline_request_local_model.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/entity/offline_request_entity.dart';
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
  Future<void> sendRequests(bool isRemoteCheck) async {
    try {
      final list = await _localDBService.getData<OfflineRequestLocalModel>();
      for (final request in list) {
        try {
          if ((request.url?.isNotEmpty ?? false) &&
              (request.bodyAsJson?.isNotEmpty ?? false)) {
            /// if there will be a control for sending request,
            /// i think this control must be in backend.
            /// because I will be checking local data with remote data.
            /// so it will be a two times job instead of one for our side.
            /// but I am putting it here anyway.
            if (isRemoteCheck) {
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

  @override
  Future<void> removeRequest(int id) async {
    try {
      await _localDBService.removeData<OfflineRequestLocalModel>(id);
    } catch (_) {
      rethrow;
    }
  }
}
