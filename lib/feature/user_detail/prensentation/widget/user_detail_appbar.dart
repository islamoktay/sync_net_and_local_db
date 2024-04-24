import 'package:flutter/material.dart';

import 'package:sync_net_and_local_db/core/common/domain/entity/user.dart';

class UserDetailAppbar extends StatelessWidget implements PreferredSizeWidget {
  const UserDetailAppbar({
    required this.user,
    super.key,
  });
  final User? user;
  @override
  Widget build(BuildContext context) {
    if (user != null) {
      return AppBar(
        title: const Text('Update User'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(Icons.delete),
            ),
          ),
        ],
      );
    } else {
      return AppBar(
        title: const Text('Create User'),
      );
    }
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
