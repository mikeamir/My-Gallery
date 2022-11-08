import 'package:flutter/material.dart';
import 'package:my_gallery/core/constants/app_colors.dart';
import 'package:my_gallery/core/constants/app_fonts.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final bool isObsecure;
  final double height;
  final double width;

  const AppTextField({
    required this.controller,
    required this.hint,
    this.isObsecure = false,
    this.height = 46.11,
    this.width = double.maxFinite,
    super.key,
  });

  static final TextStyle style = TextStyle(
    fontSize: 16,
    fontFamily: AppFonts.segoeUI.familyName,
    color: AppColors.text,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(22),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 12),
      child: TextField(
        style: style,
        controller: controller,
        obscureText: isObsecure,
        cursorColor: style.color,
        textAlignVertical: TextAlignVertical.top,
        decoration: InputDecoration.collapsed(
          hintText: hint,
          hintStyle: style.copyWith(
            color: AppColors.secondaryText,
          ),
        ),
      ),
    );
  }
}
