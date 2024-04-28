import 'package:connectivity_plus/connectivity_plus.dart';

import 'package:sync_net_and_local_db/core/services/network_status_service/domain/repo/i_network_status_service.dart';

class NetworkStatusService implements INetworkStatusService {
  NetworkStatusService(this._connectivity);

  final Connectivity _connectivity;
  @override
  void watchNetwork(void Function(bool) callback) {
    try {
      _connectivity.onConnectivityChanged.listen((connectivityResult) {
        if (connectivityResult.contains(ConnectivityResult.mobile) ||
            connectivityResult.contains(ConnectivityResult.wifi)) {
          callback.call(true);
        } else if (connectivityResult.contains(ConnectivityResult.none)) {
          callback.call(false);
        } else {
          callback.call(false);
        }
      });
    } catch (_) {
      callback.call(false);
    }
  }

  @override
  Future<bool> checkNetwork() async {
    try {
      final connectivityResult = await _connectivity.checkConnectivity();
      if (connectivityResult.contains(ConnectivityResult.mobile) ||
          connectivityResult.contains(ConnectivityResult.wifi)) {
        return true;
      } else if (connectivityResult.contains(ConnectivityResult.none)) {
        return false;
      } else {
        return false;
      }
    } catch (_) {
      return false;
    }
  }
}
