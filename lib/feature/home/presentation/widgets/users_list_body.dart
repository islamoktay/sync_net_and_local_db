import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sync_net_and_local_db/feature/home/presentation/provider/cubit/user_cubit.dart';

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
            return ListTile(
              title: Text(user.name),
              subtitle: Text(user.mail),
            );
          },
        );
      },
    );
  }
}
