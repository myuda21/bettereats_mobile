import 'package:bettereats_mobile/core/routes/app_routes.dart';
import 'package:bettereats_mobile/module/home/home_binding.dart';
import 'package:bettereats_mobile/module/home/home_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  AppPages._();
  static const initial = AppRoutes.HOME_SCREEN;

  static final routes = [
    GetPage(
      name: AppPages.initial,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}