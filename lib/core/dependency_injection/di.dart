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
import 'package:sync_net_and_local_db/feature/home/data/model/local/user_local_model.dart';

final GetIt sl = GetIt.instance;

Future<void> setupLocator() async {
  sl
        // third-party
        ..registerLazySingleton<Dio>(Dio.new)
        ..registerSingletonAsync<Isar>(() async => _isarInit())

        // services
        ..registerLazySingleton<INavigationService>(NavigationService.new)
        ..registerFactory<ILocalDBService>(() => LocalDBService(sl()))
        ..registerLazySingleton<INetworkService>(() => NetworkService(sl()))
        ..registerLazySingleton<Logger>(
          () => Logger(printer: PrettyPrinter(methodCount: 0)),
        )

      // repos

      // usecases

      // blocs
      ;
}

Future<Isar> _isarInit() async {
  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [UserLocalModelSchema],
    directory: dir.path,
  );
  return isar;
}
