import 'dart:ui';
import 'package:flutter/material.dart';

class GlassmorphismBox extends StatelessWidget {
  final double blur;
  final double opacity;
  final double width;
  final Widget child;
  final double? height;
  final EdgeInsets? padding;
  final double borderRadius;

  const GlassmorphismBox({
    required this.blur,
    required this.opacity,
    required this.child,
    this.width = double.maxFinite,
    this.height = double.maxFinite,
    this.padding,
    this.borderRadius = 0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          height: height,
          width: width,
          padding: padding,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(opacity),
            border: Border.all(
              width: 1.5,
              color: Colors.white.withOpacity(0.2),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
