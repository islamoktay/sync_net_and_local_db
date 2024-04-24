import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sync_net_and_local_db/core/common/domain/entity/user.dart';
import 'package:sync_net_and_local_db/core/dependency_injection/di.dart';
import 'package:sync_net_and_local_db/core/helper/show_snack_bar.dart';
import 'package:sync_net_and_local_db/core/services/navigation_service/i_navigation_service.dart';
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
            sl<INavigationService>().pop(context);
            customSnackBar(
              content: 'User created successfully',
              color: Colors.green,
              context: context,
            );
          },
          error: (value) {
            customSnackBar(
              content: user == null
                  ? 'Sth went wrong while creating user.'
                  : 'Sth went wrong while updating user.',
              context: context,
            );
          },
          userUpdated: (value) {
            sl<INavigationService>().pop(context);
            customSnackBar(
              content: 'User updated successfully',
              color: Colors.green,
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
