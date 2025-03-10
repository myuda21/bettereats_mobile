import 'package:bettereats_mobile/module/article/article_controller.dart';
import 'package:get/get.dart';

class ArticleBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(
    //       () => HomeController(
    //     profileUsecase: GetIt.I(),
    //     pocket: FPPocket(),
    //   ),
    // );
    Get.put(ArticleController());
  }
}