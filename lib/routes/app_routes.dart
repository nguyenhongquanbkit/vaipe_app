import 'package:get/get.dart';
import 'package:vaipe/routes/routes.dart';
import 'package:vaipe/screens/auth/login_view.dart';
import 'package:vaipe/screens/home/home_view.dart';

class AppRoutes {
  AppRoutes._(); //this is to prevent anyone from instantiating this object
  static final routes = [
    GetPage(name: RouteNames.login, page: () => LoginScreen()),
    GetPage(name: RouteNames.home, page: () => HomeScreen()),
  ];
}
