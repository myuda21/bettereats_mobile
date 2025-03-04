import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var height = ''.obs;
  var weight = ''.obs;
  var age = ''.obs;
  var gender = ''.obs;

  void calculateBMI() {
    double h = double.tryParse(height.value) ?? 0;
    double w = double.tryParse(weight.value) ?? 0;

    if (h > 0 && w > 0) {
      double bmi = w / ((h / 100) * (h / 100));
      print("BMI: ${bmi.toStringAsFixed(2)}");
    } else {
      print("Please enter valid height and weight");
    }
  }
}