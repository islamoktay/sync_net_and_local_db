import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/repo/i_offline_request_service.dart';
import 'package:sync_net_and_local_db/feature/common/usecase/i_usecase.dart';

class OfflineDeleteRequestUsecase implements Usecase<void, int> {
  const OfflineDeleteRequestUsecase(this._service);
  final IOfflineRequestService _service;

  @override
  Future<void> call(int id) async {
    return _service.removeRequest(id);
  }
}
