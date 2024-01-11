import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_project/screen/home/provider/weather_provider.dart';
import 'package:weather_project/utils/app_routes.dart';
import 'package:weather_project/utils/app_theme.dart';
import 'package:weather_project/utils/theme_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: WeatherProvider(),
        ),
        ChangeNotifierProvider.value(
          value: ThemeProvider(),
        ),
      ],
      child: Consumer<ThemeProvider>(builder: (context, value, child) {
        return MaterialApp(
          theme: value.isLight ? lightTheme : darkTheme,
          debugShowCheckedModeBanner: false,
          routes: screen_routes,
        );
      },
      ),
    ),
  );
}
