import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1/controllers/counterController.dart';
import 'package:getx1/screens/Home.dart';
import 'package:getx1/screens/other.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
