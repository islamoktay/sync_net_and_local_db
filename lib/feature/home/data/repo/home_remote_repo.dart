import 'package:sync_net_and_local_db/core/enums/request_methods.dart';
import 'package:sync_net_and_local_db/core/services/network_service/i_network_service.dart';
import 'package:sync_net_and_local_db/feature/home/core/constant/home_network_constants.dart';
import 'package:sync_net_and_local_db/feature/home/data/model/remote/users_model.dart';
import 'package:sync_net_and_local_db/feature/home/domain/entity/user.dart';
import 'package:sync_net_and_local_db/feature/home/domain/entity/user_req.dart';
import 'package:sync_net_and_local_db/feature/home/domain/repo/i_home_remote_repo.dart';

class HomeRemoteRepo implements IHomeRemoteRepo {
  const HomeRemoteRepo(this._networkService);

  final INetworkService _networkService;
  @override
  Future<String> createUser(UserReq user) {
    // TODO: implement createUser
    throw UnimplementedError();
  }

  @override
  Future<List<User>> getUsers() async {
    try {
      final result = _networkService.networkRequest(
        HomeNetworkConstants.users,
        method: RequestMethods.get,
      );
      final list = UsersModel.fromJson(result as Map<String, dynamic>)
          .data
          ?.map((e) => e.toEntity)
          .toList();

      return list ?? [];
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<String> updateUser(UserReq user) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
