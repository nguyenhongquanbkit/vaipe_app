import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vaipe/screens/auth/auth_controller.dart';
import 'package:vaipe/screens/home/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    Get.put(HomeController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final authCtr = Get.find<AuthenticateController>();
    final controller = Get.find<HomeController>();
    var account = authCtr.userInfo.value?.account ?? "---";
    var password = authCtr.userInfo.value?.password ?? "---";
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Text("Account : $account"),
            Text("Password : $password"),
            OutlinedButton(
              onPressed: controller.logout,
              child: const Text("Logout"),
            )
          ],
        ),
      ),
    );
  }
}
