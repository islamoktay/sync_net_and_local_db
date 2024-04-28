// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:sync_net_and_local_db/core/enums/request_methods.dart';
import 'package:sync_net_and_local_db/core/services/offline_request_service/domain/enum/offline_request_status.dart';

class OfflineRequestEntity {
  const OfflineRequestEntity({
    required this.url,
    required this.method,
    required this.updatedTime,
    required this.moduleName,
    required this.status,
    this.reason,
    this.localId,
    this.remoteID,
    this.body,
    this.query,
  });

  final int? localId;
  final String url;
  final RequestMethods method;
  final OfflineRequestStatus status;
  final String? body;
  final String? query;
  final String? remoteID;
  final DateTime updatedTime;
  final String? reason;
  final String? moduleName;

  @override
  String toString() {
    return 'OfflineRequestEntity(localId: $localId, url: $url, method: $method, status: $status, body: $body, query: $query, remoteID: $remoteID, updatedTime: $updatedTime, reason: $reason, moduleName: $moduleName)';
  }
}
