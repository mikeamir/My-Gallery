import 'package:flutter/material.dart';
import 'package:my_gallery/core/constants/app_colors.dart';

class GalleryImage extends StatelessWidget {
  final String image;

  const GalleryImage({
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 108,
      height: 108,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.text,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(image),
        ),
      ),
    );
  }
}
