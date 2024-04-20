import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sync_net_and_local_db/core/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/core/common/usecase/save_users_to_local_usecase.dart';
import 'package:sync_net_and_local_db/feature/create_user/data/usecase/create_user_usecase.dart';

part 'create_user_state.dart';
part 'create_user_cubit.freezed.dart';

class CreateUserCubit extends Cubit<CreateUserState> {
  CreateUserCubit(
    this._createUserUsecase,
    this._saveUsersToLocalUsecase,
  ) : super(const CreateUserState.initial());
  final CreateUserUsecase _createUserUsecase;
  final SaveUsersToLocalUsecase _saveUsersToLocalUsecase;
  Future<void> createUser(User user) async {
    try {
      emit(const CreateUserState.loading());
      await _createUserUsecase(user);
      await _saveUsersToLocalUsecase([user]);
      emit(const CreateUserState.success());
    } catch (_) {
      emit(const CreateUserState.error());
    } finally {
      emit(const CreateUserState.initial());
    }
  }
}
