import 'dart:io';
import '../models/user.dart';

enum ApiServiceException {
  invalidEmail,
  invalidPassword,
  invalidCredentials,
  networkError,
  userNotAuthenticated,
  failedToUploadImage,
  unknownError,
}

abstract class ApiService {
  Future<User?> getCurrentUser();
  Future<User> login(String email, String password);
  Future<List<String>> getUserGallery();
  Future<void> uploadImage(File image);
}
