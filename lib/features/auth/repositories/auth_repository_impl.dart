import 'package:fe_starter_project_templete/core/extensions/logger.dart';
import 'package:fe_starter_project_templete/core/services/local_preference_service.dart';
import 'package:fe_starter_project_templete/core/services/restful/api_service.dart';
import 'package:fe_starter_project_templete/features/auth/models/login/login.dart';
import 'package:fe_starter_project_templete/features/auth/repositories/auth_repository.dart';
import 'package:fe_starter_project_templete/core/config/injection.dart';

class AuthRepositoryImpl extends AuthRepository {
  final _service = sl<ApiService>();
  @override
  Future<Login> loginUser(String email, password) async {
    try {
      final result = await _service.postData('/users-auth/sign', {
        'email': email,
        'password': password,
      });
      "login success ${result}".logger();
      LocalPreferenceService.setAccessToken(result['token']);
      return Login.fromJson(result['data']);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future signUpUser(String name, email, password) async {
    try {
      final result = await _service.postData('/users-auth/sign', {
        "fullName": name,
        "email": email,
        "password": password,
      });
    } catch (e) {
      throw Exception(e);
    }
  }
}
