import 'package:flutter/material.dart';
import 'package:weather_project/screen/home/model/weather_model.dart';
import '../../../utils/api_helper.dart';

class WeatherProvider with ChangeNotifier{

  WeatherModel? weatherModel;

  Future<void> getData() async {
    ApiHelper apiHelper = ApiHelper();
    WeatherModel? user = await apiHelper.weatherApi();
    weatherModel = user;
    notifyListeners();
  }

}