import 'dart:io';
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
      _user = User(
        id: response.body["user"]["id"].toString(),
        name: response.body["user"]["name"],
        email: response.body["user"]["email"],
        token: response.body["token"],
      );
      return _user!;
    } else {
      throw ApiServiceException.unknownError;
    }
  }

  @override
  Future<List<String>> getUserGallery() async {
    if (_user != null) {
      final Response response = await get(
        "my-gallery",
        headers: {
          "Authorization": "Bearer ${_user!.token}",
        },
      );
      if (response.isOk) {
        final bool isSuccess = response.body["status"] == "success";
        if (isSuccess) {
          return List.castFrom<dynamic, String>(response.body["data"]["images"]);
        } else {
          throw ApiServiceException.unknownError;
        }
      } else {
        throw ApiServiceException.unknownError;
      }
    } else {
      throw ApiServiceException.userNotAuthenticated;
    }
  }

  @override
  Future<void> uploadImage(File image) async {
    try {
      final Response response = await post(
        'upload',
        FormData(
          {
            'img': MultipartFile(
              await image.readAsBytes(),
              filename: DateTime.now().toString(),
            ),
          },
        ),
        headers: {
          "Authorization": "Bearer ${_user!.token}",
        },
      );
      if (!response.isOk) {
        throw ApiServiceException.failedToUploadImage;
      }
    } catch (e) {
      if (e is ApiServiceException) {
        rethrow;
      } else {
        throw ApiServiceException.unknownError;
      }
    }
  }
}
