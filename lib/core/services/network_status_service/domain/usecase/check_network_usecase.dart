import 'package:sync_net_and_local_db/core/services/network_status_service/domain/repo/i_network_status_service.dart';
import 'package:sync_net_and_local_db/feature/common/domain/usecase/i_usecase.dart';

class CheckNetworkUsecase implements Usecase<bool, NoParams?> {
  const CheckNetworkUsecase(this._service);
  final INetworkStatusService _service;

  @override
  Future<bool> call(_) async {
    return _service.checkNetwork();
  }
}
