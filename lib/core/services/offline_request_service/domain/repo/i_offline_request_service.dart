import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/entity/offline_request_entity.dart';

abstract class IOfflineRequestService {
  Future<void> saveRequest(OfflineRequestEntity item);
  Future<void> sendRequests(bool isRemoteCheck);
  Future<void> removeRequest(int id);
  Future<List<OfflineRequestEntity>> getRequests();
  void initWatcher(void Function(List<OfflineRequestEntity>) callback);
}
