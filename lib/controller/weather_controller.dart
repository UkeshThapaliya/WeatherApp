import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:weather_app/models/weather_info_model.dart';

class WeatherController extends GetxController {
  // Define a variable to hold the weather information
  var weatherInfo = WeatherInfo(tempC: 0.0, text: "", icon: "").obs;

//creating different function to fecth weather data from location and by Latitude and Longitude as per the given task
//location
  Future<void> fetchWeatherByLocation(String location) async {
    final response = await http.get(Uri.parse(
        'http://api.weatherapi.com/v1/current.json?key=a933ac739fb043bda15151531241305&q=$location'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      // Parse the JSON data into a WeatherInfo object
      weatherInfo.value = WeatherInfo.fromJson(data);
    } else {
      // basic error handling
      print('Failed to load weather data from given location');
    }
  }

  //latitude and longitude
  Future<void> fetchWeatherByLat_Lon(double lat, double lon) async {
    final response = await http.get(Uri.parse(
        'http://api.weatherapi.com/v1/current.json?key=a933ac739fb043bda15151531241305&q=$lat,$lon'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      // Parse the JSON data into a WeatherInfo object
      weatherInfo.value = WeatherInfo.fromJson(data);
    } else {
      // basic error handling
      print('Sorry unable to load the data');
    }
  }
}
