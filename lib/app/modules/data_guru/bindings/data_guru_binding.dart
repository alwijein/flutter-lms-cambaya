import 'package:get/get.dart';

import '../controllers/data_guru_controller.dart';

class DataGuruBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      DataGuruController(),
    );
  }
}
