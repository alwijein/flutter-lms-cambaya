import 'dart:async';

import 'package:flutter_lms_cambaya/app/controllers/auth_controller.dart';
import 'package:flutter_lms_cambaya/app/data/models/user_model.dart';
import 'package:flutter_lms_cambaya/services/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashController extends GetxController {
  final loginState = GetStorage();

  UserModel user = UserModel();

  // @override
  // void onInit() {

  //   print('succes');
  //   super.onInit();
  // }
  void onReady() async {
    super.onReady();
    loading();
  }

  Future<void> loading() async {
    loginState.writeIfNull('isLogin', false);
    if (!loginState.read('isLogin')) {
      Get.offAndToNamed('/login');
      print("ini kosong" + loginState.read('isLogin').toString());
    } else {
      await getUser();
      print(this.user.name);
      Get.offAndToNamed('/home', arguments: this.user);
      print("ini terisi" + loginState.read('isLogin').toString());
    }
    // Get.offAndToNamed('/login');
  }

  Future<bool> getUser() async {
    try {
      print('Succcccccccccessss===========-');
      UserModel user = await AuthServices().getUser();

      print("ini user na user");

      this.user = user;
      return true;
    } catch (e) {
      print("Errornya = $e");
      return false;
    }
  }
}
