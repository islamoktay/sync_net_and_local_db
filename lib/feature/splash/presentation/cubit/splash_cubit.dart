import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sync_net_and_local_db/core/services/navigation_service/i_navigation_service.dart';
import 'package:sync_net_and_local_db/feature/home/presentation/view/home_view.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState.initial());

  void navigateHome({
    required BuildContext context,
    required INavigationService navigationService,
  }) {
    Future<void>.delayed(const Duration(seconds: 2)).whenComplete(
      () => navigationService.pushReplacement(context, const HomeView()),
    );
  }
}
