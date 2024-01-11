import 'package:flutter/cupertino.dart';
import 'package:weather_project/screen/home/view/detail_screen.dart';
import 'package:weather_project/screen/home/view/setting_screen.dart';
import 'package:weather_project/screen/home/view/weather_screen.dart';
import 'package:weather_project/screen/splash/view/splash_screen.dart';

Map<String,WidgetBuilder> screen_routes = {
  '/':(context) => const SplashScreen(),
  'home':(context) => const WeatherScreen(),
  'detail':(context) => const DetailScreen(),
  'setting':(context) => const SettingScreen(),
};