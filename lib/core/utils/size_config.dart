import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }
}

double getScreenHeight(double inputHeight) {
  double? screenHeight = SizeConfig.screenHeight;

  return (inputHeight / 926.0) * screenHeight!;
}

double getScreenWidth(double inputWidth) {
  double? screenWidth = SizeConfig.screenWidth;
  return (inputWidth / 428.0) * screenWidth!;
}

// double getFontSize(double inputFontSize) {
//   double? screenWidth = SizeConfig.screenWidth;
//   // You can adjust the reference width based on your design requirements
//   return (inputFontSize / 428.0) * screenWidth!;
// }
