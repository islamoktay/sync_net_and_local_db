import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/entity/offline_save_request_entity.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/repo/i_offline_request_service.dart';
import 'package:sync_net_and_local_db/feature/common/usecase/i_usecase.dart';

class OfflineSaveRequestUsecase
    implements Usecase<void, OfflineSaveRequestEntity> {
  const OfflineSaveRequestUsecase(this._service);
  final IOfflineRequestService _service;

  @override
  Future<void> call(OfflineSaveRequestEntity req) async {
    return _service.saveRequest(req);
  }
}
