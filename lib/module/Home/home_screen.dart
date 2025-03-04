import 'package:bettereats_mobile/core/widgets/custom_appbar.dart';
import 'package:bettereats_mobile/module/Home/widget/circular_card_widget.dart';
import 'package:bettereats_mobile/module/Home/widget/meal_plan_card_widget.dart';
import 'package:bettereats_mobile/module/Home/widget/menu_drawer.dart';
import 'package:bettereats_mobile/module/Home/widget/recommended_meals_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      body: NestedScrollView(
        controller: controller.scrollController,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverPersistentHeader(
              pinned: true,
              delegate: CustomSliverAppBarDelegate(),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CircularCardWidget(
                  title: "Total Daily Energy Expenditure",
                  value: "1892",
                  unit: "kCal",
                  progress: 0.75,
                  buttonText: "Update",
                ),
                const SizedBox(height: 16),
                CircularCardWidget(
                  title: "Body Mass Index",
                  value: "0",
                  unit: "kg/m²",
                  progress: 0.0,
                  buttonText: "Update",
                  showWarning: true,
                ),
                const SizedBox(height: 16),
                MealPlanCardWidget(),
                const SizedBox(height: 16),
                RecommendedMealsWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomSliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return CustomSliverAppBar(opacity: controller.opacity);
      },
    );
  }

  @override
  double get maxExtent => 160.0;

  @override
  double get minExtent => 100.0;

  @override
  bool shouldRebuild(covariant CustomSliverAppBarDelegate oldDelegate) => true;
}

