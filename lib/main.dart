import 'package:flutter/material.dart';

import 'package:sync_net_and_local_db/core/main/sync_net_local_db.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const SyncNetLocalDb());
}
