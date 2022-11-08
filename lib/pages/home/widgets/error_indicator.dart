import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_fonts.dart';

class ErrorIndicator extends StatelessWidget {
  final String message;

  const ErrorIndicator({
    required this.message,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(27),
      child: Center(
        child: Text(
          message,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: AppFonts.segoeUI.familyName,
            color: AppColors.text,
          ),
        ),
      ),
    );
  }
}
