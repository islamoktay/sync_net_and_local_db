import 'package:flutter/material.dart';

import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:sync_net_and_local_db/core/extension/date_time_x.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/entity/offline_request_entity.dart';

class OfflineRequestsList extends StatelessWidget {
  const OfflineRequestsList({
    required this.list,
    super.key,
  });
  final List<OfflineRequestEntity> list;
  @override
  Widget build(BuildContext context) {
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
                onPressed: (context) {},
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
