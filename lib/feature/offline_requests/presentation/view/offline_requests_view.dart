import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sync_net_and_local_db/core/dependency_injection/di.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/repo/i_offline_request_service.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/usecase/offline_get_requests_usecase.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/usecase/offline_watch_db_usecase.dart';
import 'package:sync_net_and_local_db/feature/offline_requests/presentation/cubit/offline_cubit.dart';
import 'package:sync_net_and_local_db/feature/offline_requests/presentation/widgets/offline_request_footer_buttons.dart';
import 'package:sync_net_and_local_db/feature/offline_requests/presentation/widgets/offline_request_tabs.dart';
import 'package:sync_net_and_local_db/feature/offline_requests/presentation/widgets/offline_request_tabs_view.dart';

class OfflineRequestsView extends StatelessWidget {
  const OfflineRequestsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Waiting Requests'),
      ),
      persistentFooterButtons: const [OfflineRequestFooterButtons()],
      body: BlocProvider(
        create: (context) => OfflineCubit(
          OfflineGetRequestUsecase(sl<IOfflineRequestService>()),
          OfflineWatchDBUsecase(sl<IOfflineRequestService>()),
        )..getRequestsFlow(),
        child: const DefaultTabController(
          length: 2,
          child: Column(
            children: [
              OfflineRequestTabs(),
              Expanded(child: OfflineRequestTabsView()),
            ],
          ),
        ),
      ),
    );
  }
}
