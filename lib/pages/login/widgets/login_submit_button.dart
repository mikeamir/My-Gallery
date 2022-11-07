import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_gallery/core/constants/app_colors.dart';
import 'package:my_gallery/core/constants/app_fonts.dart';
import 'package:my_gallery/pages/login/login_page_controller.dart';

class LoginSubmitButton extends GetView<LoginPageController> {
  const LoginSubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColors.button,
        fixedSize: const Size(double.maxFinite, 46.11),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: controller.login,
      child: ObxValue<Rx<LoginPageState>>(
        (Rx<LoginPageState> rxState) {
          final bool isLoading = rxState.value == LoginPageState.loading;
          if (isLoading) {
            return const FractionallySizedBox(
              heightFactor: 0.5,
              child: AspectRatio(
                aspectRatio: 1,
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            );
          } else {
            return Text(
              'SUBMIT',
              style: TextStyle(
                fontFamily: AppFonts.segoeUI.familyName,
                fontSize: 18,
                color: Colors.white,
              ),
            );
          }
        },
        controller.state,
      ),
    );
  }
}
