import 'package:flutter/material.dart';

import 'package:sync_net_and_local_db/core/constant/gen/assets.gen.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Assets.splashAnimation.lottie(
          height: 300,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
