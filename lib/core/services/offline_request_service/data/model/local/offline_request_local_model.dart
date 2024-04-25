import 'package:isar/isar.dart';

import 'package:sync_net_and_local_db/core/enums/request_methods.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/entity/offline_request_entity.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/enum/offline_request_status.dart';

part 'offline_request_local_model.g.dart';

@collection
class OfflineRequestLocalModel {
  Id? id;
  String? url;
  @Enumerated(EnumType.ordinal)
  late RequestMethods method;
  @Enumerated(EnumType.ordinal)
  late OfflineRequestStatus requestStatus;
  String? bodyAsJson;
  String? queryAsJson;
  String? remoteID;
  DateTime? updatedTime;
  // optional for UI
  String? reason;
  String? moduleName;
}

extension OfflineRequestModelX on OfflineRequestLocalModel {
  OfflineRequestEntity get toEntity {
    return OfflineRequestEntity(
      localId: id ?? 0,
      status: requestStatus,
      url: url ?? '',
      body: bodyAsJson,
      query: queryAsJson,
      remoteID: remoteID,
      method: method,
      moduleName: moduleName,
      reason: reason,
      updatedTime: updatedTime ?? DateTime.now(),
    );
  }

  OfflineRequestLocalModel fromEntity(OfflineRequestEntity entity) {
    return OfflineRequestLocalModel()
      ..id = entity.localId
      ..url = entity.url
      ..bodyAsJson = entity.body
      ..method = entity.method
      ..moduleName = entity.moduleName
      ..queryAsJson = entity.query
      ..reason = entity.reason
      ..remoteID = entity.remoteID
      ..requestStatus = entity.status
      ..updatedTime = entity.updatedTime;
  }
}
