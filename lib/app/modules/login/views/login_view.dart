import 'package:flutter/material.dart';
import 'package:flutter_lms_cambaya/app/modules/components/components.dart';
import 'package:flutter_lms_cambaya/config/config.dart';
import 'package:flutter_lms_cambaya/constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: SafeArea(
            child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Image.asset('assets/images/logo.png'),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kBackgroundColor1,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: getPropertionateScreenWidht(24),
                    vertical: getPropertionateScreenHeight(30),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Login',
                        style: primaryTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: 36,
                        ),
                      ),
                      SizedBox(
                        height: getPropertionateScreenHeight(20),
                      ),
                      RoundedInputField(
                        hintText: 'NIS',
                        press: () {},
                      ),
                      RoundedPasswordField(
                        onChanged: () {},
                      ),
                      SizedBox(
                        height: getPropertionateScreenHeight(20),
                      ),
                      DefaultButton(
                        text: Text(
                          'Masuk',
                          style: whiteTextStyle.copyWith(
                            fontSize: 20,
                          ),
                        ),
                        press: () {
                          Get.toNamed('/onboarding');
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )));
  }
}
