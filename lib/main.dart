import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:ks_base_getx/routes/app_routes.dart';
import 'package:ks_base_getx/routes/routes.dart';
import 'package:get/get.dart';
import 'package:ks_base_getx/screens/auth/controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put<AuthenticateController>(AuthenticateController());

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.LOGIN,
      getPages: AppRoutes.routes,
    );
  }
}
