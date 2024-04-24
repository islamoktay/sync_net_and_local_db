import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:sync_net_and_local_db/core/dependency_injection/di.dart';
import 'package:sync_net_and_local_db/core/services/navigation_service/i_navigation_service.dart';
import 'package:sync_net_and_local_db/feature/common/domain/repo/i_common_local_repo.dart';
import 'package:sync_net_and_local_db/feature/common/domain/repo/i_common_remote_repo.dart';
import 'package:sync_net_and_local_db/feature/common/usecase/remove_user_from_local_usecase.dart';
import 'package:sync_net_and_local_db/feature/common/usecase/remove_user_from_remote_usecase.dart';
import 'package:sync_net_and_local_db/feature/home/presentation/provider/cubit/remove_user_cubit.dart';
import 'package:sync_net_and_local_db/feature/home/presentation/provider/cubit/user_cubit.dart';
import 'package:sync_net_and_local_db/feature/user_detail/prensentation/view/user_detail_view.dart';

class UsersListBody extends StatelessWidget {
  const UsersListBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.users.length,
          itemBuilder: (context, index) {
            final user = state.users[index];
            return Slidable(
              endActionPane: ActionPane(
                motion: const ScrollMotion(),
                children: [
                  BlocProvider(
                    create: (context) => RemoveUserCubit(
                      RemoveUserFromLocalUsecase(sl<ICommonLocalRepo>()),
                      RemoveUserFromRemoteUsecase(sl<ICommonRemoteRepo>()),
                    ),
                    child: BlocBuilder<RemoveUserCubit, RemoveUserState>(
                      builder: (context, state) {
                        return SlidableAction(
                          onPressed: (context) =>
                              context.read<RemoveUserCubit>().removeUser(user),
                          backgroundColor: Colors.redAccent,
                          foregroundColor: Colors.white,
                          icon: Icons.delete,
                          label: 'Remove',
                        );
                      },
                    ),
                  ),
                  SlidableAction(
                    onPressed: (context) => sl<INavigationService>().push(
                      context,
                      UserDetailView(user: user),
                    ),
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                    icon: Icons.sync_alt,
                    label: 'Update',
                  ),
                ],
              ),
              child: ListTile(
                title: Text(user.name),
                subtitle: Text(user.mail),
              ),
            );
          },
        );
      },
    );
  }
}
