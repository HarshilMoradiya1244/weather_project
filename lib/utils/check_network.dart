import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:weather_project/screen/home/provider/weather_provider.dart';

class NetworkConnection {
  Connectivity networkConnectivity = Connectivity();

  Future<void> checkConnection(BuildContext context) async {
    ConnectivityResult result = await networkConnectivity.checkConnectivity();
    checkStatus(result,context);
    networkConnectivity.onConnectivityChanged.listen((event) {});
  }

  void checkStatus(ConnectivityResult result, BuildContext context) {
    if (result.index == 3 || result.index == 1) {
      context.read<WeatherProvider>().changeStatus(true);
    } else {
      context.read<WeatherProvider>().changeStatus(false);
    }
  }
}
