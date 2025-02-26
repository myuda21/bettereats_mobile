import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final ScrollController scrollController = ScrollController();
  double opacity = 1.0;

  @override
  void onInit() {
    super.onInit();
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
}
