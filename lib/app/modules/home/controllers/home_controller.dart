import 'package:flutter_lms_cambaya/app/data/models/absen_model.dart';
import 'package:flutter_lms_cambaya/app/data/models/grub_model.dart';
import 'package:flutter_lms_cambaya/app/data/models/jadwal_model.dart';
import 'package:flutter_lms_cambaya/app/data/models/lapor_model.dart';
import 'package:flutter_lms_cambaya/app/data/models/user_model.dart';
import 'package:flutter_lms_cambaya/app/data/services/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  final items = ['1(Ganjil)', '2(Genap)'].obs;

  final semester = ''.obs;

  void initSemester(String value) => semester.value = value;

  GetStorage loginState = GetStorage();

  UserModel userModel = UserModel();

  List<JadwalModel> jadwalModel = [];

  List<JadwalModel> jadwalAll = List.empty();

  LaporModel laporModel = LaporModel(
    ekstrakurikulerModel: [],
    nilaiUjianModel: [],
    prestasiModel: [],
    sikapModel: [],
    absenModel: AbsenModel(),
  );

  List<GrubModel> grubModel = [];

  final isEmpty = false.obs;

  @override
  void onInit() {
    userModel = Get.arguments[0];
    jadwalModel = Get.arguments[1];
    if (jadwalModel != 0) {
      isEmpty.value = false;
    } else {
      isEmpty.value = true;
    }
    print(jadwalModel.length);

    super.onInit();
  }

  Future<bool> logout() async {
    try {
      print('Succcccccccccessss===========-');
      bool isLogout = await AuthServices().logout();

      print("ini user na user");

      loginState.write('token', 'kosong');
      loginState.write('isLogin', false);
      return isLogout;
    } catch (e) {
      print("Errornya = $e");
      return false;
    }
  }

  Future<bool> getAllJadwal(String status) async {
    try {
      print('Succcccccccccessss===========-');
      List<JadwalModel> jadwalModel = await JadwalServices().getAll(status);

      print("ini user na user");

      this.jadwalAll = jadwalModel;
      return true;
    } catch (e) {
      print("Errornya = $e");
      return false;
    }
  }

  Future<bool> getAll() async {
    try {
      print('Succcccccccccessss===========-');
      LaporModel laporModel = await LaporServices().getAll(this.semester.value);

      print("ini user na user");

      this.laporModel = laporModel;
      return true;
    } catch (e) {
      print("Errornya = $e");
      return false;
    }
  }

  Future<bool> getGrubChat() async {
    try {
      print('Succcccccccccessss===========-');
      List<GrubModel> grubModel = await ChatServices().getAll();
      print("ini user na user");

      this.grubModel = grubModel;
      return true;
    } catch (e) {
      print("Errornya = $e");
      return false;
    }
  }
}
