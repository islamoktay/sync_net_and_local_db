import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sync_net_and_local_db/core/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/core/helper/show_snack_bar.dart';
import 'package:sync_net_and_local_db/feature/user_detail/prensentation/cubit/user_detail_cubit.dart';
import 'package:sync_net_and_local_db/feature/user_detail/prensentation/widget/user_detail_initial_body.dart';

class UserDetailBody extends StatelessWidget {
  const UserDetailBody({super.key, this.user});

  final User? user;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserDetailCubit, UserDetailState>(
      listener: (context, state) {
        state.maybeMap(
          success: (value) {
            Navigator.pop(context);
            customSnackBar(
              content: 'User created successfully',
              color: Colors.green,
              context: context,
            );
          },
          error: (value) {
            customSnackBar(
              content: 'Sth went wrong while creating user.',
              context: context,
            );
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.maybeMap(
          initial: (value) => UserDetailInitialBody(user: user),
          loading: (value) =>
              const Center(child: CircularProgressIndicator.adaptive()),
          orElse: SizedBox.shrink,
        );
      },
    );
  }
}
