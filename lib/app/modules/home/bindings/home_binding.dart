import 'package:flutter_lms_cambaya/app/controllers/auth_controller.dart';
import 'package:flutter_lms_cambaya/app/modules/login/controllers/login_controller.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
