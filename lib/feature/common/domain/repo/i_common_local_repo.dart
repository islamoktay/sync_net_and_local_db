import 'package:sync_net_and_local_db/feature/common/domain/entity/user.dart';

abstract class ICommonLocalRepo {
  Future<void> createUser(User user);
  Future<void> removeUser(String id);
}
