import 'package:sync_net_and_local_db/feature/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/feature/common/domain/repo/i_common_local_repo.dart';
import 'package:sync_net_and_local_db/feature/common/usecase/i_usecase.dart';

class RemoveUserFromLocalUsecase implements Usecase<void, User> {
  const RemoveUserFromLocalUsecase(this._repo);
  final ICommonLocalRepo _repo;

  @override
  Future<void> call(User user) async {
    try {
      if (user.id?.isNotEmpty ?? false) {
        await _repo.removeUser(user.id!);
      } else {
        throw Exception('User Id is null');
      }
    } catch (_) {
      rethrow;
    }
  }
}
