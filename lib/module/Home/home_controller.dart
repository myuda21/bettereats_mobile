import 'package:bettereats_mobile/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final ScrollController scrollController = ScrollController();
  double opacity = 1.0;

  @override
  void onInit() {
    super.onInit();
    fetchRecommendedMeals();
    scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    double offset = scrollController.offset;
    double newOpacity = (100.0 - offset) / 100.0;
    opacity = newOpacity.clamp(0.0, 1.0);
    update();
  }

  @override
  void onClose() {
    scrollController.removeListener(_scrollListener);
    scrollController.dispose();
    super.onClose();
  }

  var recommendedMeals = <Map<String, String>>[].obs;

  void fetchRecommendedMeals() async {
    await Future.delayed(const Duration(seconds: 2)); // Simulasi loading
    recommendedMeals.value = [
      {
        "name": "Grilled Chicken Salad",
        "image": AppImages.bread,
        "description": "Salad ayam panggang yang lezat dan sehat."
      },
      {
        "name": "Quinoa & Avocado Bowl",
        "image": AppImages.bread,
        "description": "Makanan sehat dengan quinoa dan alpukat."
      },
      {
        "name": "Salmon with Asparagus",
        "image": AppImages.bread,
        "description": "Salmon panggang dengan asparagus segar."
      },
      {
        "name": "Vegan Buddha Bowl",
        "image": AppImages.bread,
        // Tidak ada deskripsi
      },
    ];
  }
}
