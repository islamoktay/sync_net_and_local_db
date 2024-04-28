import 'package:sync_net_and_local_db/core/services/network_status_service/domain/usecase/check_network_usecase.dart';
import 'package:sync_net_and_local_db/feature/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/feature/common/domain/usecase/i_usecase.dart';
import 'package:sync_net_and_local_db/feature/common/domain/usecase/save_users_to_local_usecase.dart';
import 'package:sync_net_and_local_db/feature/home/domain/usecase/get_users_from_local_usecase.dart';
import 'package:sync_net_and_local_db/feature/home/domain/usecase/get_users_from_network_usecase.dart';
import 'package:sync_net_and_local_db/feature/home/domain/usecase/remove_users_from_local_db_usecase.dart';

class GetUsersFlowUsecase implements Usecase<List<User>, NoParams?> {
  const GetUsersFlowUsecase(
    this._checkNetworkUsecase,
    this._getUsersFromNetworkUsecase,
    this._removeUsersFromLocalDBUsecase,
    this._saveUsersToLocalUsecase,
    this._getUsersFromLocalUsecase,
  );

  final CheckNetworkUsecase _checkNetworkUsecase;
  final GetUsersFromNetworkUsecase _getUsersFromNetworkUsecase;
  final RemoveUsersFromLocalDBUsecase _removeUsersFromLocalDBUsecase;
  final SaveUsersToLocalUsecase _saveUsersToLocalUsecase;
  final GetUsersFromLocalUsecase _getUsersFromLocalUsecase;
  @override
  Future<List<User>> call(_) async {
    try {
      final hasNetwork = await _checkNetworkUsecase(null);
      if (hasNetwork) {
        final users = await _getUsersFromNetworkUsecase(null);
        await _removeUsersFromLocalDBUsecase(null);
        await _saveUsersToLocalUsecase(users);
      }
      final localUsers = await _getUsersFromLocalUsecase(null);
      return localUsers;
    } catch (_) {
      rethrow;
    }
  }
}
