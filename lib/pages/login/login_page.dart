import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_gallery/pages/login/login_page_controller.dart';
import 'package:my_gallery/pages/login/widgets/login_background.dart';
import 'package:my_gallery/pages/login/widgets/login_background_blur.dart';
import 'package:my_gallery/pages/login/widgets/login_background_lines.dart';
import 'package:my_gallery/pages/login/widgets/login_background_shape.dart';
import 'package:my_gallery/pages/login/widgets/login_form.dart';
import 'package:my_gallery/pages/login/widgets/login_header.dart';

class LoginPage extends GetView<LoginPageController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: 926,
            width: double.maxFinite,
            child: Stack(
              fit: StackFit.expand,
              clipBehavior: Clip.none,
              children: const [
                LoginBackground(),
                LoginBackgroundBlur(),
                LoginBackgroundLines(),
                LoginBackgroundShapes(),
                LoginHeader(),
                LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
