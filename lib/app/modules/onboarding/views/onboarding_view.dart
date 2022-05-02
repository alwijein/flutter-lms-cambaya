import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lms_cambaya/app/modules/components/components.dart';
import 'package:flutter_lms_cambaya/config/config.dart';
import 'package:flutter_lms_cambaya/constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(defaultPadding),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SvgPicture.asset('assets/images/onboarding-illustration.svg'),
                SizedBox(
                  height: getPropertionateScreenHeight(24),
                ),
                Text(
                  'Pilih Kelas Sesuai Kelas Anda',
                  style: whiteTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: getPropertionateScreenHeight(18),
                ),
                buildKelas(
                  icon: SvgPicture.asset('assets/icons/drop_down_icon.svg'),
                  hintText: 'Pilih Kelas',
                ),
                SizedBox(
                  height: getPropertionateScreenHeight(24),
                ),
                DefaultButtonOutlined(
                  text: Text(
                    'Lanjutkan',
                    style: whiteTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                  ),
                  isInfinity: false,
                  width: getPropertionateScreenWidht(200),
                  press: () {
                    Get.offNamed('/home');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextFieldContainer buildKelas({
    // required TextEditingController input,
    // required List<JasaPengerjaanModel> jasaPengerjaanIkan,
    required Widget icon,
    required String hintText,
  }) {
    return TextFieldContainer(
      isWrapSize: false,
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
