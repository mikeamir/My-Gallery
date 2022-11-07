import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginBackgroundShapes extends StatelessWidget {
  const LoginBackgroundShapes({super.key});

  static const double _size = 131.56;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Stack(
        children: [
          Positioned(
            left: 74.99,
            top: 58.75,
            height: _size,
            width: _size,
            child: Image.asset(
              'assets/shapes/love_photography.png',
              height: _size,
              width: _size,
            ),
          ),
          Positioned(
            right: 36.7,
            top: 355.6,
            height: 219.69,
            width: 197.4,
            child: SvgPicture.asset(
              'assets/shapes/sun.svg',
              height: 219.69,
              width: 197.4,
            ),
          ),
          Positioned(
            left: 47.34,
            top: 379.52,
            height: 117.5,
            width: 119.44,
            child: SvgPicture.asset(
              'assets/shapes/album1.svg',
              height: 219.69,
              width: 197.4,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 650.57,
            height: 117.5,
            child: Center(
              child: SvgPicture.asset(
                'assets/shapes/album2.svg',
                height: 107.72,
                width: 129.64,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
