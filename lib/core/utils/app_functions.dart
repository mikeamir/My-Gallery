import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:my_gallery/core/constants/app_colors.dart';

class AppFunctions {
  AppFunctions._();

  static void showSnackBar(String message, {bool isError = true}) {
    const EdgeInsets padding = EdgeInsets.all(16);
    Get.showSnackbar(
      GetSnackBar(
        duration: const Duration(seconds: 2),
        margin: padding,
        message: message,
        borderRadius: 16,
        padding: padding,
        snackPosition: SnackPosition.TOP,
        backgroundColor: isError ? AppColors.error : AppColors.button,
      ),
    );
  }
}
