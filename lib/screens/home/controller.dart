import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';
import 'package:ks_base_getx/routes/routes.dart';
import 'package:ks_base_getx/screens/auth/controller.dart';

class HomeController extends GetxController {
  HomeController();
  final authCtr = Get.find<AuthenticateController>();
  Future<void> logout() async {
    authCtr.logout();
    Get.offNamed(RouteNames.LOGIN);
  }
}
