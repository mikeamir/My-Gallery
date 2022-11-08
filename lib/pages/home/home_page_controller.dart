import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_gallery/core/constants/app_routes.dart';
import 'package:my_gallery/core/models/user.dart';
import 'package:my_gallery/core/services/api_service.dart';
import 'package:my_gallery/core/utils/app_functions.dart';
import 'package:my_gallery/pages/home/home_page_arguments.dart';
import 'package:my_gallery/pages/home/widgets/upload_image_dialog/upload_image_dialog.dart';

enum HomePageState { loading, loaded, error }

enum ImagePickingSource { camera, gallery }

class HomePageController extends GetxController {
  late final Rx<HomePageState> _state;
  Rx<HomePageState> get state => _state;

  late User _user;
  User get user => _user;

  late List<String> _gallery;
  List<String> get gallery => _gallery;

  final ImagePicker _imagePicker = ImagePicker();

  @override
  void onInit() {
    _state = HomePageState.loading.obs;
    _gallery = <String>[].obs;
    final HomePageArguments? arguments = Get.arguments as HomePageArguments?;
    if (arguments == null) {
      Get.offNamed(AppRoutes.login);
      return;
    }
    _user = arguments.user;
    loadGallery();
    super.onInit();
  }

  Future<void> loadGallery() async {
    try {
      _state.value = HomePageState.loading;
      final ApiService apiService = Get.find<ApiService>();
      _gallery = await apiService.getUserGallery();
      _state.value = HomePageState.loaded;
    } catch (e) {
      _state.value = HomePageState.error;
    }
  }

  Future<void> logout() async => Get.offNamed(AppRoutes.login);

  Future<void> showUploadDialog() async {
    Get.dialog(
      const UploadImageDialog(),
      barrierColor: Colors.transparent.withOpacity(0),
    );
  }

  Future<void> uploadImage(ImagePickingSource source) async {
    try {
      final ImageSource imageSource = source == ImagePickingSource.camera ? ImageSource.camera : ImageSource.gallery;
      final XFile? file = await _imagePicker.pickImage(source: imageSource);
      if (file != null) {
        Get.back();
        AppFunctions.showSnackBar("imageIsBeingUploaded".tr, isError: false);
        final ApiService apiService = Get.find<ApiService>();
        await apiService.uploadImage(File(file.path));
        AppFunctions.showSnackBar("imageWasUploadedSuccessfully".tr, isError: false);
        loadGallery();
      }
    } catch (e) {
      if (e is ApiServiceException) {
        AppFunctions.showSnackBar(e.name.tr);
      } else {
        AppFunctions.showSnackBar(ApiServiceException.unknownError.name.tr);
      }
    }
  }
}
