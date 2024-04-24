import 'package:sync_net_and_local_db/feature/common/domain/entity/user.dart';

abstract class ICommonRemoteRepo {
  Future<void> removeUser(User user);
}
