import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rota/utils/constants/color_resources.dart';
import 'package:rota/utils/constants/dimensions.dart';

class DialogHelper {
  static void showSnackBar(String title, String message, {SnackPosition position = SnackPosition.TOP}) async {
    await Get.closeCurrentSnackbar();
    Get.snackbar(title, message, snackPosition: position);
  }

  static void showDialog({
    BuildContext? context,
    String? title,
    String? desc,
    DialogType? dialogType,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
  }) {
    AwesomeDialog(
      context: context ?? Get.context!,
      dialogType: dialogType ?? DialogType.info,
      animType: AnimType.leftSlide,
      title: title,
      desc: desc,
      titleTextStyle: TextStyle(
        fontSize: Dimensions.fontExtraLarge,
        color: ColorResources.textColorDark,
        fontWeight: FontWeight.bold,
      ),
      btnCancelOnPress: onCancel,
      btnOkOnPress: onConfirm,
    ).show();
  }

  static void showLoading() {
    Get.dialog(
      const Center(
        child: CircularProgressIndicator(),
      ),
      barrierDismissible: false,
    );
  }

  static void hideLoading() {
    Get.back();
  }
}