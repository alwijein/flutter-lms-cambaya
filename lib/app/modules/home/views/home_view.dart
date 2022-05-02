import 'package:carousel_slider/carousel_slider.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lms_cambaya/app/modules/components/components.dart';
import 'package:flutter_lms_cambaya/config/config.dart';
import 'package:flutter_lms_cambaya/constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(defaultPadding),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Jein 👋',
                          style: primaryTextStyle.copyWith(
                              fontWeight: bold, fontSize: 28),
                        ),
                        Text(
                          'Ayo mulai belajar',
                          style: subtitleTextStyle.copyWith(
                              fontWeight: medium, fontSize: 20),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: getPropertionateScreenWidht(45),
                      width: getPropertionateScreenWidht(45),
                      decoration: BoxDecoration(
                        color: kAlert,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: SvgPicture.asset('assets/icons/logout_icon.svg'),
                      ),
                    ),
                    SizedBox(
                      width: getPropertionateScreenWidht(10),
                    ),
                    Container(
                      height: getPropertionateScreenWidht(45),
                      width: getPropertionateScreenWidht(45),
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child:
                            SvgPicture.asset('assets/icons/massage_icon.svg'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: getPropertionateScreenHeight(24),
                ),
                QuoteCard(),
                SizedBox(
                  height: getPropertionateScreenHeight(24),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CardMenu(
                        icon: 'assets/icons/date_icon.svg',
                        title: 'Jadwal Siswa',
                        press: () {
                          Get.toNamed('/jadwal-siswa');
                        },
                      ),
                      CardMenu(
                        icon: 'assets/icons/teacher_icon.svg',
                        title: 'Data Guru',
                        press: () {
                          Get.toNamed('/data-guru');
                        },
                      ),
                      CardMenu(
                        icon: 'assets/icons/teacher_icon.svg',
                        title: 'Jadwal Ujian',
                        press: () {},
                      ),
                      CardMenu(
                        icon: 'assets/icons/grade_icon.svg',
                        title: 'Hasil Ujian',
                        press: () {
                          Get.dialog(
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              color: kPrimaryColor,
                              margin: EdgeInsets.symmetric(
                                  horizontal: getPropertionateScreenWidht(50),
                                  vertical: getPropertionateScreenWidht(150)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  buildSemester(hintText: 'Semester'),
                                  GestureDetector(
                                    onTap: () {
                                      Get.back();
                                      Get.toNamed('/hasil-ujian');
                                    },
                                    child: Icon(
                                      Icons.check_circle_rounded,
                                      color: kBackgroundColor2,
                                      size: getPropertionateScreenWidht(70),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      CardMenu(
                        icon: 'assets/icons/certificate_icon.svg',
                        title: 'Nilai Lapor',
                        press: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: getPropertionateScreenHeight(24),
                ),
                Stack(
                  children: [
                    Container(
                      height: getPropertionateScreenHeight(400),
                      width: double.infinity,
                      // color: kAlert,
                      // color: kPrimaryColor,
                    ),
                    Positioned(
                      top: 100,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: getPropertionateScreenWidht(24),
                          vertical: getPropertionateScreenWidht(50),
                        ),
                        height: getPropertionateScreenWidht(220),
                        width: getPropertionateScreenWidht(326),
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Matematika',
                                  style: whiteTextStyle.copyWith(
                                    fontWeight: bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  '07:00 - 09:00',
                                  style: whiteTextStyle.copyWith(
                                    fontWeight: bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: getPropertionateScreenWidht(60),
                      child: SvgPicture.asset(
                          'assets/images/jadwal_illustration.svg'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextFieldContainer buildSemester({
    // required TextEditingController input,
    // required List<JasaPengerjaanModel> jasaPengerjaanIkan,
    required String hintText,
  }) {
    return TextFieldContainer(
      isWrapSize: true,
      sizeWidht: 250,
      child: DropdownButtonFormField2(
        iconEnabledColor: kPrimaryColor,
        iconDisabledColor: kSecondaryColor,
        icon: SvgPicture.asset('assets/icons/drop_down_icon.svg'),
        iconOnClick: SvgPicture.asset(
          'assets/icons/drop_up_icon.svg',
          color: kSecondaryColor,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: subtitleTextStyle.copyWith(
            fontSize: 14,
          ),
        ),
        isExpanded: true,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        items: controller.items
            .map((item) => DropdownMenuItem(
                  value: item,
                  child: Text(
                    item,
                    style: primaryTextStyle,
                  ),
                  onTap: () {
                    // ..
                  },
                ))
            .toList(),
        onChanged: (value) {},
        onSaved: (value) {
          // idJenisPengerjaanIkan = selected;
        },
      ),
    );
  }
}

class CardMenu extends StatelessWidget {
  const CardMenu({
    Key? key,
    required this.title,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String title, icon;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.only(right: getPropertionateScreenWidht(15)),
        child: Column(
          children: [
            Container(
              height: getPropertionateScreenWidht(70),
              width: getPropertionateScreenWidht(70),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: SvgPicture.asset(icon),
              ),
            ),
            Text(
              title,
              style: subtitleTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {
  const QuoteCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      padding: EdgeInsets.symmetric(
          vertical: getPropertionateScreenHeight(28),
          horizontal: getPropertionateScreenWidht(3)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            kPrimaryLightColor,
            kPrimaryColor,
          ],
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: SvgPicture.asset('assets/images/quote_illustration1.svg'),
          ),
          Expanded(
            flex: 2,
            child: Text(
              'Pendidikan adalah senjata paling ampuh yang bisa digunakan untuk mengubah dunia',
              style: whiteTextStyle.copyWith(
                fontWeight: bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
