import 'package:sync_net_and_local_db/core/services/network_status_service/domain/repo/i_network_status_service.dart';
import 'package:sync_net_and_local_db/feature/common/domain/usecase/i_usecase.dart';

class WatchNetworkUsecase implements Usecase<void, void Function(bool)> {
  const WatchNetworkUsecase(this._service);
  final INetworkStatusService _service;

  @override
  void call(void Function(bool) callback) {
    return _service.watchNetwork(callback);
  }
}
