import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:my_gallery/core/constants/app_colors.dart';

class AppFunctions {
  AppFunctions._();

  static void init() {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
  }

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
