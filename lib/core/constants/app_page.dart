import 'package:get/get.dart';
import 'package:my_gallery/core/constants/app_routes.dart';
import 'package:my_gallery/pages/home/home_page.dart';
import 'package:my_gallery/pages/home/home_page_bindings.dart';
import 'package:my_gallery/pages/login/login_page.dart';
import 'package:my_gallery/pages/login/login_page_bindings.dart';

class AppPages {
  AppPages._();

  static final List<GetPage> list = [
    GetPage(
      name: AppRoutes.login,
      binding: LoginPageBindings(),
      page: () => const LoginPage(),
    ),
    GetPage(
      name: AppRoutes.home,
      binding: HomePageBindings(),
      page: () => const HomePage(),
    ),
  ];
}
