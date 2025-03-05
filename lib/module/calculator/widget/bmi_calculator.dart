import 'package:bettereats_mobile/core/widgets/FLTextField.dart';
import 'package:bettereats_mobile/core/widgets/FLTextView.dart';
import 'package:bettereats_mobile/module/calculator/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucide_icons/lucide_icons.dart';

class BMIScreen extends GetView<CalculatorController> {
  const BMIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FLTextView(
            text: "BMI Calculator",
            fontSize: 24,
            color: Colors.green,
          ),
          const SizedBox(height: 5),
          FLTextView(
            text: "Find out how healthy your body is.",
            fontSize: 16,
            color: Colors.green,
          ),
          const SizedBox(height: 20),
          FLTextField(
            label: "Height (Cm)",
            hintText: "Height (Cm)",
            onChanged: (value) => controller.height.value = value,
          ),
          const SizedBox(height: 10),
          FLTextField(
            label: "Weight (kg)",
            hintText: "Weight (kg)",
            onChanged: (value) => controller.weight.value = value,
          ),
          const SizedBox(height: 16),
          Center(
            child: ElevatedButton.icon(
              onPressed: controller.calculateBMI,
              icon: const Icon(LucideIcons.calculator),
              label: const Text("Calculate BMI"),
            ),
          ),
          const SizedBox(height: 20),
          Obx(() => Text(
            "BMI Result: ${controller.bmiResult.value}",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )),
        ],
      ),
    );
  }
}
