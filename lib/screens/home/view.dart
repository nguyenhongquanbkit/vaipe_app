import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:ks_base_getx/screens/auth/controller.dart';
import 'package:ks_base_getx/screens/home/controller.dart';
import 'package:get/get.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          Container(
            child: Text(authCtr.userInfo.value?.account ?? "XXX"),
          ),
          Container(
            child: Text(authCtr.userInfo.value?.fullName ?? "XXX"),
          ),
          OutlinedButton(
            onPressed: controller.logout,
            child: const Text("Logout"),
          )
        ],
      ),
    );
  }
}
