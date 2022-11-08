import 'package:flutter/cupertino.dart';

class HomePageUserImageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // path_1
    double pathXs = size.width / 177.67;
    double pathYs = size.height / 145.04;

    Path path = Path()
      ..moveTo(177.67 * pathXs, 0 * pathYs)
      ..lineTo(177.67 * pathXs, 145.04 * pathYs)
      ..cubicTo(176.35 * pathXs, 137.88 * pathYs, 173.37 * pathXs, 131.14 * pathYs, 168.97 * pathXs, 125.35 * pathYs)
      ..lineTo(168.98 * pathXs, 125.35 * pathYs)
      ..cubicTo(167.27 * pathXs, 123.15 * pathYs, 161.55 * pathXs, 116.22 * pathYs, 149.94 * pathXs, 111.31 * pathYs)
      ..cubicTo(131.14 * pathXs, 103.37 * pathYs, 123.74 * pathXs, 112.11 * pathYs, 92.35 * pathXs, 107.31 * pathYs)
      ..cubicTo(85.11 * pathXs, 106.2 * pathYs, 75.17 * pathXs, 104.2 * pathYs, 66.21 * pathXs, 96.81 * pathYs)
      ..cubicTo(62.92 * pathXs, 94.09 * pathYs, 60.03 * pathXs, 90.94 * pathYs, 57.61 * pathXs, 87.43 * pathYs)
      ..cubicTo(54.13 * pathXs, 81.58 * pathYs, 51.73 * pathXs, 75.16 * pathYs, 50.5 * pathXs, 68.47 * pathYs)
      ..cubicTo(47.76 * pathXs, 53.12 * pathYs, 51.77 * pathXs, 49.9 * pathYs, 49.5 * pathXs, 38.77 * pathYs)
      ..cubicTo(47.34 * pathXs, 28.17 * pathYs, 41.3 * pathXs, 20.2 * pathYs, 36.84 * pathXs, 15.55 * pathYs)
      ..cubicTo(22.92 * pathXs, 0.96 * pathYs, 4.68 * pathXs, 0.09 * pathYs, 0 * pathXs, 0 * pathYs)
      ..lineTo(177.67 * pathXs, 0 * pathYs)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
