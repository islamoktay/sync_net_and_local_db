import 'package:sync_net_and_local_db/core/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/core/enums/request_methods.dart';
import 'package:sync_net_and_local_db/core/services/network_service/i_network_service.dart';
import 'package:sync_net_and_local_db/feature/create_user/domain/repo/i_create_user_repo.dart';
import 'package:sync_net_and_local_db/feature/home/core/constant/home_network_constants.dart';
import 'package:sync_net_and_local_db/core/common/data/model/remote/user_model.dart';

class CreateUserRepo implements ICreateUserRepo {
  const CreateUserRepo(this._networkService);

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
