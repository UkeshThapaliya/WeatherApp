import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/views/screen/homepage_screen.dart';
import 'package:weather_app/views/screen/widgets/heading_and_button.dart';

class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Start a timer when the screen is first built
    Future.delayed(Duration(seconds: 5), () {
      // Navigate to the homepage after 5 seconds
      Get.offAll(() => HomePage());
    });
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/BgFrame3.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          HeadingWidget(),
        ],
      ),
    );
  }
}
