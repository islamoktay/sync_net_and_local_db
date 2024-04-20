import 'package:sync_net_and_local_db/core/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/core/common/usecase/i_usecase.dart';
import 'package:sync_net_and_local_db/feature/create_user/domain/repo/i_create_user_repo.dart';

class UpdateUserInRemoteUsecase implements Usecase<void, User> {
  const UpdateUserInRemoteUsecase(this._repo);
  final ICreateUserRepo _repo;

  @override
  Future<void> call(User user) async {
    return _repo.updateUser(user);
  }
}
