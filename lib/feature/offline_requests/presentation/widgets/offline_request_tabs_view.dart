import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sync_net_and_local_db/feature/offline_requests/presentation/cubit/offline_cubit.dart';
import 'package:sync_net_and_local_db/feature/offline_requests/presentation/widgets/offline_requests_list.dart';

class OfflineRequestTabsView extends StatelessWidget {
  const OfflineRequestTabsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OfflineCubit, OfflineState>(
      builder: (context, state) {
        return TabBarView(
          children: [
            OfflineRequestsList(list: state.waiting),
            OfflineRequestsList(list: state.success),
          ],
        );
      },
    );
  }
}
