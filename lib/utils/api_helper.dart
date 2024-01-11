import 'dart:convert';
import 'package:http/http.dart' as http;
import '../screen/home/model/weather_model.dart';

class ApiHelper {
  Future<WeatherModel?> weatherApi(String? city) async {
    String apiLink = "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=3d5b80cdb356bb109cf6315e49a4e4ed";

    var response = await http.get(Uri.parse(apiLink),);

    if (response.statusCode == 200) {
      var jsontostring = jsonDecode(response.body);
      WeatherModel data = WeatherModel.mapToModel(jsontostring);
      return data;
    }
    return null;
  }
}
