import 'package:bettereats_mobile/module/calculator/calculator_controller.dart';
import 'package:bettereats_mobile/module/calculator/widget/bmi_calculator.dart';
import 'package:bettereats_mobile/module/calculator/widget/tdee_calculator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorScreen extends GetView<CalculatorController> {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Health Calculator"),
          backgroundColor: Colors.green,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🟢 Tambahkan elemen sebelum TabBar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Pilih kalkulator kesehatan:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),

            const TabBar(
              labelColor: Colors.black,
              tabs: [
                Tab(text: "BMI", ),
                Tab(text: "TDEE"),
              ],
            ),
            
            Expanded(
              child: const TabBarView(
                children: [
                  BMIScreen(),
                  TDEEScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

