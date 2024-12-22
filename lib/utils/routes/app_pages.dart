import 'package:get/get.dart';
import 'package:rota/controllers/auth_controller.dart';
import 'package:rota/utils/routes/app_routes.dart';
import 'package:rota/views/screens/login_screen.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => AuthController());
      }),
    ),
    // Diğer sayfalarınızı buraya ekleyin
  ];
}