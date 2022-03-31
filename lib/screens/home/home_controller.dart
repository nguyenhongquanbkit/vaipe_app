import 'package:get/get.dart';
import 'package:vaipe/routes/routes.dart';
import 'package:vaipe/screens/auth/auth_controller.dart';

class HomeController extends GetxController {
  HomeController();
  final authCtr = Get.find<AuthenticateController>();
  Future<void> logout() async {
    authCtr.logout();
    Get.offNamed(RouteNames.login);
  }
}
