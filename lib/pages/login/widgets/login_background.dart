import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginBackground extends StatelessWidget {
  const LoginBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: SvgPicture.asset(
        'assets/shapes/background.svg',
        fit: BoxFit.fill,
      ),
    );
  }
}
