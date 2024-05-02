import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sync_net_and_local_db/core/dependency_injection/di.dart';
import 'package:sync_net_and_local_db/feature/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/feature/common/domain/repo/i_common_local_repo.dart';
import 'package:sync_net_and_local_db/feature/common/domain/repo/i_common_remote_repo.dart';
import 'package:sync_net_and_local_db/feature/common/domain/usecase/remove_user_from_local_usecase.dart';
import 'package:sync_net_and_local_db/feature/common/domain/usecase/remove_user_from_remote_usecase.dart';
import 'package:sync_net_and_local_db/feature/common/domain/usecase/save_users_to_local_usecase.dart';
import 'package:sync_net_and_local_db/feature/user_detail/domain/repo/i_user_detail_local_repo.dart';
import 'package:sync_net_and_local_db/feature/user_detail/domain/repo/i_user_detail_remote_repo.dart';
import 'package:sync_net_and_local_db/feature/user_detail/domain/usecase/create_user_usecase.dart';
import 'package:sync_net_and_local_db/feature/user_detail/domain/usecase/update_user_in_local_usecase.dart';
import 'package:sync_net_and_local_db/feature/user_detail/domain/usecase/update_user_in_remote_usecase.dart';
import 'package:sync_net_and_local_db/feature/user_detail/prensentation/cubit/user_detail_cubit.dart';
import 'package:sync_net_and_local_db/feature/user_detail/prensentation/widget/user_detail_appbar.dart';
import 'package:sync_net_and_local_db/feature/user_detail/prensentation/widget/user_detail_body.dart';

class UserDetailView extends StatelessWidget {
  const UserDetailView({super.key, this.user});
  final User? user;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserDetailCubit(
        CreateUserUsecase(sl<IUserDetailRemoteRepo>()),
        SaveUsersToLocalUsecase(sl<ICommonLocalRepo>()),
        UpdateUserInRemoteUsecase(sl<IUserDetailRemoteRepo>()),
        UpdateUserInLocalUsecase(sl<IUserDetailLocalRepo>()),
        RemoveUserFromRemoteUsecase(sl<ICommonRemoteRepo>()),
        RemoveUserFromLocalUsecase(sl<ICommonLocalRepo>()),
      ),
      child: Scaffold(
        appBar: UserDetailAppbar(user: user),
        body: UserDetailBody(user: user),
      ),
    );
  }
}
