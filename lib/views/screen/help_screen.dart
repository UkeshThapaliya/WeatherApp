import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/views/screen/homepage_screen.dart';

class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("We show weather for you", style: TextStyle(fontSize: 30)),
                //use sizedbox to make the gap between text and skip button
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black87,
                    foregroundColor: Colors.white,
                    shadowColor: Colors.black,
                  ),
                  onPressed: () {
                    Get.offAll(HomePage());
                  },
                  child: Text('Skip'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
