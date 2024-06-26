import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sync_net_and_local_db/core/dependency_injection/di.dart';
import 'package:sync_net_and_local_db/core/services/network_status_service/domain/repo/i_network_status_service.dart';
import 'package:sync_net_and_local_db/core/services/network_status_service/domain/usecase/check_network_usecase.dart';
import 'package:sync_net_and_local_db/feature/common/domain/repo/i_common_local_repo.dart';
import 'package:sync_net_and_local_db/feature/common/domain/usecase/get_users_flow_usecase.dart';
import 'package:sync_net_and_local_db/feature/common/domain/usecase/save_users_to_local_usecase.dart';
import 'package:sync_net_and_local_db/feature/home/domain/repo/i_home_local_repo.dart';
import 'package:sync_net_and_local_db/feature/home/domain/repo/i_home_remote_repo.dart';
import 'package:sync_net_and_local_db/feature/home/domain/usecase/get_users_from_local_usecase.dart';
import 'package:sync_net_and_local_db/feature/home/domain/usecase/get_users_from_network_usecase.dart';
import 'package:sync_net_and_local_db/feature/home/domain/usecase/remove_users_from_local_db_usecase.dart';
import 'package:sync_net_and_local_db/feature/home/domain/usecase/watch_users_usecase.dart';
import 'package:sync_net_and_local_db/feature/home/presentation/provider/cubit/user_cubit.dart';
import 'package:sync_net_and_local_db/feature/home/presentation/widgets/add_user_button.dart';
import 'package:sync_net_and_local_db/feature/home/presentation/widgets/home_appbar.dart';
import 'package:sync_net_and_local_db/feature/home/presentation/widgets/users_list_body.dart';
import 'package:sync_net_and_local_db/feature/offline_requests/presentation/cubit/offline_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserCubit(
            GetUsersFromLocalUsecase(sl<IHomeLocalRepo>()),
            WatchUsersUsecase(sl<IHomeLocalRepo>()),
            GetUsersFlowUsecase(
              CheckNetworkUsecase(sl<INetworkStatusService>()),
              GetUsersFromNetworkUsecase(sl<IHomeRemoteRepo>()),
              RemoveUsersFromLocalDBUsecase(sl<IHomeLocalRepo>()),
              SaveUsersToLocalUsecase(sl<ICommonLocalRepo>()),
              GetUsersFromLocalUsecase(sl<IHomeLocalRepo>()),
            ),
          )..getUsersFlow(),
        ),
        BlocProvider.value(value: sl<OfflineCubit>()),
      ],
      child: const Scaffold(
        appBar: HomeAppbar(),
        body: UsersListBody(),
        floatingActionButton: AddUserButton(),
      ),
    );
  }
}
