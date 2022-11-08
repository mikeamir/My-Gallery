import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_gallery/core/constants/app_colors.dart';
import 'package:my_gallery/pages/home/home_page_controller.dart';
import 'package:my_gallery/pages/home/widgets/page_header/widgets/user_image/user_image_clipper.dart';

class HomePageUserImage extends GetView<HomePageController> {
  const HomePageUserImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: HomePageUserImageClipper(),
      child: const ColoredBox(
        color: AppColors.secondaryBackground,
        child: SizedBox(
          width: 178,
          height: 145,
          child: Align(
            alignment: Alignment(0.3, -0.4),
            child: CircleAvatar(
              radius: 33,
              backgroundColor: AppColors.background,
              child: Icon(
                Icons.person_outline_rounded,
                color: AppColors.text,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
