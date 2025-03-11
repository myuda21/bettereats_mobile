import 'package:bettereats_mobile/core/routes/app_pages.dart';
import 'package:bettereats_mobile/module/Home/home_binding.dart';
import 'package:bettereats_mobile/module/Home/home_screen.dart';
import 'package:bettereats_mobile/module/article/article_binding.dart';
import 'package:bettereats_mobile/module/article/article_screen.dart';
import 'package:bettereats_mobile/module/calculator/calculator_binding.dart';
import 'package:bettereats_mobile/module/calculator/calculator_screen.dart';
import 'package:bettereats_mobile/module/community/community_binding.dart';
import 'package:bettereats_mobile/module/community/community_screen.dart';
import 'package:bettereats_mobile/module/food/search_meal_binding.dart';
import 'package:bettereats_mobile/module/food/search_meal_screen.dart';
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
    GetPage(
      name: AppRoutes.CALCULATOR,
      page: () => const CalculatorScreen(),
      binding: CalculatorBinding(),
    ),
    GetPage(
      name: AppRoutes.SEARCH_MEAL,
      page: () => const SearchMealScreen(),
      binding: SearchMealBinding(),
    ),
    GetPage(
      name: AppRoutes.ARTICLES,
      page: () => const ArticleScreen(),
      binding: ArticleBinding(),
    ),
    GetPage(
      name: AppRoutes.COMMUNITY,
      page: () => const CommunityScreen(),
      binding: CommunityBinding(),
    ),
  ];
}