import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sync_net_and_local_db/core/helper/show_snack_bar.dart';
import 'package:sync_net_and_local_db/feature/offline_requests/presentation/cubit/offline_cubit.dart';
import 'package:sync_net_and_local_db/feature/offline_requests/presentation/widgets/offline_requests_list.dart';

class OfflineRequestTabsView extends StatelessWidget {
  const OfflineRequestTabsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OfflineCubit, OfflineState>(
      listener: (context, state) => state.maybeMap(
        emptyList: (value) => customSnackBar(
          content: 'There is no network request to send.',
          color: Colors.orange,
          context: context,
        ),
        noNetwork: (value) => customSnackBar(
          content: 'Your device has no network connection.',
          color: Colors.red,
          context: context,
        ),
        error: (value) => customSnackBar(
          content: 'Something went wrong please try again later',
          color: Colors.red,
          context: context,
        ),
        success: (value) => customSnackBar(
          content: 'Network requests are sent successfully',
          color: Colors.green,
          context: context,
        ),
        orElse: () {
          return;
        },
      ),
      builder: (context, state) {
        return state.maybeMap(
          loading: (value) =>
              const Center(child: CircularProgressIndicator.adaptive()),
          initial: (value) {
            return TabBarView(
              children: [
                OfflineRequestsList(list: value.waitingList),
                OfflineRequestsList(list: value.successList),
              ],
            );
          },
          orElse: SizedBox.shrink,
        );
      },
    );
  }
}
