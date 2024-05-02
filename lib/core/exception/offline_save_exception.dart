class OfflineSaveException implements Exception {
  const OfflineSaveException({required this.reason});

  final String? reason;
}
