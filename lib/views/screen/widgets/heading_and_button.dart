import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/views/screen/homepage_screen.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("We show weather for you", style: TextStyle(fontSize: 30)),
          //use sizedbox to make the gap between text and skip button
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black87,
              foregroundColor: Colors.white,
              shadowColor: Colors.black,
            ),
            onPressed: () {
              Get.offAll(() => HomePage());
            },
            child: Text('Skip'),
          ),
        ],
      ),
    );
  }
}
