import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:objectid/objectid.dart';
import 'package:vaipe/models/user_info.dart';
import 'package:vaipe/routes/routes.dart';

class AuthenticateController extends GetxController {
  TextEditingController accountCtr = TextEditingController();
  TextEditingController passwordCtr = TextEditingController();
  Rxn<UserInfo?> userInfo = Rxn<UserInfo>();

  Future<void> login() async {
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
        fullName: userId,
      );
      log(userLogged.toString());
      userInfo.value = userLogged;
      update();
      Get.offAndToNamed(RouteNames.home,
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
