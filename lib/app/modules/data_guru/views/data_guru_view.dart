import 'package:flutter/material.dart';
import 'package:flutter_lms_cambaya/config/config.dart';
import 'package:flutter_lms_cambaya/constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/data_guru_controller.dart';

class DataGuruView extends GetView<DataGuruController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: SvgPicture.asset(
                  'assets/images/teacher_illustration.svg',
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                flex: 10,
                child: Container(
                  padding: EdgeInsets.all(defaultPadding),
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: getPropertionateScreenWidht(20),
                        ),
                        height: getPropertionateScreenWidht(60),
                        decoration: BoxDecoration(
                          color: kBackgroundColor2,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sutono',
                              style: primaryTextStyle.copyWith(
                                fontWeight: bold,
                                fontSize: 24,
                              ),
                            ),
                            Text(
                              'matematika',
                              style: subtitleTextStyle.copyWith(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
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
