import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_gallery/core/bindings/app_bindings.dart';
import 'package:my_gallery/core/constants/app_page.dart';
import 'package:my_gallery/core/constants/app_routes.dart';
import 'package:my_gallery/core/translations/app_translations.dart';

class MyGallery extends StatelessWidget {
  const MyGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Gallery',
      onGenerateTitle: (context) => 'appName'.tr,
      getPages: AppPages.list,
      initialRoute: AppRoutes.login,
      initialBinding: AppBindings(),
      locale: AppTranslations.supportedLocales.first,
      supportedLocales: AppTranslations.supportedLocales,
      translations: AppTranslations(),
    );
  }
}
