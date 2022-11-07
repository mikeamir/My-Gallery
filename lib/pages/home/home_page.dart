import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_gallery/pages/home/home_page_controller.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Home Page',
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
