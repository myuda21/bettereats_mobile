

import 'package:bettereats_mobile/core/routes/app_pages.dart';
import 'package:bettereats_mobile/module/Home/home_binding.dart';
import 'package:bettereats_mobile/module/Home/home_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  AppPages._();

  static const initial = AppRoutes.HOME;

  static final routes = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}