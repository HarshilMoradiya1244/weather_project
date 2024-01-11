import 'package:flutter/material.dart';
import 'package:weather_project/screen/home/model/weather_model.dart';
import '../../../utils/api_helper.dart';

class WeatherProvider with ChangeNotifier{

  WeatherModel? weatherModel;

  String selectedCity = "surat";

  void city(String city){
    selectedCity= city;
    notifyListeners();
  }
  Future<void> getData() async {
    ApiHelper apiHelper = ApiHelper();
    WeatherModel? user = await apiHelper.weatherApi(selectedCity);
    weatherModel = user;
    notifyListeners();
  }

}