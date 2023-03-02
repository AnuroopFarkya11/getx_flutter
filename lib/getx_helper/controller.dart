import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppController extends GetxController{

  var check_tap = true.obs;
  var changedText = "Hello".obs;
  var screenColor = Colors.white.obs;

  void onTapChanged() {

    


    changedText.value = "Changed!";
    screenColor.value = Colors.blueGrey;
    log("Calling the function");
  }

}