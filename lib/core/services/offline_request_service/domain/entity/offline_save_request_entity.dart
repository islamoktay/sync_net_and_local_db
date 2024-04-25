import 'package:sync_net_and_local_db/core/enums/request_methods.dart';

class OfflineSaveRequestEntity {
  OfflineSaveRequestEntity({
    required this.url,
    required this.method,
    this.body,
    this.query,
    this.reason,
    this.moduleName,
  });

  final String url;
  final RequestMethods method;
  final String? body;
  final String? query;
  final String? reason;
  final String? moduleName;
}
