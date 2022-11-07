import 'package:flutter/material.dart';
import 'package:my_gallery/core/constants/app_colors.dart';
import 'package:my_gallery/core/constants/app_fonts.dart';
import 'package:get/get.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      left: 0,
      top: 206,
      child: Text(
        'appName'.tr,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: AppFonts.segoeUI.familyName,
          color: AppColors.text,
          fontSize: 50,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
