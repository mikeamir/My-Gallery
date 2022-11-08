import 'package:get/get.dart';
import 'package:my_gallery/core/services/api_service.dart';
import '../../services/promina_api_service.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    // Get.put<ApiService>(FakeApiService());
    Get.put<ApiService>(ProMinaApiService());
  }
}
