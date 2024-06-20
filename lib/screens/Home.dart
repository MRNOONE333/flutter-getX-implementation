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
            Text('click: ${counterController.counter.value}',
              style: TextStyle(fontSize: 25,color: Colors.blue),),
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
        backgroundColor: Colors.blue,
        onPressed: () {
          counterController.increment();
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
