import 'package:flutter_lms_cambaya/app/controllers/auth_controller.dart';
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
    Get.lazyPut<AuthController>(() => AuthController(), fenix: true);
  }
}
