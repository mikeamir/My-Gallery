import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_gallery/core/constants/app_page.dart';
import 'package:my_gallery/core/constants/app_routes.dart';

class MyGallery extends StatelessWidget {
  const MyGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Gallery',
      getPages: AppPages.list,
      initialRoute: AppRoutes.login,
    );
  }
}
