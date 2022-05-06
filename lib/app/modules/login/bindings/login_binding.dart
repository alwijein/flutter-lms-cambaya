import 'package:flutter_lms_cambaya/app/controllers/auth_controller.dart';
import 'package:flutter_lms_cambaya/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
    Get.lazyPut<AuthController>(() => AuthController(), fenix: true);
    Get.lazyPut<OnboardingController>(() => OnboardingController(),
        fenix: true);
  }
}
