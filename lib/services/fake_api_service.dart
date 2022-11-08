import 'dart:io';
import 'package:my_gallery/core/models/user.dart';
import 'package:my_gallery/core/services/api_service.dart';
import 'package:get/get.dart';

class FakeApiService implements ApiService {
  User? _user;

  static final User _fakeUser = User(id: "1", name: "Michael Amir", email: "mikeamiris@gmail.com", token: "123456");

  @override
  Future<User?> getCurrentUser() async => _user;

  @override
  Future<List<String>> getUserGallery() async {
    await Future.delayed(const Duration(seconds: 2));
    return List.generate(50, (index) => "https://gwd.co.nz/wp-content/uploads/2020/04/calm-1.jpg");
  }

  @override
  Future<User> login(String email, String password) async {
    if (!email.isEmail) throw ApiServiceException.invalidEmail;
    if (password.length < 6) throw ApiServiceException.invalidPassword;
    if (email != _fakeUser.email || password != "123456") throw ApiServiceException.invalidCredentials;
    await Future.delayed(const Duration(seconds: 1));
    _user = _fakeUser;
    return _fakeUser;
  }

  @override
  Future<void> uploadImage(File image) async {
    await Future.delayed(const Duration(seconds: 1));
  }
}
