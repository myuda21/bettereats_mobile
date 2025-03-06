import 'package:bettereats_mobile/module/food/widget/food_card_widget.dart';
import 'package:bettereats_mobile/module/food/search_meal_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchMealScreen extends GetView<SearchMealController> {
  const SearchMealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Food List'),backgroundColor: Colors.green,),
      body: Column(
        children: [
          _buildFilterBar(),
          Expanded(
            child: Obx(() {
              return ListView.builder(
                itemCount: controller.filteredFoodList.length,
                itemBuilder: (context, index) {
                  return FoodCardWidget(
                    food: controller.filteredFoodList[index],
                    onFavoriteToggle: () {
                      controller.toggleFavorite(controller.filteredFoodList[index]);
                    },
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterBar() {
    return Container(
      height: 50,
      padding: EdgeInsets.all(8),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.filters.length,
          itemBuilder: (context, index) {
            final filter = controller.filters[index];
            final isSelected = controller.selectedFilter.value == filter;

            return GestureDetector(
              onTap: () => controller.selectedFilter.value = filter,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.green : Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    filter,
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
    );
  }
}

