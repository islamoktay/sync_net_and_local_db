import 'package:sync_net_and_local_db/feature/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/feature/common/domain/repo/i_common_local_repo.dart';
import 'package:sync_net_and_local_db/feature/common/domain/usecase/i_usecase.dart';

class SaveUsersToLocalUsecase implements Usecase<void, List<User>> {
  const SaveUsersToLocalUsecase(this._repo);
  final ICommonLocalRepo _repo;

  @override
  Future<void> call(List<User> list) async {
    try {
      if (list.isNotEmpty) {
        for (final user in list) {
          await _repo.createUser(user);
        }
      }
    } catch (_) {
      rethrow;
    }
  }
}
