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
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Text('The button was clicked : ${_counterController.counter.value} number of times',
              style: TextStyle(fontSize: 25,color: Colors.blue),),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              onPrimary: Colors.white,
              minimumSize: Size(200, 75),
            ),
                onPressed: () {

              Get.back();
            },
                child: Text('Open main screen',
                  style: TextStyle(fontSize: 25),)),
          ],
        ),
      ),
    );
  }
}


