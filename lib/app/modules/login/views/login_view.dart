import 'package:flutter/material.dart';
import 'package:flutter_lms_cambaya/app/controllers/auth_controller.dart';
import 'package:flutter_lms_cambaya/app/modules/components/components.dart';
import 'package:flutter_lms_cambaya/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:flutter_lms_cambaya/app/routes/app_pages.dart';
import 'package:flutter_lms_cambaya/config/config.dart';
import 'package:flutter_lms_cambaya/constants/constants.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final OnboardingController onboardingController = Get.find();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: SafeArea(
            child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            height: SizeConfig.screenHeight,
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
                          controller: email,
                          press: () {},
                        ),
                        RoundedPasswordField(
                          controller: password,
                          onChanged: () {},
                        ),
                        SizedBox(
                          height: getPropertionateScreenHeight(20),
                        ),
                        DefaultButton(
                          text: Obx(() => controller.isLoading == false
                              ? Text(
                                  'Masuk',
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 20,
                                  ),
                                )
                              : Center(
                                  child: CircularProgressIndicator(
                                    color: kBackgroundColor2,
                                  ),
                                )),
                          press: () async {
                            controller.onLoading();
                            if (await controller.login(
                                    email: email.text,
                                    password: password.text) ==
                                true) {
                              await onboardingController.getKelas();
                              Get.toNamed(Routes.ONBOARDING);
                            } else {
                              Get.snackbar(
                                'Error',
                                'Login Gagal',
                                backgroundColor: kAlert,
                              );
                            }
                            controller.onLoading();
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )));
  }
}
