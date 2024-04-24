import 'package:sync_net_and_local_db/feature/common/data/model/remote/user_model.dart';
import 'package:sync_net_and_local_db/feature/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/core/enums/request_methods.dart';
import 'package:sync_net_and_local_db/core/services/network_service/i_network_service.dart';
import 'package:sync_net_and_local_db/feature/home/core/constant/home_network_constants.dart';
import 'package:sync_net_and_local_db/feature/user_detail/domain/repo/i_user_detail_remote_repo.dart';

class UserDetailRemoteRepo implements IUserDetailRemoteRepo {
  const UserDetailRemoteRepo(this._networkService);

  final INetworkService _networkService;

  @override
  Future<void> createUser(User user) async {
    try {
      await _networkService.networkRequest(
        HomeNetworkConstants.usersJson,
        method: RequestMethods.post,
        body: UserModel.fromEntity(user).toJson(),
      );
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> updateUser(User user) async {
    try {
      await _networkService.networkRequest(
        '${HomeNetworkConstants.users}${user.id}.json',
        method: RequestMethods.patch,
        body: UserModel.fromEntity(user).toJson(),
      );
    } catch (_) {
      rethrow;
    }
  }
}
