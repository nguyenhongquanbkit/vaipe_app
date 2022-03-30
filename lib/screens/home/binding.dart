import 'package:get/get.dart';
import 'controller.dart';

class NewHomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    // Get.lazyPut<SplashController>(() => SplashController());
  }
}
