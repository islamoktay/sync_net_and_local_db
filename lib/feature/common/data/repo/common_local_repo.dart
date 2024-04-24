import 'package:collection/collection.dart';

import 'package:sync_net_and_local_db/core/services/local_db_service/i_local_db_service.dart';
import 'package:sync_net_and_local_db/feature/common/data/model/local/user_local_model.dart';
import 'package:sync_net_and_local_db/feature/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/feature/common/domain/repo/i_common_local_repo.dart';

class CommonLocalRepo implements ICommonLocalRepo {
  const CommonLocalRepo(this._localDBService);

  final ILocalDBService _localDBService;

  @override
  Future<void> createUser(User user) async {
    try {
      await _localDBService
          .saveData<UserLocalModel>(UserLocalModel().fromEntity(user));
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> removeUser(String id) async {
    try {
      final result = await _localDBService.getData<UserLocalModel>();
      final item = result.firstWhereOrNull((e) => e.netId == id);
      if (item != null && item.id != null) {
        await _localDBService.removeData<UserLocalModel>(item.id!);
      }
    } catch (_) {
      rethrow;
    }
  }
}
