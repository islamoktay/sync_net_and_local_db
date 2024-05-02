import 'package:sync_net_and_local_db/feature/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/feature/common/domain/repo/i_common_remote_repo.dart';
import 'package:sync_net_and_local_db/feature/common/domain/usecase/i_usecase.dart';

class RemoveUserFromRemoteUsecase implements Usecase<void, User> {
  const RemoveUserFromRemoteUsecase(this._repo);
  final ICommonRemoteRepo _repo;

  @override
  Future<void> call(User user) async {
    try {
      await _repo.removeUser(user);
    } catch (_) {
      rethrow;
    }
  }
}
