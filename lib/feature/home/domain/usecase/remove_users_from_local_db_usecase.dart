import 'package:sync_net_and_local_db/feature/common/domain/usecase/i_usecase.dart';
import 'package:sync_net_and_local_db/feature/home/domain/repo/i_home_local_repo.dart';

class RemoveUsersFromLocalDBUsecase implements Usecase<void, NoParams?> {
  const RemoveUsersFromLocalDBUsecase(this._repo);
  final IHomeLocalRepo _repo;

  @override
  Future<void> call(_) async {
    return _repo.clearDB();
  }
}
