import 'package:get/get.dart';
import 'package:ks_base_getx/routes/routes.dart';
import 'package:ks_base_getx/screens/auth/login.dart';
import 'package:ks_base_getx/screens/home/view.dart';

class AppRoutes {
  AppRoutes._(); //this is to prevent anyone from instantiating this object
  static final routes = [
    GetPage(name: RouteNames.LOGIN, page: () => LoginScreen()),
    GetPage(name: RouteNames.HOME, page: () => HomeScreen()),
  ];
}
