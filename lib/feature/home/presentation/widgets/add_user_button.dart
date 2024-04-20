import 'package:flutter/material.dart';

import 'package:sync_net_and_local_db/core/dependency_injection/di.dart';
import 'package:sync_net_and_local_db/core/services/navigation_service/i_navigation_service.dart';
import 'package:sync_net_and_local_db/feature/create_user/prensentation/view/create_user_view.dart';

class AddUserButton extends StatelessWidget {
  const AddUserButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => sl<INavigationService>().push(
        context,
        const CreateUserView(),
      ),
      child: const Icon(Icons.add),
    );
  }
}
