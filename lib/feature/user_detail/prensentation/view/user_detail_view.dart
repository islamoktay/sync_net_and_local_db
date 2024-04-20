import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sync_net_and_local_db/core/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/core/common/domain/repo/i_common_repo.dart';
import 'package:sync_net_and_local_db/core/common/usecase/save_users_to_local_usecase.dart';
import 'package:sync_net_and_local_db/core/dependency_injection/di.dart';
import 'package:sync_net_and_local_db/feature/user_detail/data/usecase/create_user_usecase.dart';
import 'package:sync_net_and_local_db/feature/user_detail/domain/repo/i_user_detail_repo.dart';
import 'package:sync_net_and_local_db/feature/user_detail/prensentation/cubit/user_detail_cubit.dart';
import 'package:sync_net_and_local_db/feature/user_detail/prensentation/widget/user_detail_body.dart';

class UserDetailView extends StatelessWidget {
  const UserDetailView({super.key, this.user});
  final User? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create User'),
      ),
      body: BlocProvider(
        create: (context) => UserDetailCubit(
          CreateUserUsecase(sl<IUserDetailRepo>()),
          SaveUsersToLocalUsecase(sl<ICommonRepo>()),
        ),
        child: UserDetailBody(user: user),
      ),
    );
  }
}
