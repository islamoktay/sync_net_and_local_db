import 'package:flutter/material.dart';

import 'package:sync_net_and_local_db/core/constant/app_constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.appName),
      ),
    );
  }
}
