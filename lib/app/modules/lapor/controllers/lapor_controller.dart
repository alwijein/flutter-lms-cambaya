import 'package:get/get.dart';

class LaporController extends GetxController {
  final isCheck = ''.obs;

  void onPengetahuan(value) => isCheck.value = value;
}
