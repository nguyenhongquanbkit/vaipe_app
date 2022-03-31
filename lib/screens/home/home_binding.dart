import 'package:get/get.dart';
import 'home_controller.dart';

class NewHomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    // Get.lazyPut<SplashController>(() => SplashController());
  }
}
