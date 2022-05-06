import 'package:flutter_lms_cambaya/app/controllers/auth_controller.dart';
import 'package:flutter_lms_cambaya/app/data/models/user_model.dart';
import 'package:flutter_lms_cambaya/constants/constants.dart';
import 'package:flutter_lms_cambaya/services/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  final items = ['items1', 'items2'].obs;

  GetStorage loginState = GetStorage();

  UserModel userModel = UserModel();

  @override
  void onInit() {
    userModel = Get.arguments;
    print(loginState.read('token'));

    super.onInit();
  }

  Future<bool> logout() async {
    try {
      print('Succcccccccccessss===========-');
      bool isLogout = await AuthServices().logout();

      print("ini user na user");

      loginState.write('token', 'kosong');
      loginState.write('isLogin', false);
      return isLogout;
    } catch (e) {
      print("Errornya = $e");
      return false;
    }
  }
}
