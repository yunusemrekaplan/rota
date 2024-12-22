import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:rota/services/auth_service.dart';
import 'package:rota/utils/helpers/dialog_helper.dart';
import 'package:rota/utils/routes/app_pages.dart';
import 'package:rota/utils/routes/app_routes.dart';

class AuthController extends GetxController {
  final _authService = Get.find<AuthService>();
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  Future<void> onPressedLoginButton() async {
    DialogHelper.showLoading();

    if (formKey.currentState?.saveAndValidate() ?? false) {
      final data = formKey.currentState?.value;

      if (data != null) {
        await login(data['username'], data['password']);
      } else {
        DialogHelper.showSnackBar('Hata', 'Formu doğru doldurunuz');
      }
    } else {
      DialogHelper.showSnackBar('Hata', 'Formu doğru doldurunuz');
    }

    DialogHelper.hideLoading();
  }

  Future<void> login(String username, String password) async {
    var response = await _authService.login(username, password);
    if (response.success) {
      Get.offAllNamed(AppRoutes.main);
    } else {
      DialogHelper.showSnackBar('Hata', response.message ?? 'Bir hata oluştu');
    }
  }
}
