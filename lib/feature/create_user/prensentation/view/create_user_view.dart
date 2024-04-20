import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sync_net_and_local_db/core/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/core/common/domain/repo/i_common_repo.dart';
import 'package:sync_net_and_local_db/core/common/usecase/save_users_to_local_usecase.dart';
import 'package:sync_net_and_local_db/core/dependency_injection/di.dart';
import 'package:sync_net_and_local_db/feature/create_user/data/usecase/create_user_usecase.dart';
import 'package:sync_net_and_local_db/feature/create_user/domain/repo/i_create_user_repo.dart';
import 'package:sync_net_and_local_db/feature/create_user/prensentation/cubit/create_user_cubit.dart';
import 'package:sync_net_and_local_db/feature/create_user/prensentation/widget/create_user_body.dart';

class CreateUserView extends StatelessWidget {
  const CreateUserView({super.key, this.user});
  final User? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create User'),
      ),
      body: BlocProvider(
        create: (context) => CreateUserCubit(
          CreateUserUsecase(sl<ICreateUserRepo>()),
          SaveUsersToLocalUsecase(sl<ICommonRepo>()),
        ),
        child: CreateUserBody(user: user),
      ),
    );
  }
}
