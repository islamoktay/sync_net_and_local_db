import 'package:sync_net_and_local_db/core/enums/request_methods.dart';
import 'package:sync_net_and_local_db/core/exception/offline_save_exception.dart';
import 'package:sync_net_and_local_db/core/services/network_service/i_network_service.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/entity/offline_save_request_entity.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/usecase/offline_save_request_usecase.dart';
import 'package:sync_net_and_local_db/feature/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/feature/common/domain/repo/i_common_remote_repo.dart';
import 'package:sync_net_and_local_db/feature/home/core/constant/home_network_constants.dart';

class CommonRemoteRepo implements ICommonRemoteRepo {
  const CommonRemoteRepo(this._networkService, this._offlineSaveRequestUsecase);

  final INetworkService _networkService;
  final OfflineSaveRequestUsecase _offlineSaveRequestUsecase;

  @override
  Future<void> removeUser(User user) async {
    final url = '${HomeNetworkConstants.users}${user.id}.json';
    try {
      await _networkService.networkRequest(
        url,
        method: RequestMethods.delete,
        isOfflineSave: true,
      );
    } on OfflineSaveException catch (e) {
      final request = OfflineSaveRequestEntity(
        url: url,
        method: RequestMethods.delete,
        moduleName: 'Common remove user',
        reason: e.reason,
      );

      await _offlineSaveRequestUsecase(request);
    } catch (_) {
      rethrow;
    }
  }
}
