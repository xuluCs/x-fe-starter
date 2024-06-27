import 'package:fe_starter_project_templete/core/services/local_preference_service.dart';
import 'package:fe_starter_project_templete/core/services/restful/api_service.dart';
import 'package:fe_starter_project_templete/features/auth/models/login/login.dart';
import 'package:fe_starter_project_templete/features/auth/repositories/auth_repository.dart';
import 'package:fe_starter_project_templete/injection.dart';

class AuthRepositoryImpl extends AuthRepository {
  final _service = sl<ApiService>();
  @override
  Future<Login> loginUser(String email, password) async {
    try {
      final result = await _service.postData('/login', {
        'email': email,
        'password': password,
      });

      LocalPreferenceService.setAccessToken(result['token']);
      return Login.fromJson(result);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future signUpUser(String name, email, password) async {
    try {
      final result = await _service.postData('/register', {
        "fullName": name,
        "email": email,
        "password": password,
      });
      
    } catch (e) {
      throw Exception(e);
    }
  }
}
