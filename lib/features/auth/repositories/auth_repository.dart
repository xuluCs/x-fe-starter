import 'package:fe_starter_project_templete/features/auth/models/login/login.dart';

abstract class AuthRepository {
  Future<Login> loginUser(String email, password);
  Future signUpUser(String name, email, password);
}
