import 'dart:ui';
import 'package:flutter/material.dart';

class LoginBackgroundBlur extends StatelessWidget {
  const LoginBackgroundBlur({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
        child: const SizedBox.expand(),
      ),
    );
  }
}
