import 'dart:convert';

import 'package:sync_net_and_local_db/core/enums/request_methods.dart';
import 'package:sync_net_and_local_db/core/exception/offline_save_exception.dart';
import 'package:sync_net_and_local_db/core/services/network_service/i_network_service.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/entity/offline_request_entity.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/enum/offline_request_status.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/usecase/offline_save_request_usecase.dart';
import 'package:sync_net_and_local_db/feature/common/data/model/remote/user_model.dart';
import 'package:sync_net_and_local_db/feature/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/feature/home/core/constant/home_network_constants.dart';
import 'package:sync_net_and_local_db/feature/user_detail/data/model/create_user_response_model.dart';
import 'package:sync_net_and_local_db/feature/user_detail/domain/repo/i_user_detail_remote_repo.dart';

class UserDetailRemoteRepo implements IUserDetailRemoteRepo {
  const UserDetailRemoteRepo(
    this._networkService,
    this._offlineSaveRequestUsecase,
  );

  final INetworkService _networkService;
  final OfflineSaveRequestUsecase _offlineSaveRequestUsecase;

  @override
  Future<String?> createUser(User user) async {
    try {
      final response = await _networkService.networkRequest(
        HomeNetworkConstants.usersJson,
        method: RequestMethods.post,
        body: UserModel.fromEntity(user).toJson(),
        isOfflineSave: true,
      );
      final id = CreateUserResponseModel.fromJson(
        response as Map<String, dynamic>,
      ).name;
      if (id?.isNotEmpty ?? false) {
        return id!;
      } else {
        throw Exception('id is null');
      }
    } on OfflineSaveException catch (e) {
      final req = OfflineRequestEntity(
        remoteID: user.id,
        url: HomeNetworkConstants.usersJson,
        method: RequestMethods.post,
        body: jsonEncode(UserModel.fromEntity(user).toJson()),
        moduleName: 'UserDetail create user',
        reason: e.reason,
        status: OfflineRequestStatus.waiting,
        updatedTime: DateTime.now(),
      );

      await _offlineSaveRequestUsecase(req);
      rethrow;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> updateUser(User user) async {
    final url = '${HomeNetworkConstants.users}${user.id}.json';
    try {
      await _networkService.networkRequest(
        url,
        method: RequestMethods.patch,
        body: UserModel.fromEntity(user).toJson(),
        isOfflineSave: true,
      );
    } on OfflineSaveException catch (e) {
      final req = OfflineRequestEntity(
        remoteID: user.id,
        url: url,
        method: RequestMethods.patch,
        body: jsonEncode(UserModel.fromEntity(user).toJson()),
        moduleName: 'UserDetail update user',
        reason: e.reason,
        status: OfflineRequestStatus.waiting,
        updatedTime: DateTime.now(),
      );

      await _offlineSaveRequestUsecase(req);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}
