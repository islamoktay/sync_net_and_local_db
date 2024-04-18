import 'package:sync_net_and_local_db/feature/home/domain/entity/user.dart';

abstract class IHomeLocalRepo {
  Future<List<User>> getUsers();
  Future<void> createUser(User user);
  Future<void> updateUser(User user);
  Future<void> removeUser(String id);
  Future<void> clearDB();
  void initWatcher(void Function(List<User>) callback);
}
