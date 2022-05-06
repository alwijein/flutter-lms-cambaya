import 'package:get/get.dart';

import 'package:flutter_lms_cambaya/app/modules/data_guru/bindings/data_guru_binding.dart';
import 'package:flutter_lms_cambaya/app/modules/data_guru/views/data_guru_view.dart';
import 'package:flutter_lms_cambaya/app/modules/hasil_ujian/bindings/hasil_ujian_binding.dart';
import 'package:flutter_lms_cambaya/app/modules/hasil_ujian/views/hasil_ujian_view.dart';
import 'package:flutter_lms_cambaya/app/modules/home/bindings/home_binding.dart';
import 'package:flutter_lms_cambaya/app/modules/home/views/home_view.dart';
import 'package:flutter_lms_cambaya/app/modules/jadwal_siswa/bindings/jadwal_siswa_binding.dart';
import 'package:flutter_lms_cambaya/app/modules/jadwal_siswa/views/jadwal_siswa_view.dart';
import 'package:flutter_lms_cambaya/app/modules/lapor/bindings/lapor_binding.dart';
import 'package:flutter_lms_cambaya/app/modules/lapor/views/lapor_view.dart';
import 'package:flutter_lms_cambaya/app/modules/login/bindings/login_binding.dart';
import 'package:flutter_lms_cambaya/app/modules/login/views/login_view.dart';
import 'package:flutter_lms_cambaya/app/modules/onboarding/bindings/onboarding_binding.dart';
import 'package:flutter_lms_cambaya/app/modules/onboarding/views/onboarding_view.dart';
import 'package:flutter_lms_cambaya/app/modules/splash/bindings/splash_binding.dart';
import 'package:flutter_lms_cambaya/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.DATA_GURU,
      page: () => DataGuruView(),
      binding: DataGuruBinding(),
    ),
    GetPage(
      name: _Paths.JADWAL_SISWA,
      page: () => JadwalSiswaView(),
      binding: JadwalSiswaBinding(),
    ),
    GetPage(
      name: _Paths.HASIL_UJIAN,
      page: () => HasilUjianView(),
      binding: HasilUjianBinding(),
    ),
    GetPage(
      name: _Paths.LAPOR,
      page: () => LaporView(),
      binding: LaporBinding(),
    ),
  ];
}
