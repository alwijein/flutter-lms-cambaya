import 'package:flutter_lms_cambaya/app/data/models/guru_model.dart';
import 'package:flutter_lms_cambaya/app/data/services/services.dart';
import 'package:get/get.dart';

class DataGuruController extends GetxController {
  final count = 0.obs;

  List<GuruModel> guruModel = [];
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  Future<List<GuruModel>> getData() async {
    List<GuruModel> guruModel = await GuruServices().getAll();
    return guruModel;
  }

  Future<bool> getAll() async {
    try {
      print('Succcccccccccessss===========-');
      List<GuruModel> guruModel = await GuruServices().getAll();

      print("ini user na user");

      this.guruModel = guruModel;
      return true;
    } catch (e) {
      print("Errornya = $e");
      return false;
    }
  }
}
