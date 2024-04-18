import 'package:sync_net_and_local_db/core/usecase/i_usecase.dart';
import 'package:sync_net_and_local_db/feature/home/domain/entity/user.dart';
import 'package:sync_net_and_local_db/feature/home/domain/repo/i_home_local_repo.dart';

class GetUsersFromLocalUsecase implements Usecase<List<User>, NoParams?> {
  const GetUsersFromLocalUsecase(this._repo);
  final IHomeLocalRepo _repo;

  @override
  Future<List<User>> call(_) async {
    return _repo.getUsers();
  }
}
