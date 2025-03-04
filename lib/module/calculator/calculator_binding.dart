import 'package:bettereats_mobile/module/calculator/calculator_controller.dart';
import 'package:get/get.dart';


class CalculatorBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(
    //       () => HomeController(
    //     profileUsecase: GetIt.I(),
    //     pocket: FPPocket(),
    //   ),
    // );
    Get.put(CalculatorController());
  }
}