import 'package:sync_net_and_local_db/feature/common/domain/entity/user.dart';

abstract class IHomeRemoteRepo {
  Future<List<User>> getUsers();
  Future<void> removeUser(String id);
}
