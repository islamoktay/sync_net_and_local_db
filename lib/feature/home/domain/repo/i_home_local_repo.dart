import 'package:sync_net_and_local_db/feature/common/domain/entity/user.dart';

abstract class IHomeLocalRepo {
  Future<List<User>> getUsers();
  Future<void> updateUser(User user);
  Future<void> clearDB();
  void initWatcher(void Function(List<User>) callback);
}
