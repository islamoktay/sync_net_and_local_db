import 'package:sync_net_and_local_db/core/enums/request_methods.dart';
import 'package:sync_net_and_local_db/core/services/network_service/i_network_service.dart';
import 'package:sync_net_and_local_db/feature/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/feature/common/domain/repo/i_common_remote_repo.dart';
import 'package:sync_net_and_local_db/feature/home/core/constant/home_network_constants.dart';

class CommonRemoteRepo implements ICommonRemoteRepo {
  const CommonRemoteRepo(this._networkService);

  final INetworkService _networkService;
  @override
  Future<void> removeUser(User user) async {
    try {
      await _networkService.networkRequest(
        '${HomeNetworkConstants.users}${user.id}.json',
        method: RequestMethods.delete,
      );
    } catch (_) {
      rethrow;
    }
  }
}
