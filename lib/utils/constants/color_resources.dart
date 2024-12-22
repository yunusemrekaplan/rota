import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorResources {
  static const Color appColor = Color(0xFFFDD835);
  static const Color backGroundColorLight = Color(0xFFFFFFFF);
  static const Color backGroundColorDark = Color(0xFF757575);
  static const Color onBackGroundColorLight = Color(0xFFF0F0F0);
  static const Color onBackGroundColorDark = Color(0xFF3d3d3d);
  static Color progressBarColorLight = Colors.yellow[600]!;
  static Color progressBarColorDark = Colors.yellow[700]!;
  static const Color cardColorLight = backGroundColorLight;
  static const Color cardColorDark = Color(0xFF000000);
  static const Color textColorLight = Color(0xFF000000);
  static const Color textColorDark = Color(0xFFFFFFFF);
  static const Color favBarColor = appColor;
  static const Color favTextColor = Color(0xFF7a8cb7);
  static const Color favBarIncreaseColor = Color(0xFF4caf50);
  static const Color favBarDecreaseColor = Color(0xFFe57373);
  static const Color fadedTextColorLight = Color(0xFF7F7F7F);
  static const Color fadedTextColorDark = Color(0xFF878787);
  static const Color dividerColorLight = Color(0xFFF0F0F0);
  static const Color dividerColorDark = Color(0xFF424242);

  //static const Color activeTextColorLight = appColor;
  static const Color iconColorLight = Color(0xFF000000);
  static const Color iconColorDark = Color(0xFFFFFFFF);
  static const Color fadedIconColorLight = Color(0xFF7F7F7F);
  static const Color fadedIconColorDark = Color(0xFFC2C2C2);
  static const Color borderColorLight = Color(0xFFC1C1C1);
  static const Color borderColorDark = Color(0xFF4F4F4F);
  static const Color increaseColorLight = Color(0xFF077712);
  static const Color increaseColorDark = Color(0xFF077712);
  static const Color decreaseColorLight = Color(0xFFC60000);
  static const Color decreaseColorDark = Color(0xFFC60000);
  static const Color hintColorLight = Color(0xFF9E9E9E);
  static const Color hintColorDark = Color(0xFFC7C7C7);
  static const Color instantChangeColorLight = Color(0xFFe1700d);
  static const Color instantChangeColorDark = Color(0xFFe1700d);
  static const Color passiveIndicatorLight = Color.fromRGBO(193, 193, 193, 65);

  //static const Color activeIndicatorLight = appColor;
  //static const Color selectedCityList = appColor;

  //more color
  static const Color moreScreenWidget1 = Color(0xFFBF8867);
  static const Color moreScreenWidget2 = Color(0xFFDE8686);
  static const Color moreScreenWidget3 = Color(0xFF0C60F6);
  static const Color moreScreenThemeIconLight = fadedIconColorLight;
  static const Color moreScreenThemeIconDark = fadedIconColorLight;
  static const Color moreScreenWidget5 = Color(0xFFA90F0F);
  static const Color moreScreenWidget6 = Color(0xFF92A24D);
  static const Color moreScreenWidget7 = Color(0xFFB89B61);
  static const Color moreScreenWidget8 = Color(0xFF0F93E4);

  static Gradient backgroundGradient = RadialGradient(
    colors: [
      Colors.white,
      const Color(0xFF808080).withOpacity(0.8),
    ],
    center: Alignment.center,
    radius: 1,
    //focal: Alignment(0.1, 0.1),
    //focalRadius: 1,
  );

  static Color textColor() {
    return Get.theme.brightness == Brightness.light ? textColorLight : textColorDark;
  }

  static Color fadedTextColor() {
    return Get.theme.brightness == Brightness.light ? fadedTextColorLight : fadedTextColorDark;
  }

  static Color dividerColor() {
    return Get.theme.brightness == Brightness.light ? dividerColorLight : dividerColorDark;
  }

  static Color fadedIconColor() {
    return Get.theme.brightness == Brightness.light ? fadedIconColorLight : fadedIconColorDark;
  }

  static Color increaseColor() {
    return Get.theme.brightness == Brightness.light ? increaseColorLight : increaseColorDark;
  }

  static Color decreaseColor() {
    return Get.theme.brightness == Brightness.light ? decreaseColorLight : decreaseColorDark;
  }

  static Color instantChangeColor() {
    return Get.theme.brightness == Brightness.light ? instantChangeColorLight : instantChangeColorDark;
  }

  static Color borderColor() {
    return Get.theme.brightness == Brightness.light ? borderColorLight : borderColorDark;
  }

  static Color iconColor() {
    return Get.theme.brightness == Brightness.light ? iconColorLight : iconColorDark;
  }
}
