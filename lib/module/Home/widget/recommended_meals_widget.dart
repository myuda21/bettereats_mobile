import 'package:bettereats_mobile/module/Home/home_controller.dart';
import 'package:bettereats_mobile/module/Home/widget/meal_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecommendedMealsWidget extends StatelessWidget {
  RecommendedMealsWidget({super.key});
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Recommended Meals",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            Obx(() {
              if (controller.recommendedMeals.isEmpty) {
                return const Center(child: CircularProgressIndicator());
              }

              return Column(
                children: controller.recommendedMeals.asMap().entries.map((entry) {
                  final index = entry.key;
                  final meal = entry.value;

                  return Column(
                    children: [
                      MealItemWidget(
                        image: meal["image"] ?? "",
                        title: meal["name"] ?? "",
                        description: meal["description"],
                      ),
                      if (index < controller.recommendedMeals.length - 1)
                        Container(height: 1, color: Colors.grey, margin: EdgeInsets.symmetric(vertical: 5),)
                    ],
                  );
                }).toList(),
              );
            }),

            const SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {
                //TODO: Navigasi ke halaman pencarian
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: const Text("Go to Search Page"),
            ),
          ],
        ),
      ),
    );
  }
}
