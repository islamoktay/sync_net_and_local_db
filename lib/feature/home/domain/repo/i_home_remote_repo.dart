import 'package:sync_net_and_local_db/feature/home/domain/entity/user.dart';
import 'package:sync_net_and_local_db/feature/home/domain/entity/user_req.dart';

abstract class IHomeRemoteRepo {
  Future<List<User>> getUsers();
  Future<String> createUser(UserReq user);
  Future<String> updateUser(UserReq user);
}
