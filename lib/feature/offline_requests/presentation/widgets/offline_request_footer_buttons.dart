import 'package:flutter/material.dart';

import 'package:sync_net_and_local_db/feature/offline_requests/presentation/widgets/clear_button.dart';
import 'package:sync_net_and_local_db/feature/offline_requests/presentation/widgets/send_requests_button.dart';
import 'package:sync_net_and_local_db/feature/offline_requests/presentation/widgets/settings_button.dart';

class OfflineRequestFooterButtons extends StatelessWidget {
  const OfflineRequestFooterButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SendRequestsButton(),
        ClearButton(),
        SettingsButton(),
      ],
    );
  }
}
