import 'package:sync_net_and_local_db/feature/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/feature/common/domain/usecase/i_usecase.dart';
import 'package:sync_net_and_local_db/feature/user_detail/domain/repo/i_user_detail_local_repo.dart';

class UpdateUserInLocalUsecase implements Usecase<void, User> {
  const UpdateUserInLocalUsecase(this._repo);
  final IUserDetailLocalRepo _repo;

  @override
  Future<void> call(User user) async {
    return _repo.updateUser(user);
  }
}
