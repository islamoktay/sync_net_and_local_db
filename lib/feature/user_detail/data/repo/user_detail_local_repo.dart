import 'package:sync_net_and_local_db/feature/common/data/model/local/user_local_model.dart';
import 'package:sync_net_and_local_db/feature/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/core/services/local_db_service/i_local_db_service.dart';
import 'package:sync_net_and_local_db/feature/user_detail/domain/repo/i_user_detail_local_repo.dart';

class UserDetailLocalRepo implements IUserDetailLocalRepo {
  const UserDetailLocalRepo(this._localDBService);

  final ILocalDBService _localDBService;
  @override
  Future<void> updateUser(User user) async {
    try {
      final item = UserLocalModel().fromEntity(user);
      await _localDBService.updateData<UserLocalModel>(item);
    } catch (_) {
      rethrow;
    }
  }
}
