import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:vaipe/routes/app_routes.dart';
import 'package:vaipe/routes/routes.dart';
import 'package:vaipe/screens/auth/auth_controller.dart';

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
      initialRoute: RouteNames.login,
      getPages: AppRoutes.routes,
    );
  }
}
