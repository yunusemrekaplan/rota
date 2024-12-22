import 'package:flutter/material.dart';
import 'package:rota/utils/helpers/responsive_helper.dart';

class Dimensions {
  static late ResponsiveHelper _responsiveHelper;

  // Responsive Padding
  static double paddingOverExtraSmall = 0;
  static double paddingExtraSmall = 0;
  static double paddingSmall = 0;
  static double paddingMedium = 0;
  static double paddingLarge = 0;

  // Responsive Font Size
  static double fontExtraSmall = 0;
  static double fontSmall = 0;
  static double fontMedium = 0;
  static double fontLarge = 0;
  static double fontExtraLarge = 0;
  static double fontOverExtraLarge = 0;

  // Container Heights
  static double containerHeightOverExtraSmall = 0;
  static double containerHeightExtraSmall = 0;
  static double containerHeightSmall = 0;
  static double containerHeightMedium = 0;
  static double containerHeightLarge = 0;

  // Container Widths
  static double containerWidthSmall = 0;
  static double containerWidthMedium = 0;
  static double containerWidthLarge = 0;
  static double containerWidthExtraLarge = 0;

  // Dynamic icon sizes
  static double iconSizeOverExtraSmall = 0;
  static double iconSizeExtraSmall = 0;
  static double iconSizeSmall = 0;
  static double iconSizeMedium = 0;
  static double iconSizeLarge = 0;

  // Ekran boyutlarını initialize etmek için
  static void init(BuildContext context) {
    _responsiveHelper = ResponsiveHelper(context);

    paddingOverExtraSmall = _responsiveHelper.getResponsiveWidth(0.005);
    paddingExtraSmall = _responsiveHelper.getResponsiveWidth(0.01);
    paddingSmall = _responsiveHelper.getResponsiveWidth(0.02);
    paddingMedium = _responsiveHelper.getResponsiveWidth(0.04);
    paddingLarge = _responsiveHelper.getResponsiveWidth(0.06);

    fontExtraSmall = _responsiveHelper.getResponsiveFontSize(14);
    fontSmall = _responsiveHelper.getResponsiveFontSize(16);
    fontMedium = _responsiveHelper.getResponsiveFontSize(18);
    fontLarge = _responsiveHelper.getResponsiveFontSize(20);
    fontExtraLarge = _responsiveHelper.getResponsiveFontSize(24);
    fontOverExtraLarge = _responsiveHelper.getResponsiveFontSize(26);

    containerHeightOverExtraSmall = _responsiveHelper.getResponsiveHeight(0.05);
    containerHeightExtraSmall = _responsiveHelper.getResponsiveHeight(0.075);
    containerHeightSmall = _responsiveHelper.getResponsiveHeight(0.1);
    containerHeightMedium = _responsiveHelper.getResponsiveHeight(0.2);
    containerHeightLarge = _responsiveHelper.getResponsiveHeight(0.3);

    containerWidthSmall = _responsiveHelper.getResponsiveWidth(0.1);
    containerWidthMedium = _responsiveHelper.getResponsiveWidth(0.2);
    containerWidthLarge = _responsiveHelper.getResponsiveWidth(0.3);
    containerWidthExtraLarge = _responsiveHelper.getResponsiveWidth(0.4);

    iconSizeOverExtraSmall = _responsiveHelper.getResponsiveHeight(0.01);
    iconSizeExtraSmall = _responsiveHelper.getResponsiveHeight(0.015);
    iconSizeSmall = _responsiveHelper.getResponsiveHeight(0.025);
    iconSizeMedium = _responsiveHelper.getResponsiveHeight(0.04);
    iconSizeLarge = _responsiveHelper.getResponsiveHeight(0.05);
  }
}
