import 'package:flutter_lms_cambaya/app/controllers/auth_controller.dart';
import 'package:flutter_lms_cambaya/app/data/models/user_model.dart';
import 'package:flutter_lms_cambaya/app/data/services/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  var user = UserModel();

  var isLoading = false.obs;

  var isShow = true.obs;

  final loginState = GetStorage();

  void showPass() => isShow.value = !isShow.value;

  Future<bool> login({
    required String email,
    required String password,
  }) async {
    try {
      print('Succcccccccccessss===========-');

      UserModel user = await AuthServices().login(
        email: email,
        password: password,
      );

      loginState.write('token', user.token);
      loginState.write('isLogin', true);

      print("ini tokennya: " + loginState.read('token'));

      this.user = user;
      // print('ini usernya: ' + this.user.name.toString());

      return true;
    } catch (e) {
      print("Errornya = $e");
      return false;
    }
  }

  void onLoading() => isLoading.value = !isLoading.value;
}
