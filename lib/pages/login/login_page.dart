import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_gallery/pages/login/login_page_controller.dart';

class LoginPage extends GetView<LoginPageController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Login Page',
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
