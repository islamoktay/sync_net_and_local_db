import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sync_net_and_local_db/core/dependency_injection/di.dart';
import 'package:sync_net_and_local_db/core/services/navigation_service/i_navigation_service.dart';
import 'package:sync_net_and_local_db/feature/offline_requests/presentation/cubit/offline_cubit.dart';

class ClearButton extends StatelessWidget {
  const ClearButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog<void>(
          context: context,
          builder: (context) => BlocProvider.value(
            value: sl<OfflineCubit>(),
            child: AlertDialog.adaptive(
              title: const Text('Which DB dou you want to delete?'),
              actions: [
                ElevatedButton(
                  onPressed: () => _action(
                    () => sl<OfflineCubit>().removeAllRequests(),
                    context,
                  ),
                  child: const Text('All'),
                ),
                ElevatedButton(
                  onPressed: () => _action(
                    () => sl<OfflineCubit>().removeWaitingList(),
                    context,
                  ),
                  child: const Text('Waiting'),
                ),
                ElevatedButton(
                  onPressed: () => _action(
                    () => sl<OfflineCubit>().removeSuccessList(),
                    context,
                  ),
                  child: const Text('Success'),
                ),
                ElevatedButton(
                  onPressed: () => _action(
                    () => sl<OfflineCubit>().removeNotSentList(),
                    context,
                  ),
                  child: const Text('Not Sent'),
                ),
              ],
            ),
          ),
        );
      },
      child: const Text('Clear'),
    );
  }

  void _action(VoidCallback func, BuildContext context) {
    sl<INavigationService>().pop(context);
    func.call();
  }
}
