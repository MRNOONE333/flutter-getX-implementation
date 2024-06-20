import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1/controllers/counterController.dart';
import 'package:getx1/screens/other.dart';

class HomeScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('click: ${counterController.counter.value}'),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white,
                  minimumSize: Size(200, 75),
                ),
                onPressed: () {
                  Get.to(OtherScreen());
                },
                child: Text('Open other screen',
                style: TextStyle(fontSize: 25),
                ))
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
