import 'package:get/get.dart';
import 'package:my_gallery/pages/login/login_page_controller.dart';

class LoginPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<LoginPageController>(LoginPageController());
  }
}
