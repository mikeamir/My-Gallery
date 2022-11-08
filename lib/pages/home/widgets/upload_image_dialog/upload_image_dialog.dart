import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_gallery/core/widgets/classmorphism_box.dart';
import 'package:my_gallery/pages/home/home_page_controller.dart';
import 'package:my_gallery/pages/home/widgets/upload_image_dialog/widgets/dialog_button.dart';

class UploadImageDialog extends GetView<HomePageController> {
  const UploadImageDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0,
      color: Colors.transparent.withOpacity(0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38),
            child: GlassmorphismBox(
              blur: 10,
              opacity: 0.2,
              borderRadius: 32,
              width: double.maxFinite,
              height: 353,
              padding: EdgeInsets.symmetric(
                horizontal: context.width > 470
                    ? 85
                    : context.width > 405
                        ? 50
                        : 20,
                vertical: 45,
              ),
              child: Column(
                children: [
                  DialogButton(
                    action: () => controller.uploadImage(ImagePickingSource.gallery),
                    text: 'gallery'.tr,
                    icon: DialogButtonIcon.gallery,
                  ),
                  const Spacer(),
                  DialogButton(
                    action: () => controller.uploadImage(ImagePickingSource.camera),
                    text: 'camera'.tr,
                    icon: DialogButtonIcon.camera,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
