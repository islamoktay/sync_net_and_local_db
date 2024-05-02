import 'package:flutter/material.dart';

import 'package:sync_net_and_local_db/core/constant/app_constants.dart';
import 'package:sync_net_and_local_db/core/dependency_injection/di.dart';
import 'package:sync_net_and_local_db/core/services/navigation_service/i_navigation_service.dart';
import 'package:sync_net_and_local_db/feature/offline_requests/presentation/view/offline_requests_view.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(AppConstants.appName),
      actions: [
        IconButton(
          onPressed: () => sl<INavigationService>().push(
            context,
            const OfflineRequestsView(),
          ),
          icon: const Icon(Icons.unarchive),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
