import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Modal extends GetxController
{

  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  //3.Rx
  RxInt sum=0.obs;
  RxDouble v=2.0.obs;

  void total(String a,String b)
  {
    sum.value=int.parse(a)+int.parse(b);
  }

  void change(double val)
  {
    v.value=val;
  }
}