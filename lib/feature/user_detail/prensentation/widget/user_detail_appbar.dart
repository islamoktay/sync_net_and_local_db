import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sync_net_and_local_db/feature/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/feature/user_detail/prensentation/cubit/user_detail_cubit.dart';

class UserDetailAppbar extends StatelessWidget implements PreferredSizeWidget {
  const UserDetailAppbar({
    required this.user,
    super.key,
  });
  final User? user;
  @override
  Widget build(BuildContext context) {
    if (user != null) {
      return AppBar(
        title: const Text('Update User'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: BlocBuilder<UserDetailCubit, UserDetailState>(
              builder: (context, state) {
                return GestureDetector(
                  onTap: () =>
                      context.read<UserDetailCubit>().removeUser(user!),
                  child: const Icon(Icons.delete),
                );
              },
            ),
          ),
        ],
      );
    } else {
      return AppBar(
        title: const Text('Create User'),
      );
    }
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
