import 'package:sync_net_and_local_db/core/usecase/i_usecase.dart';
import 'package:sync_net_and_local_db/feature/home/domain/entity/user.dart';
import 'package:sync_net_and_local_db/feature/home/domain/repo/i_home_remote_repo.dart';

class UpdateUserInRemoteUsecase implements Usecase<void, User> {
  const UpdateUserInRemoteUsecase(this._repo);
  final IHomeRemoteRepo _repo;

  @override
  Future<void> call(User user) async {
    return _repo.updateUser(user);
  }
}
