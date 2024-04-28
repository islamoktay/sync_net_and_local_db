import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sync_net_and_local_db/core/constant/app_constants.dart';
import 'package:sync_net_and_local_db/core/dependency_injection/di.dart';
import 'package:sync_net_and_local_db/core/services/local_storage_service/i_local_storage_service.dart';
import 'package:sync_net_and_local_db/core/services/navigation_service/i_navigation_service.dart';
import 'package:sync_net_and_local_db/feature/offline_requests/presentation/cubit/offline_cubit.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        final val = await sl<ILocalStorageService>()
            .readValue(AppConstants.autoSendRequest);
        final isAuto = bool.tryParse(val ?? 'false') ?? false;
        if (context.mounted) {
          await showDialog<void>(
            context: context,
            builder: (context) => AlertDialog.adaptive(
              title: const Text(
                'How do you want to send your saved network requests?',
              ),
              content: Text(
                // ignore: lines_longer_than_80_chars
                "If you choose 'Auto-Sync' app will send saved network requests automatically, otherwise it will be sent by hand. "
                "\n\nCurrent Status: ${isAuto ? 'Auto-Sync' : 'by Hand'}",
              ),
              actions: [
                BlocProvider.value(
                  value: sl<OfflineCubit>(),
                  child: ElevatedButton(
                    onPressed: () {
                      sl<OfflineCubit>().sendRequest();
                      sl<OfflineCubit>().initNetworkWatcher();
                      _syncMethod(context, 'true');
                    },
                    child: const Text('Auto-Sync'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _syncMethod(context, 'false'),
                  child: const Text('by Hand'),
                ),
              ],
            ),
          );
        }
      },
      child: const Text('Settings'),
    );
  }

  void _syncMethod(BuildContext context, String val) {
    sl<INavigationService>().pop(context);
    sl<ILocalStorageService>().writeValue(
      key: AppConstants.autoSendRequest,
      value: val,
    );
  }
}
