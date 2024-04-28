import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sync_net_and_local_db/core/exception/offline_save_exception.dart';
import 'package:sync_net_and_local_db/feature/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/feature/common/domain/usecase/remove_user_from_local_usecase.dart';
import 'package:sync_net_and_local_db/feature/common/domain/usecase/remove_user_from_remote_usecase.dart';
import 'package:sync_net_and_local_db/feature/common/domain/usecase/save_users_to_local_usecase.dart';
import 'package:sync_net_and_local_db/feature/user_detail/domain/usecase/create_user_usecase.dart';
import 'package:sync_net_and_local_db/feature/user_detail/domain/usecase/update_user_in_local_usecase.dart';
import 'package:sync_net_and_local_db/feature/user_detail/domain/usecase/update_user_in_remote_usecase.dart';

part 'user_detail_state.dart';
part 'user_detail_cubit.freezed.dart';

class UserDetailCubit extends Cubit<UserDetailState> {
  UserDetailCubit(
    this._createUserUsecase,
    this._saveUsersToLocalUsecase,
    this._updateUserInRemoteUsecase,
    this._updateUserInLocalUsecase,
    this._removeUserFromRemoteUsecase,
    this._removeUserFromLocalUsecase,
  ) : super(const UserDetailState.initial());

  final CreateUserUsecase _createUserUsecase;
  final SaveUsersToLocalUsecase _saveUsersToLocalUsecase;
  final UpdateUserInRemoteUsecase _updateUserInRemoteUsecase;
  final UpdateUserInLocalUsecase _updateUserInLocalUsecase;
  final RemoveUserFromRemoteUsecase _removeUserFromRemoteUsecase;
  final RemoveUserFromLocalUsecase _removeUserFromLocalUsecase;

  Future<void> createUser(User user) async {
    try {
      emit(const UserDetailState.loading());

      final id = await _createUserUsecase(user);

      if (id?.isNotEmpty ?? false) {
        user.id = id;
        await _saveUsersToLocalUsecase([user]);
      } else {
        emit(const UserDetailState.error());
      }

      emit(const UserDetailState.success());
    } on OfflineSaveException catch (_) {
      emit(const UserDetailState.actionAddedToDb());
    } catch (_) {
      emit(const UserDetailState.error());
    } finally {
      emit(const UserDetailState.initial());
    }
  }

  Future<void> updateUser(User user) async {
    try {
      emit(const UserDetailState.loading());

      await _updateUserInRemoteUsecase(user);
      await _updateUserInLocalUsecase(user);

      emit(const UserDetailState.userUpdated());
    } on OfflineSaveException catch (_) {
      emit(const UserDetailState.actionAddedToDb());
    } catch (_) {
      emit(const UserDetailState.error());
    } finally {
      emit(const UserDetailState.initial());
    }
  }

  Future<void> removeUser(User user) async {
    try {
      emit(const UserDetailState.loading());

      await _removeUserFromRemoteUsecase(user);
      await _removeUserFromLocalUsecase(user);

      emit(const UserDetailState.userRemoved());
    } on OfflineSaveException catch (_) {
      emit(const UserDetailState.actionAddedToDb());
    } catch (_) {
      emit(const UserDetailState.error());
    } finally {
      emit(const UserDetailState.initial());
    }
  }
}
