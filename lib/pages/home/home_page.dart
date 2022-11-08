import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_gallery/core/constants/app_colors.dart';
import 'package:my_gallery/pages/home/home_page_controller.dart';
import 'package:my_gallery/pages/home/widgets/gallery/gallery.dart';
import 'package:my_gallery/pages/home/widgets/gallery_buttons/gallery_buttons.dart';
import 'package:my_gallery/pages/home/widgets/page_header/page_header.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          color: AppColors.text,
          onRefresh: controller.loadGallery,
          child: Column(
            children: const [
              HomePageHeader(),
              GalleryButtons(),
              HomePageGallery(),
            ],
          ),
        ),
      ),
    );
  }
}
