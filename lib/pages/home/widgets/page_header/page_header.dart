import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_gallery/core/constants/app_colors.dart';
import 'package:my_gallery/core/constants/app_fonts.dart';
import 'package:my_gallery/pages/home/home_page_controller.dart';
import 'package:my_gallery/pages/home/widgets/page_header/widgets/user_image/user_image.dart';

class HomePageHeader extends GetView<HomePageController> {
  const HomePageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final String userName = controller.user.name.split(' ').getRange(0, 2).join(' ');
    final bool shouldShowImage = context.width > 360;
    return SizedBox(
      width: double.maxFinite,
      height: 145,
      child: Padding(
        padding: EdgeInsets.only(left: shouldShowImage ? 27 : 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${"welcome".tr}\n$userName",
              textAlign: shouldShowImage ? TextAlign.start : TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontFamily: AppFonts.balooThambi2.familyName,
                color: AppColors.text,
              ),
            ),
            if (shouldShowImage) ...[
              const Spacer(),
              const HomePageUserImage(),
            ]
          ],
        ),
      ),
    );
  }
}
