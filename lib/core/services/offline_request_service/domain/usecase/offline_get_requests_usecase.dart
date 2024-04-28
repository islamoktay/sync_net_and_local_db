import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/entity/offline_request_entity.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/repo/i_offline_request_service.dart';
import 'package:sync_net_and_local_db/feature/common/domain/usecase/i_usecase.dart';

class OfflineGetRequestUsecase
    implements Usecase<List<OfflineRequestEntity>, NoParams?> {
  const OfflineGetRequestUsecase(this._service);
  final IOfflineRequestService _service;

  @override
  Future<List<OfflineRequestEntity>> call(_) async {
    return _service.getRequests();
  }
}
