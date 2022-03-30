import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:ks_base_getx/screens/auth/controller.dart';
import 'package:ks_base_getx/screens/home/controller.dart';

class LoginScreen extends GetView<AuthenticateController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(
            height: 100,
          ),
          Container(
            child: const Text("Demo getX structure"),
          ),
          TextField(
            keyboardType: TextInputType.multiline,
            controller: controller.accountCtr,
            decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amberAccent, width: 1.0),
                ),
                hintText: "account"),
          ),
          const SizedBox(
            height: 30,
          ),
          TextField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            controller: controller.passwordCtr,
            decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amberAccent, width: 1.0),
                ),
                hintText: "password"),
          ),
          OutlinedButton(
            onPressed: controller.login,
            child: const Text("Login"),
          )
        ],
      ),
    );
  }
}
