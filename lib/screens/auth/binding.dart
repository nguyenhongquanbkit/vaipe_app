import 'package:get/get.dart';
import 'controller.dart';

class AuthenticateBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthenticateController>(() => AuthenticateController());
    // Get.lazyPut<SplashController>(() => SplashController());
  }
}
