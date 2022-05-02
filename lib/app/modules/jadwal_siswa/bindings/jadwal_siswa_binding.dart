import 'package:get/get.dart';

import '../controllers/jadwal_siswa_controller.dart';

class JadwalSiswaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JadwalSiswaController>(
      () => JadwalSiswaController(),
    );
  }
}
