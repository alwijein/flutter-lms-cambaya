part of 'theme.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: kBackgroundColor1,
    appBarTheme: AppBarTheme(
      iconTheme: iconThemeData(),
      backgroundColor: kBackgroundColor2,
      titleTextStyle: primaryTextStyle.copyWith(
        fontSize: 18,
      ),
    ),
  );
}

IconThemeData iconThemeData() {
  return IconThemeData(
    color: kPrimaryTextColor,
  );
}
