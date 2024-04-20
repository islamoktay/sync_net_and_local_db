import 'package:sync_net_and_local_db/core/common/usecase/i_usecase.dart';
import 'package:sync_net_and_local_db/core/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/feature/home/domain/repo/i_home_remote_repo.dart';

class GetUsersFromNetworkUsecase implements Usecase<List<User>, NoParams?> {
  const GetUsersFromNetworkUsecase(this._repo);
  final IHomeRemoteRepo _repo;

  @override
  Future<List<User>> call(_) async {
    return _repo.getUsers();
  }
}
