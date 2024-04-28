import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:sync_net_and_local_db/core/extension/date_time_x.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/entity/offline_request_entity.dart';
import 'package:sync_net_and_local_db/feature/offline_requests/presentation/cubit/offline_cubit.dart';

class OfflineRequestsList extends StatelessWidget {
  const OfflineRequestsList({
    required this.list,
    super.key,
  });
  final List<OfflineRequestEntity> list;
  @override
  Widget build(BuildContext context) {
    if (list.isEmpty) {
      return const Center(
        child: Text('Nothing to show here (:'),
      );
    }
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(height: 0),
      itemCount: list.length,
      itemBuilder: (context, index) {
        final item = list[index];
        return Slidable(
          endActionPane: ActionPane(
            extentRatio: .3,
            motion: const ScrollMotion(),
            children: [
              SlidableAction(
                onPressed: (context) => context
                    .read<OfflineCubit>()
                    .removeRequest(item.localId ?? 0),
                backgroundColor: Colors.redAccent,
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Remove',
              ),
            ],
          ),
          child: ListTile(
            title: Text(item.moduleName ?? ''),
            leading: SizedBox(width: 40, child: Text(item.method.name)),
            subtitle: Text(
              item.reason ?? 'Unknown reason',
              maxLines: 1,
            ),
            trailing: Text(item.updatedTime.toDDMMYYYY()),
          ),
        );
      },
    );
  }
}
