import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sync_net_and_local_db/core/constant/gen/assets.gen.dart';
import 'package:sync_net_and_local_db/core/dependency_injection/di.dart';
import 'package:sync_net_and_local_db/core/services/navigation_service/i_navigation_service.dart';
import 'package:sync_net_and_local_db/feature/splash/presentation/cubit/splash_cubit.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()
        ..navigateHome(
          context: context,
          navigationService: sl<INavigationService>(),
        ),
      child: BlocBuilder<SplashCubit, SplashState>(
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: Assets.splashAnimation.lottie(
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
