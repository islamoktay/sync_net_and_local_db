import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/entity/offline_request_entity.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/repo/i_offline_request_service.dart';
import 'package:sync_net_and_local_db/feature/common/domain/usecase/i_usecase.dart';

class OfflineSendRequestUsecase implements Usecase<void, OfflineRequestEntity> {
  const OfflineSendRequestUsecase(this._service);
  final IOfflineRequestService _service;

  @override
  Future<void> call(OfflineRequestEntity entity) async {
    return _service.sendRequest(entity);
  }
}
