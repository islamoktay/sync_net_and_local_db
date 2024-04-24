
import 'package:sync_net_and_local_db/feature/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/core/services/local_db_service/i_local_db_service.dart';
import 'package:sync_net_and_local_db/feature/common/data/model/local/user_local_model.dart';
import 'package:sync_net_and_local_db/feature/home/domain/repo/i_home_local_repo.dart';

class HomeLocalRepo implements IHomeLocalRepo {
  HomeLocalRepo(this._localDBService);

  final ILocalDBService _localDBService;


  @override
  Future<List<User>> getUsers() async {
    try {
      final result = await _localDBService.getData<UserLocalModel>();
      return result.map((e) => e.toEntity).toList();
    } catch (_) {
      rethrow;
    }
  }



  @override
  Future<void> updateUser(User user) async {
    try {
      final item = UserLocalModel().fromEntity(user);
      await _localDBService.updateData(item);
    } catch (_) {
      rethrow;
    }
  }

  @override
  void initWatcher(void Function(List<User> p1) callback) {
    try {
      _localDBService.initWatcher<UserLocalModel>(
        (List<UserLocalModel> data) {
          final result = data.map((e) => e.toEntity).toList();
          callback.call(result);
        },
      );
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> clearDB() async {
    try {
      await _localDBService.removeCollection<UserLocalModel>();
    } catch (_) {
      rethrow;
    }
  }
}
