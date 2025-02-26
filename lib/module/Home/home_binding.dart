import 'package:bettereats_mobile/module/Home/home_controller.dart';
import 'package:get/get.dart';


class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(
    //       () => HomeController(
    //     profileUsecase: GetIt.I(),
    //     pocket: FPPocket(),
    //   ),
    // );
    Get.put(HomeController());
  }
}