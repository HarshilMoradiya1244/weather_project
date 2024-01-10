import 'package:flutter/cupertino.dart';
import 'package:weather_project/screen/home/view/detail_screen.dart';
import 'package:weather_project/screen/home/view/weather_screen.dart';

Map<String,WidgetBuilder> screen_routes = {
  '/':(context) => const WeatherScreen(),
  'detail':(context) => const DetailScreen(),
};