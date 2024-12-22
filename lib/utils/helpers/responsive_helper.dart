import 'package:flutter/material.dart';

class ResponsiveHelper {
  static final ResponsiveHelper _instance = ResponsiveHelper._internal();

  late double _width;
  late double _height;

  factory ResponsiveHelper(BuildContext context) {
    _instance._width = MediaQuery.of(context).size.width;
    _instance._height = MediaQuery.of(context).size.height;
    return _instance;
  }

  ResponsiveHelper._internal(); // Singleton constructor

  // Cihaz genişlik türlerini belirlemek için
  bool isMobile() => _width < 600;
  bool isTablet() => _width >= 600 && _width < 1200;
  bool isDesktop() => _width >= 1200;

  // Ekran genişliğine göre dinamik font boyutu
  double getResponsiveFontSize(double baseFontSize) {
    if (isMobile()) return baseFontSize * 0.8;
    if (isTablet()) return baseFontSize * 1.0;
    return baseFontSize * 1.2; // Desktop için
  }

  // Yüksekliğe göre dinamik padding
  EdgeInsets getResponsivePadding({double factor = 1.0}) {
    if (isMobile()) return EdgeInsets.all(8.0 * factor);
    if (isTablet()) return EdgeInsets.all(16.0 * factor);
    return EdgeInsets.all(24.0 * factor); // Desktop
  }

  // Ekran genişliğine göre dinamik container genişliği
  double getResponsiveWidth(double percentage) {
    return _width * percentage;
  }

  // Ekran yüksekliğine göre dinamik container yüksekliği
  double getResponsiveHeight(double percentage) {
    return _height * percentage;
  }
}
