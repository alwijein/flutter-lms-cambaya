import 'package:flutter_lms_cambaya/app/data/models/nilai_ujian_model.dart';
import 'package:flutter_lms_cambaya/app/data/services/services.dart';
import 'package:flutter_lms_cambaya/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class HasilUjianController extends GetxController {
  HomeController homeController = Get.put(HomeController());

  List<NilaiUjianModel> nilaiUjianModel = [];
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  Future<List<NilaiUjianModel>> getData() async {
    List<NilaiUjianModel> nilaiUjianModel =
        await NilaiServices().getAll(homeController.semester.toString());
    return nilaiUjianModel;
  }

  // Future<bool> getAll(String semester) async {
  //   try {
  //     print('Succcccccccccessss===========-');
  //     List<NilaiUjianModel> nilaiUjianModel = await NilaiServices().getAll(semester);

  //     print("ini user na user");

  //     this.guruModel = guruModel;
  //     return true;
  //   } catch (e) {
  //     print("Errornya = $e");
  //     return false;
  //   }
  // }
}
