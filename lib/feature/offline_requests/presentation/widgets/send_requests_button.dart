import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sync_net_and_local_db/feature/offline_requests/presentation/cubit/offline_cubit.dart';

class SendRequestsButton extends StatelessWidget {
  const SendRequestsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OfflineCubit, OfflineState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: () =>
              context.read<OfflineCubit>().sendRequest(isTriggeredByHand: true),
          child: const Text('Send Requests'),
        );
      },
    );
  }
}
