import 'package:isar/isar.dart';

import 'package:sync_net_and_local_db/core/enums/request_methods.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/entity/offline_request_entity.dart';

part 'offline_request_local_model.g.dart';

@collection
class OfflineRequestLocalModel {
  Id? id;
  String? url;
  @Enumerated(EnumType.ordinal)
  late RequestMethods method;
  String? bodyAsJson;
  String? queryAsJson;
  // optional for UI
  String? reason;
  String? moduleName;
}

extension OfflineRequestModelX on OfflineRequestLocalModel {
  OfflineRequestEntity get toEntity {
    return OfflineRequestEntity(
      localId: id ?? 0,
      content: bodyAsJson ?? queryAsJson ?? '',
      method: method,
      moduleName: moduleName,
      reason: reason,
    );
  }
}
