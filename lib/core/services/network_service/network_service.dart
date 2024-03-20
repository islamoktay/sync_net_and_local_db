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
          response = await _dio.post(url);
        case RequestMethods.put:
          response = await _dio.put(url);
      }

      switch (response.statusCode) {
        case 200:
        case 201:
        case 204:
          return response.data;
        default:
          throw Exception('Failed to load data');
      }
    } catch (_) {
      rethrow;
    }
  }
}
