import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sync_net_and_local_db/core/common/domain/repo/i_common_repo.dart';
import 'package:sync_net_and_local_db/core/common/usecase/save_users_to_local_usecase.dart';
import 'package:sync_net_and_local_db/core/constant/app_constants.dart';
import 'package:sync_net_and_local_db/core/dependency_injection/di.dart';
import 'package:sync_net_and_local_db/core/services/network_status_service/i_network_status_service.dart';
import 'package:sync_net_and_local_db/feature/home/domain/repo/i_home_local_repo.dart';
import 'package:sync_net_and_local_db/feature/home/domain/repo/i_home_remote_repo.dart';
import 'package:sync_net_and_local_db/feature/home/domain/usecase/get_users_flow_usecase.dart';
import 'package:sync_net_and_local_db/feature/home/domain/usecase/get_users_from_local_usecase.dart';
import 'package:sync_net_and_local_db/feature/home/domain/usecase/get_users_from_network_usecase.dart';
import 'package:sync_net_and_local_db/feature/home/domain/usecase/remove_users_from_local_db_usecase.dart';
import 'package:sync_net_and_local_db/feature/home/domain/usecase/watch_users_usecase.dart';
import 'package:sync_net_and_local_db/feature/home/presentation/provider/cubit/user_cubit.dart';
import 'package:sync_net_and_local_db/feature/home/presentation/widgets/add_user_button.dart';
import 'package:sync_net_and_local_db/feature/home/presentation/widgets/users_list_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit(
        GetUsersFromLocalUsecase(sl<IHomeLocalRepo>()),
        WatchUsersUsecase(sl<IHomeLocalRepo>()),
        GetUsersFlowUsecase(
          sl<INetworkStatusService>(),
          GetUsersFromNetworkUsecase(sl<IHomeRemoteRepo>()),
          RemoveUsersFromLocalDBUsecase(sl<IHomeLocalRepo>()),
          SaveUsersToLocalUsecase(sl<ICommonRepo>()),
          GetUsersFromLocalUsecase(sl<IHomeLocalRepo>()),
        ),
      )..getUsersFlow(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(AppConstants.appName),
        ),
        body: const UsersListBody(),
        floatingActionButton: const AddUserButton(),
      ),
    );
  }
}
