import 'package:get/get.dart';
import 'package:my_gallery/core/services/api_service.dart';
import '../../services/promina_api_service.dart';

/// Used to inject necessary depenedcies into the application
class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<ApiService>(ProMinaApiService());
  }
}
