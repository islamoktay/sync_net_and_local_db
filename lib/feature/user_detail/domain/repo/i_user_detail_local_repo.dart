import 'package:sync_net_and_local_db/core/common/domain/entity/user.dart';

abstract class IUserDetailLocalRepo {
  Future<void> updateUser(User user);
}
