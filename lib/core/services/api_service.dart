import '../models/user.dart';

enum ApiServiceException {
  invalidEmail,
  invalidPassword,
  invalidCredentials,
  networkError,
  unknownError,
}

abstract class ApiService {
  Future<User?> getCurrentUser();
  Future<User> login(String email, String password);
}
