import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/entity/offline_request_entity.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/entity/offline_save_request_entity.dart';

abstract class IOfflineRequestService {
  Future<void> saveRequest(OfflineSaveRequestEntity item);
  Future<void> sendRequests();
  Future<List<OfflineRequestEntity>> getRequests();
  void initWatcher(void Function(List<OfflineRequestEntity>) callback);
}
