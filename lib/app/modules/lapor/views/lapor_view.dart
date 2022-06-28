import 'package:flutter/material.dart';
import 'package:flutter_lms_cambaya/app/data/models/nilai_ujian_model.dart';
import 'package:flutter_lms_cambaya/app/data/models/pelajaran_model.dart';
import 'package:flutter_lms_cambaya/app/modules/home/controllers/home_controller.dart';
import 'package:flutter_lms_cambaya/app/modules/lapor/views/components/ekstrakurikuler.dart';
import 'package:flutter_lms_cambaya/app/modules/lapor/views/components/ketidakhadiran.dart';
import 'package:flutter_lms_cambaya/app/modules/lapor/views/components/nilai_pengetahuan.dart';
import 'package:flutter_lms_cambaya/app/modules/lapor/views/components/prestasi.dart';
import 'package:flutter_lms_cambaya/app/modules/lapor/views/components/sikap.dart';
import 'package:flutter_lms_cambaya/config/config.dart';
import 'package:flutter_lms_cambaya/constants/constants.dart';

import 'package:get/get.dart';

import '../controllers/lapor_controller.dart';

class LaporView extends GetView<LaporController> {
  final HomeController homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rapor'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'A. Sikap',
                  style: primaryTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: getPropertionateScreenWidht(18)),
                ),
                SizedBox(
                  height: getPropertionateScreenHeight(24),
                ),
                Sikap(sikapModel: homeController.laporModel.sikapModel),
                Text(
                  'B. Pengetahuan',
                  style: primaryTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: getPropertionateScreenWidht(18)),
                ),
                SizedBox(
                  height: getPropertionateScreenHeight(24),
                ),
                NilaiPengetahuan(
                  title: 'Pengetahuan',
                  nilaiUjianModel: homeController.laporModel.nilaiUjianModel,
                ),
                Text(
                  'C. Keterampilan',
                  style: primaryTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: getPropertionateScreenWidht(18)),
                ),
                SizedBox(
                  height: getPropertionateScreenHeight(24),
                ),
                NilaiPengetahuan(
                  title: 'Keterampilan',
                  nilaiUjianModel: homeController.laporModel.nilaiUjianModel,
                ),
                Text(
                  'D. Ekstrakurikuler',
                  style: primaryTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: getPropertionateScreenWidht(18)),
                ),
                SizedBox(
                  height: getPropertionateScreenHeight(24),
                ),
                Ekstrakurikuler(
                  eksModel: homeController.laporModel.ekstrakurikulerModel,
                ),
                Text(
                  'E. Prestasi',
                  style: primaryTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: getPropertionateScreenWidht(18)),
                ),
                SizedBox(
                  height: getPropertionateScreenHeight(24),
                ),
                Prestasi(
                  prestasiModel: homeController.laporModel.prestasiModel,
                ),
                Text(
                  'F. Ketidakhadiran',
                  style: primaryTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: getPropertionateScreenWidht(18)),
                ),
                SizedBox(
                  height: getPropertionateScreenHeight(24),
                ),
                Ketidakhadiran(
                  absenModel: homeController.laporModel.absenModel,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DataNilaiPengetahuan extends StatelessWidget {
  const DataNilaiPengetahuan({
    Key? key,
    required this.nilaiUjianModel,
    required this.title,
  }) : super(key: key);

  final NilaiUjianModel nilaiUjianModel;
  final title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: getPropertionateScreenHeight(10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Mata Pelajaran',
                style: subtitleTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                width: getPropertionateScreenWidht(20),
              ),
              Text(
                nilaiUjianModel.pelajaran!.mataPelajaran.toString(),
                style: subtitleTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'Nilai',
                style: subtitleTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                width: getPropertionateScreenWidht(20),
              ),
              Text(
                nilaiUjianModel.nilai.toString(),
                style: subtitleTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'Predikat',
                style: subtitleTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                width: getPropertionateScreenWidht(20),
              ),
              Text(
                nilaiUjianModel.predikat.toString(),
                style: subtitleTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Text(
            title == 'Pengetahuan'
                ? nilaiUjianModel.deskPengetahuan.toString()
                : nilaiUjianModel.deskKeterampilan.toString(),
            style: subtitleTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: getPropertionateScreenHeight(10),
          ),
          Divider(
            height: 1,
          ),
        ],
      ),
    );
  }
}

class CardLapor extends StatelessWidget {
  const CardLapor({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: getPropertionateScreenHeight(24),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: getPropertionateScreenHeight(20),
        vertical: getPropertionateScreenWidht(10),
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kBackgroundColor2,
        boxShadow: softShadow,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: items,
      ),
    );
  }
}
