import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var height = ''.obs;
  var weight = ''.obs;
  var age = ''.obs;
  var gender = 'Male'.obs;
  var activityLevel = '1.2'.obs;

  var bmiResult = ''.obs;
  var tdeeResult = ''.obs;

  void calculateBMI() {
    double h = double.tryParse(height.value) ?? 0;
    double w = double.tryParse(weight.value) ?? 0;

    if (h > 0 && w > 0) {
      double bmi = w / ((h / 100) * (h / 100));
      bmiResult.value = bmi.toStringAsFixed(2);
    } else {
      bmiResult.value = "Invalid input";
    }
  }

  void calculateTDEE() {
    double w = double.tryParse(weight.value) ?? 0;
    double h = double.tryParse(height.value) ?? 0;
    int a = int.tryParse(age.value) ?? 0;
    double activity = double.tryParse(activityLevel.value) ?? 1.2;

    if (w > 0 && h > 0 && a > 0) {
      double bmr;

      if (gender.value == 'Male') {
        bmr = 88.36 + (13.4 * w) + (4.8 * h) - (5.7 * a);
      } else {
        bmr = 447.6 + (9.2 * w) + (3.1 * h) - (4.3 * a);
      }

      double tdee = bmr * activity;
      tdeeResult.value = tdee.toStringAsFixed(2);
    } else {
      tdeeResult.value = "Invalid input";
    }
  }
}
