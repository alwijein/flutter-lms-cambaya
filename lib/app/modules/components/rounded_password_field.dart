part of 'components.dart';

class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField({
    Key? key,
    required this.controller,
    required this.onChanged,
  }) : super(key: key);

  final Function() onChanged;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.put(LoginController());

    return TextFieldContainer(
      isWrapSize: false,
      child: Obx(() => TextField(
            obscureText: loginController.isShow.value,
            style: primaryTextStyle,
            decoration: InputDecoration(
              suffix: GestureDetector(
                onTap: () {
                  loginController.showPass();
                },
                child: Icon(
                  loginController.isShow.value
                      ? Icons.visibility_off
                      : Icons.visibility,
                  color: kPrimaryColor,
                ),
              ),
              hintText: "Password",
              hintStyle: subtitleTextStyle,
              border: InputBorder.none,
            ),
            controller: controller,
          )),
    );
  }
}
