import 'package:sync_net_and_local_db/core/common/domain/entity/user.dart';

abstract class IUserDetailRemoteRepo {
  Future<void> createUser(User user);
  Future<void> updateUser(User user);
}
