import 'package:sync_net_and_local_db/core/enums/request_methods.dart';

abstract class INetworkService {
  Future<dynamic> networkRequest(
    String url, {
    required RequestMethods method,
    Map<String, dynamic>? body,
    bool isOfflineSave = false,
  });
}
