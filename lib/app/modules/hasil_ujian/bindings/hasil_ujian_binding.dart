import 'package:get/get.dart';

import '../controllers/hasil_ujian_controller.dart';

class HasilUjianBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HasilUjianController>(
      () => HasilUjianController(),
    );
  }
}
