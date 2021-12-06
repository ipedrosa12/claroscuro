import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:claroscuro/main.dart';

class ThemeController extends GetxController {
  
  RxBool _isThemeDark = false.obs;
  bool get isThemeDark => _isThemeDark.value;
  

  void changeTheme() {
    if (_isThemeDark.value) {
      Get.changeTheme(ThemeData.light());
    } else {
      Get.changeTheme(ThemeData.dark());
    }
    _isThemeDark.value = !_isThemeDark.value;
  }
}
