import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sync_net_and_local_db/feature/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/feature/common/domain/usecase/get_users_flow_usecase.dart';
import 'package:sync_net_and_local_db/feature/home/domain/usecase/get_users_from_local_usecase.dart';
import 'package:sync_net_and_local_db/feature/home/domain/usecase/watch_users_usecase.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(
    this._getUsersFromLocalUsecase,
    this._watchUsersUsecase,
    this._getUsersFlowUsecase,
  ) : super(const UserState.initial());

  final GetUsersFromLocalUsecase _getUsersFromLocalUsecase;
  final WatchUsersUsecase _watchUsersUsecase;
  final GetUsersFlowUsecase _getUsersFlowUsecase;

  Future<void> getUsersFlow() async {
    await getUsersFromLocal();
    initWatchLocalData();
    await localDbFlow();
  }

  Future<void> getUsersFromLocal() async {
    try {
      final users = await _getUsersFromLocalUsecase(null);
      emit(state.copyWith(users: users));
    } catch (_) {
      return;
    }
  }

  Future<void> localDbFlow() async {
    try {
      final users = await _getUsersFlowUsecase(null);
      emit(state.copyWith(users: users));
    } catch (e) {
      emit(state.copyWith(users: []));
    }
  }

  void initWatchLocalData() => _watchUsersUsecase.call(
        (data) {
          if (!isClosed) emitLocalData(data);
        },
      );

  void emitLocalData(List<User> data) => emit(state.copyWith(users: data));
}
