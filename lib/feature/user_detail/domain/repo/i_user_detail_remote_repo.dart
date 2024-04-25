import 'package:sync_net_and_local_db/feature/common/domain/entity/user.dart';

abstract class IUserDetailRemoteRepo {
  Future<String?> createUser(User user);
  Future<void> updateUser(User user);
}
