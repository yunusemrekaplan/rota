import 'dart:async';

import 'package:get/get.dart';
import 'package:rota/services/token_service.dart';
import 'package:rota/utils/routes/app_routes.dart';

class SplashController extends GetxController {
  Future<void> init() async {
    if (await Get.find<TokenService>().isTokenValid()) {
      await Future.delayed(const Duration(seconds: 2));
      Get.offAllNamed(AppRoutes.main);
    } else {
      await Future.delayed(const Duration(seconds: 2));
      Get.offAllNamed(AppRoutes.login);
    }
  }
}
