import 'package:bettereats_mobile/core/widgets/FLCustomChoiceButton.dart';
import 'package:bettereats_mobile/core/widgets/FLTextField.dart';
import 'package:bettereats_mobile/core/widgets/FLTextView.dart';
import 'package:bettereats_mobile/module/calculator/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucide_icons/lucide_icons.dart';

class TDEEScreen extends GetView<CalculatorController> {
  const TDEEScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FLTextView(
              text: "TDEE Calculator",
              fontSize: 24,
              color: Colors.green,
            ),
            const SizedBox(height: 5),
            FLTextView(
              text: "Find out how many calories you burn everyday.",
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
            const SizedBox(height: 10),
            FLTextField(
              label: "Age",
              hintText: "Age",
              onChanged: (value) => controller.age.value = value,
            ),
            const SizedBox(height: 16),

            const Text("Activity Level", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Obx(() => Wrap(
              spacing: 8,
              children: controller.activityLevelOptions.keys.map((level) {
                return FLCustomChoiceButton(
                  label: level,
                  isSelected: controller.selectedActivityLevel.value == level,
                  onTap: () => controller.selectedActivityLevel.value = level,
                );
              }).toList(),
            )),
            const SizedBox(height: 16),

            // Goal
            const Text("Goal", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Obx(() => Wrap(
              spacing: 8,
              children: controller.goalOptions.keys.map((goal) {
                return FLCustomChoiceButton(
                  label: goal,
                  isSelected: controller.selectedGoal.value == goal,
                  onTap: () => controller.selectedGoal.value = goal,
                );
              }).toList(),
            )),
            const SizedBox(height: 16),

            // Gender Selection
            const Text("Gender", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FLCustomChoiceButton(
                  label: "Male",
                  isSelected: controller.gender.value == 'Male',
                  onTap: () => controller.gender.value = 'Male',
                ),
                FLCustomChoiceButton(
                  label: "Female",
                  isSelected: controller.gender.value == 'Female',
                  onTap: () => controller.gender.value = 'Female',
                ),
              ],
            )),
            const SizedBox(height: 16),

            // Calculate Button
            Center(
              child: ElevatedButton.icon(
                onPressed: controller.calculateTDEE,
                icon: const Icon(LucideIcons.calculator),
                label: const Text("Calculate TDEE"),
              ),
            ),
            const SizedBox(height: 20),

            // Result
            Obx(() => Text(
              "TDEE Result: ${controller.tdeeResult.value} kcal/day",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )),
          ],
        ),
      ),
    );
  }
}


