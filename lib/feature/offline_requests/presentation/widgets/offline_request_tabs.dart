import 'package:flutter/material.dart';

class OfflineRequestTabs extends StatelessWidget {
  const OfflineRequestTabs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      tabs: [
        Tab(
          icon: Icon(Icons.hourglass_empty),
        ),
        Tab(
          icon: Icon(Icons.done),
        ),
        Tab(
          icon: Icon(Icons.sync_problem),
        ),
      ],
    );
  }
}
