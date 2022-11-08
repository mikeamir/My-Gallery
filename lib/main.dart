import 'package:flutter/material.dart';
import 'package:my_gallery/core/utils/app_functions.dart';
import 'my_gallery.dart';

void main() {
  /// Setting all the necessary logic before removing the splash screen
  AppFunctions.init();
  runApp(const MyGallery());
}
