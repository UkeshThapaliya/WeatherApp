import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:weather_app/models/weather_info_model.dart';

class WeatherController extends GetxController {
  var weather = Weather(tempC: 0.0, text: '', icon: '')
      .obs; //define variable for weather info as observable

  Future<void> fetchWeather(String location) async {
    final response = await http.get(Uri.parse(
        'https://api.weatherapi.com/v1/current.json?key=a933ac739fb043bda15151531241305&q=$location'));

    if (response.statusCode == 200) {
      weather.value = Weather.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load weather data'); //basic error handling
    }
  }
}
