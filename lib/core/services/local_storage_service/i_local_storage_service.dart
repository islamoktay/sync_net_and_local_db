abstract class ILocalStorageService {
  Future<String?> readValue(String key);
  Future<void> writeValue({
    required String key,
    required String value,
  });
}
