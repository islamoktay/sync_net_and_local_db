import 'package:flutter/material.dart';

import 'package:sync_net_and_local_db/core/constant/gen/assets.gen.dart';
import 'package:sync_net_and_local_db/core/dependency_injection/di.dart';
import 'package:sync_net_and_local_db/core/services/navigation_service/i_navigation_service.dart';
import 'package:sync_net_and_local_db/feature/home/presentation/view/home_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void>.delayed(const Duration(seconds: 2)).whenComplete(
      () => sl<INavigationService>().pushReplacement(context, const HomeView()),
    );
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
