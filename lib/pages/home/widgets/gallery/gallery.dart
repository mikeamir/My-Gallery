import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_gallery/core/constants/app_colors.dart';
import 'package:my_gallery/core/services/api_service.dart';
import 'package:my_gallery/pages/home/home_page_controller.dart';
import 'package:my_gallery/pages/home/widgets/error_indicator.dart';
import 'package:my_gallery/pages/home/widgets/gallery/widgets/gallery_image.dart';

class HomePageGallery extends GetView<HomePageController> {
  const HomePageGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ObxValue<Rx<HomePageState>>(
        (Rx<HomePageState> rxState) {
          final HomePageState state = rxState.value;
          if (state == HomePageState.loading) {
            return const Center(
              child: CircularProgressIndicator(
                color: AppColors.text,
              ),
            );
          } else if (state == HomePageState.error) {
            return ErrorIndicator(message: ApiServiceException.unknownError.name.tr);
          } else {
            final List<String> gallery = controller.gallery;
            if (gallery.isEmpty) {
              return ErrorIndicator(message: 'empty_gallery'.tr);
            } else {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
                  child: Wrap(
                    spacing: 24,
                    runSpacing: 25,
                    children: gallery.map<Widget>((String image) => GalleryImage(image: image)).toList(),
                  ),
                ),
              );
            }
          }
        },
        controller.state,
      ),
    );
  }
}
