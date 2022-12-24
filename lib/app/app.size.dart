import 'package:flutter/material.dart';

/// * This is the size config class where you can set your screen size
/// * and get the proportionate height and width as per your screen size
/// * You can also set your defaultSize so that you can use it for your text
/// * styles also
/// * For example if you want to set your defaultSize to be 10 so you can set
/// * it to 10 and then you can use it like this
/// *   fontSize: getProportionateScreenWidth(10)

class SizeConfig {
  static late MediaQueryData? mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  double? getScreenWidth() => screenWidth;
  double? getScreenHeight() => screenHeight;

  void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData!.size.width;
    screenHeight = mediaQueryData!.size.height;
    orientation = mediaQueryData!.orientation;
  }
}

// * Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  final double? screenHeight = SizeConfig.screenHeight;
  return (inputHeight / 800.0) * screenHeight!;
}

// * Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  final double? screenWidth = SizeConfig.screenWidth;
  return (inputWidth / 400.0) * screenWidth!;
}
