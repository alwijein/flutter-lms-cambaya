import 'package:get/get.dart';

import '../controllers/lapor_controller.dart';

class LaporBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LaporController>(
      () => LaporController(),
    );
  }
}
