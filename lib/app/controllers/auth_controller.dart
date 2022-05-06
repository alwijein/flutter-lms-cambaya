import 'package:flutter_lms_cambaya/app/data/models/user_model.dart';
import 'package:flutter_lms_cambaya/services/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthController extends GetxController {
  final count = 0.obs;

  var user = UserModel();

  final loginState = GetStorage();

  // Future<bool> login({
  //   required String email,
  //   required String password,
  // }) async {
  //   try {
  //     print('Succcccccccccessss===========-');

  //     UserModel user = await AuthServices().login(
  //       email: email,
  //       password: password,
  //     );

  //     loginState.write('token', user.token);
  //     loginState.write('isLogin', true);

  //     print("ini tokennya: " + loginState.read('token'));

  //     this.user = user;
  //     // print('ini usernya: ' + this.user.name.toString());

  //     return true;
  //   } catch (e) {
  //     print("Errornya = $e");
  //     return false;
  //   }
  // }

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
