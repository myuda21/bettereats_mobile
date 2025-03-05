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
  var selectedGoal = "Maintain Weight".obs;

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

  // Pilihan Activity Level
  final activityLevelOptions = {
    "Little to no exercise": 1.2,
    "Light exercise (1-2 days a week)": 1.375,
    "Moderate exercise (3-5 days a week)": 1.55,
    "Very Active (6-7 days a week)": 1.725,
    "Extra Active (Very active / physical job)": 1.9,
  };

  var selectedActivityLevel = "Little to no exercise".obs;

  // Pilihan Goal
  final goalOptions = {
    "Gain Muscle / Weight": 500,
    "Maintain Weight": 0,
    "Lose Weight": -500,
  };



  void calculateTDEE() {
    double w = double.tryParse(weight.value) ?? 0;
    double h = double.tryParse(height.value) ?? 0;
    int a = int.tryParse(age.value) ?? 0;
    double activity = activityLevelOptions[selectedActivityLevel.value] ?? 1.2;
    int goalAdjustment = goalOptions[selectedGoal.value] ?? 0;

    if (w > 0 && h > 0 && a > 0) {
      double bmr;

      if (gender.value == 'Male') {
        bmr = 88.36 + (13.4 * w) + (4.8 * h) - (5.7 * a);
      } else {
        bmr = 447.6 + (9.2 * w) + (3.1 * h) - (4.3 * a);
      }

      double tdee = (bmr * activity) + goalAdjustment;
      tdeeResult.value = tdee.toStringAsFixed(2);
    } else {
      tdeeResult.value = "Invalid input";
    }
  }
}
