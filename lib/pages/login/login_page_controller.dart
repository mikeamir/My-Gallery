import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_gallery/core/constants/app_routes.dart';
import 'package:my_gallery/core/services/api_service.dart';
import 'package:my_gallery/core/utils/app_functions.dart';

enum LoginPageState { normal, loading }

class LoginPageController extends GetxController {
  late final TextEditingController usernameController;
  late final TextEditingController passwordController;

  late final Rx<LoginPageState> state;

  @override
  void onInit() {
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    state = LoginPageState.normal.obs;
    super.onInit();
  }

  Future<void> login() async {
    if (state.value == LoginPageState.loading) return;
    state.value = LoginPageState.loading;
    try {
      final ApiService apiService = Get.find<ApiService>();
      await apiService.login(usernameController.text, passwordController.text);
      Get.offNamed(AppRoutes.home);
    } on ApiServiceException catch (e) {
      AppFunctions.showSnackBar(e.name.tr);
    } catch (e) {
      AppFunctions.showSnackBar(ApiServiceException.unknownError.name.tr);
    }
    state.value = LoginPageState.normal;
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
