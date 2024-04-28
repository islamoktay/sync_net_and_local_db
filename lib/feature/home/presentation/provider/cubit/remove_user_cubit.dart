import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sync_net_and_local_db/core/exception/offline_save_exception.dart';
import 'package:sync_net_and_local_db/feature/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/feature/common/domain/usecase/remove_user_from_local_usecase.dart';
import 'package:sync_net_and_local_db/feature/common/domain/usecase/remove_user_from_remote_usecase.dart';

part 'remove_user_state.dart';
part 'remove_user_cubit.freezed.dart';

class RemoveUserCubit extends Cubit<RemoveUserState> {
  RemoveUserCubit(
    this._removeUserFromLocalUsecase,
    this._removeUserFromRemoteUsecase,
  ) : super(const RemoveUserState.initial());

  final RemoveUserFromLocalUsecase _removeUserFromLocalUsecase;
  final RemoveUserFromRemoteUsecase _removeUserFromRemoteUsecase;

  Future<void> removeUser(User user) async {
    try {
      emit(const RemoveUserState.loading());
      await _removeUserFromRemoteUsecase(user);
      await _removeUserFromLocalUsecase(user);
      emit(const RemoveUserState.success());
    } on OfflineSaveException catch (_) {
      emit(const RemoveUserState.removeUserOfflineSave());
    } catch (e, s) {
      print(e);
      print(s);
      emit(const RemoveUserState.error());
    } finally {
      emit(const RemoveUserState.initial());
    }
  }
}
