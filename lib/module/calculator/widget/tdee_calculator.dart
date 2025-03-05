import 'package:bettereats_mobile/module/calculator/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucide_icons/lucide_icons.dart';

class TDEEScreen extends GetView<CalculatorController> {
  const TDEEScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: const InputDecoration(
              labelText: "Age",
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
            onChanged: (value) => controller.age.value = value,
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: const InputDecoration(
              labelText: "Weight (kg)",
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
            onChanged: (value) => controller.weight.value = value,
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: const InputDecoration(
              labelText: "Height (cm)",
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
            onChanged: (value) => controller.height.value = value,
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: const InputDecoration(
              labelText: "Activity Level (1.2 - 1.9)",
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
            onChanged: (value) => controller.activityLevel.value = value,
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
          const SizedBox(height: 16),
          Center(
            child: ElevatedButton.icon(
              onPressed: controller.calculateTDEE,
              icon: const Icon(LucideIcons.calculator),
              label: const Text("Calculate TDEE"),
            ),
          ),
          const SizedBox(height: 20),
          Obx(() => Text(
            "TDEE Result: ${controller.tdeeResult.value} kcal/day",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )),
        ],
      ),
    );
  }
}
