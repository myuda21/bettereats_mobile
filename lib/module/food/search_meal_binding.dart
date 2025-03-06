import 'package:bettereats_mobile/module/food/search_meal_controller.dart';
import 'package:get/get.dart';


class SearchMealBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(
    //       () => HomeController(
    //     profileUsecase: GetIt.I(),
    //     pocket: FPPocket(),
    //   ),
    // );
    Get.put(SearchMealController());
  }
}