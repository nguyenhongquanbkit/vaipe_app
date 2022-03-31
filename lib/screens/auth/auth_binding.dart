import 'package:get/get.dart';
import 'auth_controller.dart';

class AuthenticateBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthenticateController>(() => AuthenticateController());
    // Get.lazyPut<SplashController>(() => SplashController());
  }
}
