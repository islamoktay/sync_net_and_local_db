import 'package:sync_net_and_local_db/feature/common/domain/entity/user.dart';

abstract class ICommonRepo {
  Future<void> createUser(User user);
  Future<void> removeUser(String id);
}
