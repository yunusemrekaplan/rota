import 'package:get/get.dart';
import 'package:rota/controllers/auth_controller.dart';
import 'package:rota/controllers/splash_controller.dart';
import 'package:rota/services/token_service.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
    Get.lazyPut(() => TokenService());
    Get.lazyPut(() => AuthController());
  }
}
