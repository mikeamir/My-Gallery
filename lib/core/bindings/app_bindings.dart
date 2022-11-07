import 'package:get/get.dart';
import 'package:my_gallery/core/services/api_service.dart';
import 'package:my_gallery/services/promina_api_service.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<ApiService>(ProMinaApiService());
  }
}
