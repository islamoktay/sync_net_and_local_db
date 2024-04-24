import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sync_net_and_local_db/core/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/core/common/usecase/save_users_to_local_usecase.dart';
import 'package:sync_net_and_local_db/feature/user_detail/data/usecase/create_user_usecase.dart';
import 'package:sync_net_and_local_db/feature/user_detail/data/usecase/update_user_in_local_usecase.dart';
import 'package:sync_net_and_local_db/feature/user_detail/data/usecase/update_user_in_remote_usecase.dart';

part 'user_detail_state.dart';
part 'user_detail_cubit.freezed.dart';

class UserDetailCubit extends Cubit<UserDetailState> {
  UserDetailCubit(
    this._createUserUsecase,
    this._saveUsersToLocalUsecase,
    this._updateUserInRemoteUsecase,
    this._updateUserInLocalUsecase,
  ) : super(const UserDetailState.initial());

  final CreateUserUsecase _createUserUsecase;
  final SaveUsersToLocalUsecase _saveUsersToLocalUsecase;
  final UpdateUserInRemoteUsecase _updateUserInRemoteUsecase;
  final UpdateUserInLocalUsecase _updateUserInLocalUsecase;

  Future<void> createUser(User user) async {
    try {
      emit(const UserDetailState.loading());
      await _createUserUsecase(user);
      await _saveUsersToLocalUsecase([user]);
      emit(const UserDetailState.success());
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
    } catch (_) {
      emit(const UserDetailState.error());
    } finally {
      emit(const UserDetailState.initial());
    }
  }
}
