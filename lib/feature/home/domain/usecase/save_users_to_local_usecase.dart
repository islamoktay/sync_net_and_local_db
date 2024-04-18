import 'package:sync_net_and_local_db/core/usecase/i_usecase.dart';
import 'package:sync_net_and_local_db/feature/home/domain/entity/user.dart';
import 'package:sync_net_and_local_db/feature/home/domain/repo/i_home_local_repo.dart';

class SaveUsersToLocalUsecase implements Usecase<void, List<User>> {
  const SaveUsersToLocalUsecase(this._repo);
  final IHomeLocalRepo _repo;

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
