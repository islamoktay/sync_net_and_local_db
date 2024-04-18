import 'package:sync_net_and_local_db/core/enums/request_methods.dart';
import 'package:sync_net_and_local_db/core/services/network_service/i_network_service.dart';
import 'package:sync_net_and_local_db/feature/home/core/constant/home_network_constants.dart';
import 'package:sync_net_and_local_db/feature/home/data/model/remote/user_model.dart';
import 'package:sync_net_and_local_db/feature/home/domain/entity/user.dart';
import 'package:sync_net_and_local_db/feature/home/domain/repo/i_home_remote_repo.dart';

class HomeRemoteRepo implements IHomeRemoteRepo {
  const HomeRemoteRepo(this._networkService);

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
  Future<List<User>> getUsers() async {
    try {
      final result = await _networkService.networkRequest(
        HomeNetworkConstants.usersJson,
        method: RequestMethods.get,
      ) as Map<String, dynamic>;
      final list = <User>[];
      final values = result.values.toList();
      for (final element in values) {
        final index = values.indexOf(element);
        final item = UserModel.fromJson(element as Map<String, dynamic>)
            .toEntity(result.keys.toList()[index]);

        list.add(item);
      }
      return list;
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

  @override
  Future<void> removeUser(String id) async {
    try {
      await _networkService.networkRequest(
        '${HomeNetworkConstants.users}$id.json',
        method: RequestMethods.delete,
      );
    } catch (_) {
      rethrow;
    }
  }
}
