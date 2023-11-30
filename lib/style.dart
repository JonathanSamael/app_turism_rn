import 'package:flutter/material.dart';

const String fontNameDefault = 'Montserrat';

//Text
const largeTextSize = 26.0;
const mediumTextSize = 20.0;
const bodyTextSize = 16.0;
const textDetails = 14.0;

//Colors
const background = Color(0xFF003566);
const colorTextDetais = Color(0xFFffc300);
const fontBlack = Colors.black87;
const fontWhite = Colors.white;

const appBarTextStyle = TextStyle(
  fontFamily: fontNameDefault,
  fontWeight: FontWeight.w600,
  fontSize: mediumTextSize,
  color: fontBlack,
);

const primaryTitleStyle = TextStyle(
    fontFamily: fontNameDefault,
    fontWeight: FontWeight.w700,
    fontSize: largeTextSize,
    color: fontWhite,
    letterSpacing: 3.0);

const titleTextStyle = TextStyle(
  fontFamily: fontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: largeTextSize,
  color: fontBlack,
);

const bodyTextStyle = TextStyle(
  fontFamily: fontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: bodyTextSize,
  color: fontBlack,
);

const navigationBarStyle = NavigationBarThemeData(
  height: 70.0,
  backgroundColor: background,
  indicatorColor: colorTextDetais,
  surfaceTintColor: background,
  iconTheme: MaterialStatePropertyAll(
    IconThemeData(
      color: colorTextDetais,
    ),
  ),
  labelTextStyle: MaterialStatePropertyAll(
    TextStyle(
      fontFamily: fontNameDefault,
      fontSize: textDetails,
      color: colorTextDetais,
    ),
  ),
);
