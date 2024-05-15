import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/controller/weather_controller.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/views/screen/help_screen.dart';
import 'package:weather_app/views/screen/widgets/weather_info_widget.dart';

class HomePage extends StatelessWidget {
  final WeatherController weatherController = Get.put(WeatherController());
  final TextEditingController locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Weather App')),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: RawMaterialButton(
              onPressed: () {
                Get.to(HelpScreen());
              },
              child: Icon(Icons.help),
              shape: CircleBorder(),
              fillColor: Colors.blue, // Customize the background color
              elevation: 2.0,
              textStyle: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: locationController,
              decoration: InputDecoration(
                hintText: 'Search location',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(), // Border around the TextField
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () async {
                String location = locationController.text.trim();
                if (location.isEmpty) {
                  // If location name is empty, get current latitude and longitude
                  Position position = await _getCurrentLocation();
                  weatherController.fetchWeatherByLat_Lon(
                      position.latitude, position.longitude);
                } else {
                  weatherController.fetchWeatherByLocation(location);
                }
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue, // Text color
              ),
              child: Obx(() {
                return Text(
                  weatherController.weatherInfo.value.text.isEmpty
                      ? 'Save'
                      : 'Update',
                  style: TextStyle(color: Colors.white),
                );
              }),
            ),
            SizedBox(height: 30),
            Divider(color: Colors.grey.shade800),
            SizedBox(
              height: 10,
            ),
            Weather_Info_Widget(weatherController: weatherController),
          ],
        ),
      ),
    );
  }

  // Function to get current location
  Future<Position> _getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Check if location service is enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw 'Location services are disabled.';
    }

    // Request permission to access location
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw 'Location permissions are denied.';
      }
    }

    // Get current position
    return await Geolocator.getCurrentPosition();
  }
}
