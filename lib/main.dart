import 'package:corona_stats/ui/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'utils/extensions.dart';

final _appTheme = _getAppTheme();
ThemeData _getAppTheme() {
  final ThemeData base = ThemeData.fallback();
  return base.copyWith(
      primaryColor: ColorExtension.appRed,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: _appTextTheme(base)
  );
}
TextTheme _appTextTheme(ThemeData base) {
  return base.textTheme.apply(
      fontFamily: "Product Sans"
  );
}

void main() {
  runApp(MaterialApp(
    theme: _appTheme,
    home: HomeScreen(),
  ));
}