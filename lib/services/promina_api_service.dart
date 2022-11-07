import 'package:get/get.dart';
import 'package:my_gallery/core/models/user.dart';
import 'package:my_gallery/core/services/api_service.dart';

class ProMinaApiService extends GetConnect implements ApiService {
  User? _user;

  @override
  void onInit() {
    httpClient.baseUrl = "https://technichal.prominaagency.com/api/";
    super.onInit();
  }

  @override
  Future<User?> getCurrentUser() async => _user;

  @override
  Future<User> login(String email, String password) async {
    if (!email.isEmail) throw ApiServiceException.invalidEmail;
    if (password.length < 6) throw ApiServiceException.invalidPassword;
    final Response response = await post("auth/login", FormData({"email": email, "password": password}));
    if (response.isOk) {
      if (response.body["error_message"] != null) throw ApiServiceException.invalidCredentials;
      return User(
        id: response.body["user"]["id"].toString(),
        name: response.body["user"]["name"],
        email: response.body["user"]["email"],
        token: response.body["token"],
      );
    } else {
      throw ApiServiceException.unknownError;
    }
  }
}
