import 'package:sync_net_and_local_db/feature/common/usecase/i_usecase.dart';
import 'package:sync_net_and_local_db/feature/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/feature/home/domain/repo/i_home_local_repo.dart';

class WatchUsersUsecase implements Usecase<void, void Function(List<User>)> {
  const WatchUsersUsecase(this._homeLocalRepo);
  final IHomeLocalRepo _homeLocalRepo;

  @override
  void call(void Function(List<User>) callback) {
    return _homeLocalRepo.initWatcher(callback);
  }
}
