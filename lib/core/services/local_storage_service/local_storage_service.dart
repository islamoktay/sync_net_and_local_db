import 'dart:async';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:sync_net_and_local_db/core/services/local_storage_service/i_local_storage_service.dart';

class LocalStorageService implements ILocalStorageService {
  const LocalStorageService(this.storage);
  final FlutterSecureStorage storage;

  @override
  Future<String?> readValue(String key, {bool isReport = false}) async {
    try {
      final response = await storage.read(key: key);
      if (response?.isNotEmpty ?? false) {
        return response!;
      } else {
        return null;
      }
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> writeValue({
    required String key,
    required String value,
    bool isReport = true,
  }) async {
    try {
      await storage.write(key: key, value: value);
    } catch (_) {
      rethrow;
    }
  }
}
