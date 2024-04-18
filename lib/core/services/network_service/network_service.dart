import 'package:dio/dio.dart';

import 'package:sync_net_and_local_db/core/enums/request_methods.dart';
import 'package:sync_net_and_local_db/core/services/network_service/i_network_service.dart';

class NetworkService implements INetworkService {
  const NetworkService(this._dio);

  final Dio _dio;

  @override
  Future<dynamic> networkRequest(
    String url, {
    required RequestMethods method,
    Map<String, dynamic>? body,
  }) async {
    try {
      Response<dynamic> response;
      switch (method) {
        case RequestMethods.get:
          response = await _dio.get(url);
        case RequestMethods.post:
          response = await _dio.post(
            url,
            data: body,
          );
        case RequestMethods.patch:
          response = await _dio.patch(
            url,
            data: body,
          );
        case RequestMethods.delete:
          response = await _dio.delete(url);
      }

      switch (response.statusCode) {
        case 200:
          return response.data;
        default:
      }
    } catch (_) {
      rethrow;
    }
  }
}
