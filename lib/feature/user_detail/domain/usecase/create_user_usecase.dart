import 'package:sync_net_and_local_db/feature/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/feature/common/domain/usecase/i_usecase.dart';
import 'package:sync_net_and_local_db/feature/user_detail/domain/repo/i_user_detail_remote_repo.dart';

class CreateUserUsecase implements Usecase<String?, User> {
  const CreateUserUsecase(this._repo);
  final IUserDetailRemoteRepo _repo;

  @override
  Future<String?> call(User user) async {
    return _repo.createUser(user);
  }
}
