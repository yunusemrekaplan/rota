import 'package:flutter/material.dart';
import 'package:rota/utils/helpers/responsive_helper.dart';

class AppPaddings {
  static late ResponsiveHelper _responsiveHelper;

  // Sabit padding değerleri
  static const EdgeInsets paddingNone = EdgeInsets.zero;
  static const EdgeInsets paddingAllSmall = EdgeInsets.all(8.0);
  static const EdgeInsets paddingAllMedium = EdgeInsets.all(16.0);
  static const EdgeInsets paddingAllLarge = EdgeInsets.all(24.0);

  static const EdgeInsets paddingSymmetricHorizontalSmall = EdgeInsets.symmetric(horizontal: 8.0);
  static const EdgeInsets paddingSymmetricHorizontalMedium = EdgeInsets.symmetric(horizontal: 16.0);
  static const EdgeInsets paddingSymmetricHorizontalLarge = EdgeInsets.symmetric(horizontal: 24.0);

  static const EdgeInsets paddingSymmetricVerticalSmall = EdgeInsets.symmetric(vertical: 8.0);
  static const EdgeInsets paddingSymmetricVerticalMedium = EdgeInsets.symmetric(vertical: 16.0);
  static const EdgeInsets paddingSymmetricVerticalLarge = EdgeInsets.symmetric(vertical: 24.0);

  // Responsive padding değerleri (dinamik)
  static EdgeInsets responsivePaddingSmall = const EdgeInsets.all(0);
  static EdgeInsets responsivePaddingMedium = const EdgeInsets.all(0);
  static EdgeInsets responsivePaddingLarge = const EdgeInsets.all(0);

  static void init(BuildContext context) {
    _responsiveHelper = ResponsiveHelper(context);

    responsivePaddingSmall = EdgeInsets.all(_responsiveHelper.getResponsiveWidth(0.02)); // %2 padding
    responsivePaddingMedium = EdgeInsets.all(_responsiveHelper.getResponsiveWidth(0.04)); // %4 padding
    responsivePaddingLarge = EdgeInsets.all(_responsiveHelper.getResponsiveWidth(0.06)); // %6 padding
  }
}
