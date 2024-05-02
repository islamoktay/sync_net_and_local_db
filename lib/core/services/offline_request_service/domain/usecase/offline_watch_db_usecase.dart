import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/entity/offline_request_entity.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/repo/i_offline_request_service.dart';
import 'package:sync_net_and_local_db/feature/common/domain/usecase/i_usecase.dart';

class OfflineWatchDBUsecase
    implements Usecase<void, void Function(List<OfflineRequestEntity>)> {
  const OfflineWatchDBUsecase(this._offlineRequestService);
  final IOfflineRequestService _offlineRequestService;

  @override
  void call(void Function(List<OfflineRequestEntity>) callback) {
    return _offlineRequestService.initWatcher(callback);
  }
}
