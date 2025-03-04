import 'package:bettereats_mobile/module/calculator/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class CalculatorScreen extends GetView<CalculatorController> {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BMI Calculator"), backgroundColor: Colors.green,),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Height (cm)",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) => controller.height.value = value,
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: "Weight (kg)",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) => controller.weight.value = value,
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: "Age",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) => controller.age.value = value,
            ),
            const SizedBox(height: 16),
            Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () => controller.gender.value = 'Male',
                  style: ElevatedButton.styleFrom(
                    backgroundColor: controller.gender.value == 'Male'
                        ? Colors.green
                        : Colors.grey,
                  ),
                  child: const Text("MALE"),
                ),
                ElevatedButton(
                  onPressed: () => controller.gender.value = 'Female',
                  style: ElevatedButton.styleFrom(
                    backgroundColor: controller.gender.value == 'Female'
                        ? Colors.green
                        : Colors.grey,
                  ),
                  child: const Text("FEMALE"),
                ),
              ],
            )),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton.icon(
                onPressed: controller.calculateBMI,
                icon: const Icon(Icons.calculate),
                label: const Text("Calculate"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}