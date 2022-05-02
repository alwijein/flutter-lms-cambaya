import 'package:flutter/material.dart';
import 'package:flutter_lms_cambaya/config/config.dart';
import 'package:flutter_lms_cambaya/constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/jadwal_siswa_controller.dart';

class JadwalSiswaView extends GetView<JadwalSiswaController> {
  @override
  Widget build(BuildContext context) {
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
                        'Jadwal Siswa',
                        style: subtitleTextStyle.copyWith(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Rabu, 27 April',
                        style: primaryTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: bold,
                        ),
                      ),
                      SizedBox(
                        height: getPropertionateScreenWidht(24),
                      ),
                      Row(
                        children: [
                          CardDay(
                            day: 'Senin',
                            press: controller.onSelect,
                          ),
                        ],
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
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CardJadwal(),
                          CardJadwal(),
                        ],
                      ),
                    ],
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
    required this.press,
  }) : super(key: key);

  final String day;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    JadwalSiswaController controller = Get.find();
    return GestureDetector(
      onTap: press,
      child: Obx(() => Container(
            height: getPropertionateScreenWidht(79),
            width: getPropertionateScreenWidht(85),
            decoration: BoxDecoration(
              color: controller.isSelect == true
                  ? kPrimaryColor
                  : kBackgroundColor2,
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
                  color: controller.isSelect == true
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
  }) : super(key: key);

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
            'Matematika',
            style: primaryGreen.copyWith(
              fontWeight: bold,
              fontSize: 18,
            ),
          ),
          Text(
            'Sutono',
            style: subtitleGreen.copyWith(
              fontSize: 18,
            ),
          ),
          Text(
            '09:00 - 10:00',
            style: subtitleGreen.copyWith(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
