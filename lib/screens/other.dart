import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1/controllers/counterController.dart';

import 'Home.dart';

class OtherScreen extends StatelessWidget {
  final CounterController _counterController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('the button was clicked : ${_counterController.counter.value} number of times'),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 200, // Set the width you want
              height: 50,
              child: ElevatedButton(style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Background color
                onPrimary: Colors.white, // Text color
                minimumSize: Size(200, 50), // Width and height
              ),
                  onPressed: () {

                Get.back();
              },
                  child: Text('Open other screen')),
            ),
          ],
        ),
      ),
    );
  }
}


