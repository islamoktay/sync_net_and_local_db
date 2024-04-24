import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';

import 'package:sync_net_and_local_db/core/services/local_db_service/i_local_db_service.dart';
import 'package:sync_net_and_local_db/core/services/local_db_service/local_db_service.dart';
import 'package:sync_net_and_local_db/core/services/navigation_service/i_navigation_service.dart';
import 'package:sync_net_and_local_db/core/services/navigation_service/navigation_service.dart';
import 'package:sync_net_and_local_db/core/services/network_service/i_network_service.dart';
import 'package:sync_net_and_local_db/core/services/network_service/network_service.dart';
import 'package:sync_net_and_local_db/core/services/network_status_service/i_network_status_service.dart';
import 'package:sync_net_and_local_db/core/services/network_status_service/network_status_service.dart';
import 'package:sync_net_and_local_db/feature/common/data/model/local/user_local_model.dart';
import 'package:sync_net_and_local_db/feature/common/data/repo/common_local_repo.dart';
import 'package:sync_net_and_local_db/feature/common/data/repo/common_remote_repo.dart';
import 'package:sync_net_and_local_db/feature/common/domain/repo/i_common_local_repo.dart';
import 'package:sync_net_and_local_db/feature/common/domain/repo/i_common_remote_repo.dart';
import 'package:sync_net_and_local_db/feature/home/data/repo/home_local_repo.dart';
import 'package:sync_net_and_local_db/feature/home/data/repo/home_remote_repo.dart';
import 'package:sync_net_and_local_db/feature/home/domain/repo/i_home_local_repo.dart';
import 'package:sync_net_and_local_db/feature/home/domain/repo/i_home_remote_repo.dart';
import 'package:sync_net_and_local_db/feature/user_detail/data/repo/user_detail_local_repo.dart';
import 'package:sync_net_and_local_db/feature/user_detail/data/repo/user_detail_remote_repo.dart';
import 'package:sync_net_and_local_db/feature/user_detail/domain/repo/i_user_detail_local_repo.dart';
import 'package:sync_net_and_local_db/feature/user_detail/domain/repo/i_user_detail_remote_repo.dart';

final GetIt sl = GetIt.instance;

Future<void> setupLocator() async {
  sl
    // third-party
    ..registerLazySingleton<Dio>(Dio.new)
    ..registerLazySingleton<Connectivity>(Connectivity.new)
    ..registerSingletonAsync<Isar>(() async => _isarInit())

    // services
    ..registerLazySingleton<INavigationService>(NavigationService.new)
    ..registerFactory<ILocalDBService>(() => LocalDBService(sl()))
    ..registerLazySingleton<INetworkService>(() => NetworkService(sl()))
    ..registerLazySingleton<INetworkStatusService>(
      () => NetworkStatusService(sl()),
    )
    ..registerLazySingleton<Logger>(
      () => Logger(printer: PrettyPrinter(methodCount: 0)),
    )

    // repos
    ..registerLazySingleton<IUserDetailRemoteRepo>(
      () => UserDetailRemoteRepo(sl()),
    )
    ..registerLazySingleton<IUserDetailLocalRepo>(
      () => UserDetailLocalRepo(sl()),
    )
    ..registerLazySingleton<IHomeLocalRepo>(() => HomeLocalRepo(sl()))
    ..registerLazySingleton<IHomeRemoteRepo>(() => HomeRemoteRepo(sl()))
    ..registerLazySingleton<ICommonLocalRepo>(() => CommonLocalRepo(sl()))
    ..registerLazySingleton<ICommonRemoteRepo>(() => CommonRemoteRepo(sl()));

  // usecases

  // blocs
}

Future<Isar> _isarInit() async {
  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [UserLocalModelSchema],
    directory: dir.path,
  );
  return isar;
}
