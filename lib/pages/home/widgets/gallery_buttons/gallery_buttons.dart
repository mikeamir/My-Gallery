import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_gallery/pages/home/home_page_controller.dart';
import 'package:my_gallery/pages/home/widgets/gallery_buttons/widgets/gallery_button.dart';

class GalleryButtons extends GetView<HomePageController> {
  const GalleryButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final GalleryButton logoutButton = GalleryButton(action: controller.logout, text: 'logout'.tr, icon: GalleryButtonIcon.logout);
    final GalleryButton uploadButton = GalleryButton(action: controller.showUploadDialog, text: 'upload'.tr, icon: GalleryButtonIcon.upload);
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 500),
      child: SizedBox(
        width: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 18,
            horizontal: 45,
          ),
          child: context.width > 370
              ? Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    logoutButton,
                    const Spacer(),
                    uploadButton,
                  ],
                )
              : Column(
                  children: [
                    logoutButton,
                    const SizedBox(height: 18),
                    uploadButton,
                  ],
                ),
        ),
      ),
    );
  }
}
