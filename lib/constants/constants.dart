import 'package:flutter/material.dart';
import 'package:flutter_lms_cambaya/config/config.dart';
import 'package:google_fonts/google_fonts.dart';

// For App Color
const Color kPrimaryColor = Color(0xFF7367F0);
const Color kPrimaryLightColor = Color(0xFF978EF3);
const Color kSecondaryColor = Color(0xFF999999);
const Color kBackgroundColor1 = Color(0xFFF8F8F8);
const Color kBackgroundColor2 = Color(0xFFFFFFFF);
const Color kAlert = Color(0xFFED6363);
const Color kSuccess = Color(0xFF28C76F);

//For Text Color
const Color kPrimaryTextColor = Color(0xFF565656);
const Color kSubtitleTextColor = Color(0xFFA1A1A1);

// Costum text style
TextStyle primaryTextStyle = GoogleFonts.redHatDisplay(
  color: kPrimaryTextColor,
);

TextStyle primaryLightTextStyle = GoogleFonts.redHatDisplay(
  color: kPrimaryLightColor,
);

TextStyle subtitleTextStyle = GoogleFonts.redHatDisplay(
  color: kSubtitleTextColor,
);

TextStyle purpleTextStyle = GoogleFonts.redHatDisplay(
  color: kPrimaryColor,
);

TextStyle whiteTextStyle = GoogleFonts.redHatDisplay(
  color: kBackgroundColor2,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;

// padding
double defaultPadding = getPropertionateScreenWidht(24);

// Additional Config
const Color cardGreenColor1 = Color(0xFFADF9CF);

TextStyle primaryGreen = GoogleFonts.redHatDisplay(
  color: Color(0xFF017D38),
  fontWeight: semiBold,
);

TextStyle subtitleGreen = GoogleFonts.redHatDisplay(
  color: Color(0xFF27AE60),
  fontWeight: regular,
);

const Color cardBlueColor1 = Color(0xFFADD4F9);

TextStyle primaryBlue = GoogleFonts.redHatDisplay(
  color: Color(0xFF0556A4),
  fontWeight: semiBold,
);

TextStyle subtitleBlue = GoogleFonts.redHatDisplay(
  color: Color(0xFF2F80ED),
  fontWeight: regular,
);

const Color cardYellowColor1 = Color(0xFFEAF9AD);

TextStyle primaryYellow = GoogleFonts.redHatDisplay(
  color: Color(0xFF7B7D01),
  fontWeight: semiBold,
);

TextStyle subtitleYellow = GoogleFonts.redHatDisplay(
  color: Color(0xFF849937),
  fontWeight: regular,
);

const Color cardRedColor1 = Color(0xFFF9BBAD);

TextStyle primaryRed = GoogleFonts.redHatDisplay(
  color: Color(0xFF7C1700),
  fontWeight: semiBold,
);

TextStyle subtitleRed = GoogleFonts.redHatDisplay(
  color: Color(0xFFE75B3C),
  fontWeight: regular,
);

const Color cardPurpleColor1 = Color(0xFFC1ADF9);

TextStyle primaryPurple = GoogleFonts.redHatDisplay(
  color: Color(0xFF2C00A8),
  fontWeight: semiBold,
);

TextStyle subtitlePurple = GoogleFonts.redHatDisplay(
  color: Color(0xFF6332ED),
  fontWeight: regular,
);

const Color cardLimeColor1 = Color(0xFFADF9E6);

TextStyle primaryLime = GoogleFonts.redHatDisplay(
  color: Color(0xFF008362),
  fontWeight: semiBold,
);

TextStyle subtitleLime = GoogleFonts.redHatDisplay(
  color: Color(0xFF00C896),
  fontWeight: regular,
);

List<BoxShadow> softShadow = [
  BoxShadow(
    color: Colors.grey.withOpacity(0.3),
    spreadRadius: 3,
    blurRadius: 4,
    offset: Offset(0, -5), // changes position of shadow
  )
];
