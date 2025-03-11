import 'package:bettereats_mobile/module/community/community_controller.dart';
import 'package:get/get.dart';

class CommunityBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(
    //       () => HomeController(
    //     profileUsecase: GetIt.I(),
    //     pocket: FPPocket(),
    //   ),
    // );
    Get.put(CommunityController());
  }
}