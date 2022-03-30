import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get.dart';
import 'package:ks_base_getx/models/user_info.dart';
import 'package:ks_base_getx/routes/routes.dart';
import 'package:objectid/objectid.dart';

class AuthenticateController extends GetxController {
  TextEditingController accountCtr = TextEditingController();
  TextEditingController passwordCtr = TextEditingController();
  Rxn<UserInfo?> userInfo = Rxn<UserInfo>();
  Future<void> login() async {
    print("login clicked");
    String account = accountCtr.value.text;
    String password = passwordCtr.value.text;
    if (account.isEmpty || password.isEmpty) {
      Get.snackbar("Error", "Account or password empty");
    } else {
      final String userId = ObjectId().hexString;
      var userLogged = UserInfo(
          id: userId,
          account: account,
          password: password,
          fullName: "Đây là fake fullName $userId");
      log(userLogged.toString());
      userInfo.value = userLogged;
      update();
      Get.offAndToNamed(RouteNames.HOME,
          parameters: {'user': userLogged.toJson(), 'params': 'demo params'});
    }
  }

  void logout() {
    userInfo.value = null;
    accountCtr.text = "";
    passwordCtr.text = "";
    update();
  }
}
