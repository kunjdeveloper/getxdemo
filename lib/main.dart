import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lec12to2/Modal.dart';

import 'User.dart';
void main() {

  print("hello");
  //1.
  runApp(GetMaterialApp(
    home: demo(),
  ));
}
class MyApp extends StatelessWidget {

  //2. var,method,controller
   Modal m = Get.put(Modal());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(controller: m.t1,),
          TextField(controller: m.t2,),
          ElevatedButton(onPressed: () {
            m.total(m.t1.text,m.t2.text);
          }, child: Text("Sum")),
          //Obx
          Obx(() => Text("Sum=${m.sum}")),
          ElevatedButton(onPressed: () {

          }, child: Text("Go to Second Page"))
        ],
      ),
    );
  }
}
class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {

  Modal m=Get.put(Modal());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Obx(() => Slider(
            onChanged: (value) {
              m.change(value);
            },
            min: 1,
            max: 10,
            value:m.v.value,
          )),
         Obx(() =>  Text("Value=${m.v}"))
        ],
      ),
    );
  }
}
