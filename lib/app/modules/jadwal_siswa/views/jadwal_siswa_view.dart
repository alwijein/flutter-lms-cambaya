import 'package:flutter/material.dart';
import 'package:flutter_lms_cambaya/app/data/models/jadwal_model.dart';
import 'package:flutter_lms_cambaya/app/modules/home/controllers/home_controller.dart';
import 'package:flutter_lms_cambaya/config/config.dart';
import 'package:flutter_lms_cambaya/constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_lms_cambaya/utils/utils.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/jadwal_siswa_controller.dart';

class JadwalSiswaView extends GetView<JadwalSiswaController> {
  final HomeController homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    String status = Get.arguments;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jadwal $status',
                        style: subtitleTextStyle.copyWith(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        controller.dateFormat.format(DateTime.now()).toString(),
                        // FormatDate.formatDateBasic(DateTime.now()).toString(),
                        style: primaryTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: bold,
                        ),
                      ),
                      SizedBox(
                        height: getPropertionateScreenWidht(24),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            CardDay(
                              index: 1,
                              day: 'Senin',
                            ),
                            SizedBox(
                              width: getPropertionateScreenWidht(20),
                            ),
                            CardDay(
                              index: 2,
                              day: 'Selasa',
                            ),
                            SizedBox(
                              width: getPropertionateScreenWidht(20),
                            ),
                            CardDay(
                              index: 3,
                              day: 'Rabu',
                            ),
                            SizedBox(
                              width: getPropertionateScreenWidht(20),
                            ),
                            CardDay(
                              index: 4,
                              day: 'Kamis',
                            ),
                            SizedBox(
                              width: getPropertionateScreenWidht(20),
                            ),
                            CardDay(
                              index: 5,
                              day: "Jum'at",
                            ),
                            SizedBox(
                              width: getPropertionateScreenWidht(20),
                            ),
                            CardDay(
                              index: 6,
                              day: "Sabtu",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(defaultPadding),
                  decoration: BoxDecoration(
                    color: kBackgroundColor2,
                  ),
                  child: Obx(
                    () => GridView.builder(
                      itemCount: controller.count.value,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                      ),
                      itemBuilder: (_, count) {
                        return CardJadwal(
                          jadwalModel: controller.jadwalAll[count],
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardDay extends StatelessWidget {
  const CardDay({
    Key? key,
    required this.day,
    required this.index,
  }) : super(key: key);

  final String day;
  final int index;

  @override
  Widget build(BuildContext context) {
    JadwalSiswaController controller = Get.find();
    HomeController homeController = Get.find();
    return GestureDetector(
      onTap: () {
        controller.onSelect(index);
        controller.resetCount();
        controller.getCount(homeController.jadwalAll);
      },
      child: Obx(() => Container(
            height: getPropertionateScreenWidht(79),
            width: getPropertionateScreenWidht(85),
            decoration: BoxDecoration(
              color:
                  controller.index == index ? kPrimaryColor : kBackgroundColor2,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: kSecondaryColor.withOpacity(0.4),
                width: getPropertionateScreenWidht(1),
              ),
            ),
            child: Center(
              child: Text(
                day,
                style: primaryTextStyle.copyWith(
                  fontWeight: bold,
                  color: controller.index == index
                      ? kBackgroundColor2
                      : kPrimaryTextColor,
                  fontSize: 20,
                ),
              ),
            ),
          )),
    );
  }
}

class CardJadwal extends StatelessWidget {
  const CardJadwal({
    Key? key,
    required this.jadwalModel,
  }) : super(key: key);

  final JadwalModel jadwalModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getPropertionateScreenWidht(10),
        vertical: getPropertionateScreenWidht(15),
      ),
      width: getPropertionateScreenWidht(154),
      height: getPropertionateScreenWidht(122),
      decoration: BoxDecoration(
        color: cardGreenColor1,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            jadwalModel.pelajaran?.mataPelajaran ?? 'Kosong',
            style: primaryGreen.copyWith(
              fontWeight: bold,
              fontSize: 18,
            ),
          ),
          Text(
            (jadwalModel.tanggal != null
                    ? jadwalModel.tanggal
                    : jadwalModel.guru?.nama)
                .toString(),
            style: subtitleGreen.copyWith(
              fontSize: 18,
            ),
          ),
          Text(
            jadwalModel.jam ?? 'Kosong',
            style: subtitleGreen.copyWith(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
