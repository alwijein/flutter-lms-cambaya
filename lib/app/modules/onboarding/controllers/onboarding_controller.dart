import 'package:flutter_lms_cambaya/app/data/models/kelas_model.dart';
import 'package:flutter_lms_cambaya/services/services.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  List<KelasModel> kelas = [KelasModel()];

  // @override
  // void onInit() async {
  //   print('success');
  //   await getKelas();
  //   super.onInit();
  // }

  Future<bool> getKelas() async {
    try {
      print('Succcccccccccessss===========-');

      List<KelasModel> kelas = await KelasServices().getKelas();

      print("success");

      this.kelas = kelas;
      return true;
    } catch (e) {
      print("Errornya = $e");
      return false;
    }
  }
}
