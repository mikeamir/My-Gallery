import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_gallery/core/constants/app_colors.dart';
import 'package:my_gallery/core/constants/app_fonts.dart';
import 'package:my_gallery/core/widgets/app_text_field.dart';
import 'package:my_gallery/pages/login/login_page_controller.dart';
import 'package:my_gallery/pages/login/widgets/login_submit_button.dart';
import '../../../core/widgets/classmorphism_box.dart';

class LoginForm extends GetView<LoginPageController> {
  const LoginForm({super.key});

  static const SizedBox _spacingBox = SizedBox(height: 38);
  static const double _height = 395;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 42,
      right: 42,
      top: 368,
      height: _height,
      child: GlassmorphismBox(
        blur: 20,
        opacity: 0.2,
        width: double.maxFinite,
        borderRadius: 32,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
        child: Column(
          children: [
            Text(
              'login'.tr,
              style: TextStyle(
                fontFamily: AppFonts.segoeUI.familyName,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: AppColors.text,
              ),
            ),
            _spacingBox,
            AppTextField(
              controller: controller.usernameController,
              hint: 'username'.tr,
            ),
            _spacingBox,
            AppTextField(
              controller: controller.passwordController,
              hint: 'password'.tr,
              isObsecure: true,
            ),
            _spacingBox,
            const LoginSubmitButton(),
          ],
        ),
      ),
    );
  }
}
