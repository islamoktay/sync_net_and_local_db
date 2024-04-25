import 'package:sync_net_and_local_db/core/enums/request_methods.dart';

class OfflineRequestEntity {
  const OfflineRequestEntity({
    required this.reason,
    required this.content,
    required this.method,
    required this.moduleName,
    required this.localId,
  });

  final String? content;
  final RequestMethods? method;
  final String? reason;
  final String? moduleName;
  final int localId;
}
