import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:weather_app/controller/weather_controller.dart';

class Weather_Info_Widget extends StatelessWidget {
  const Weather_Info_Widget({
    super.key,
    required this.weatherController,
  });

  final WeatherController weatherController;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final weatherInfo = weatherController.weatherInfo.value;
      return Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              'Temperature : ${weatherInfo.tempC}°C',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              'Condition : ${weatherInfo.text}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Image.network(weatherInfo.icon),
        ],
      );
    });
  }
}
