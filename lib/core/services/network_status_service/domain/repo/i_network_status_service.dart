abstract class INetworkStatusService {
  void watchNetwork(void Function(bool) callback);
  Future<bool> checkNetwork();
}
