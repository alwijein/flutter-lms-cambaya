import 'package:flutter_lms_cambaya/app/data/models/jadwal_model.dart';
import 'package:flutter_lms_cambaya/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class JadwalSiswaController extends GetxController {
  var count = 0.obs;

  var index = 1.obs;

  RxList jadwalAll = [].obs;

  HomeController homeController = Get.find();

  DateFormat dateFormat = DateFormat();

  @override
  void onInit() {
    initializeDateFormatting();
    //  DateFormat.yMMMMd('cs');
    dateFormat = DateFormat('EEEE, dd, MMMM', 'id');

    getCount(homeController.jadwalAll);
    super.onInit();
  }

  void getCount(List<JadwalModel> jadwal) {
    for (int i = 0; i < jadwal.length; i++) {
      if (jadwal[i].kodehari == index.value.toString()) {
        jadwalAll.add(JadwalModel(
          id: jadwal[i].id,
          guru: jadwal[i].guru,
          jam: jadwal[i].jam,
          kelas: jadwal[i].kelas,
          kodehari: jadwal[i].kodehari,
          pelajaran: jadwal[i].pelajaran,
          tanggal: jadwal[i].tanggal,
        ));
        count.value = count.value + 1;
        print('berhasil');
      } else {
        print('gagal' + count.value.toString());
      }
      print('panjang data: ' + jadwalAll.length.toString());
    }
  }

  void onSelect(int index) => this.index.value = index;

  void resetCount() {
    count.value = 0;
    jadwalAll.clear();
  }
}
