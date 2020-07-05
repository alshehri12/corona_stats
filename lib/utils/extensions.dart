import 'package:flutter/material.dart';

extension ColorExtension on Color {

  static Color appRed = Color(_getColorFromHex("#FA5252"));
  static Color appLightPink = Color(_getColorFromHex("#D81E34"));
  static Color appWhite1 = Color(_getColorFromHex("#F4F4F4"));
  static Color appDarkGreen = Color(_getColorFromHex("#3D9448"));
  static Color appYellow = Color(_getColorFromHex("#FFC166"));
  static Color appLightGreen = Color(_getColorFromHex("#8ACA2B"));
  static Color appPink = Color(_getColorFromHex("#F576C9"));
  static Color appBlue = Color(_getColorFromHex("#2748A9"));
  static Color appSilver = Color(_getColorFromHex("#ADB9CA"));
  static Color appWhite2 = Color(_getColorFromHex("#F8F9FA"));
  static Color appDarkGrey = Color(_getColorFromHex("#4B4A50"));
  static Color appLightGrey = Color(_getColorFromHex("#AFB8BE"));
  static Color appGreen = Color(_getColorFromHex("#34C360"));
  static Color appWhite3 = Color(_getColorFromHex("#E5E5E5"));
  static Color appGrey = Color(_getColorFromHex("#696969"));
  static Color appBackground = Color(_getColorFromHex("#F2F6F8"));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}