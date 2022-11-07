import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginBackgroundLines extends StatelessWidget {
  const LoginBackgroundLines({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: -72,
      top: -142,
      height: 357,
      width: 371.53,
      child: SvgPicture.asset(
        'assets/shapes/lines.svg',
        height: 357,
        width: 371.53,
      ),
    );
  }
}
