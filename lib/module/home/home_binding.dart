import 'package:bettereats_mobile/module/home/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
          () => HomeController(
        // profileUsecase: GetIt.I(),
        // pocket: FPPocket(), //TODO: apus
      ),
    );
  }
}