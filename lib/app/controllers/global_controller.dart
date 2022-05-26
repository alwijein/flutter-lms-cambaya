import 'package:flutter_lms_cambaya/app/data/models/jadwal_model.dart';
import 'package:flutter_lms_cambaya/app/data/services/services.dart';
import 'package:flutter_lms_cambaya/utils/utils.dart';
import 'package:get/get.dart';

class GlobalController extends GetxController {
  List<JadwalModel> jadwalModel = List.empty();
  Future<bool> getJadwalToday({
    required hari,
  }) async {
    try {
      print('Succcccccccccessss===========-');
      List<JadwalModel> jadwalModel = await JadwalServices().getJadwalToday(
        hari: hari,
      );

      print("ini user na user");

      this.jadwalModel = jadwalModel;
      return true;
    } catch (e) {
      print("Errornya = $e");
      return false;
    }
  }

  int getDateNow() {
    int codeToday = 0;
    switch (FormatDate.fromatToday(DateTime.now())) {
      case 'Monday':
        codeToday = 1;
        break;
      case 'Tuesday':
        codeToday = 2;
        break;
      case 'Wednesday':
        codeToday = 3;
        break;

      case 'Thursday':
        codeToday = 4;
        break;

      case 'Friday':
        codeToday = 5;
        break;

      case 'Saturday':
        codeToday = 6;
        break;

      case 'Sunday':
        codeToday = 7;
        break;
    }
    return codeToday;
  }
}
