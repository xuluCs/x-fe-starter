import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobx/mobx.dart';
import 'package:fe_starter_project_templete/core/utils/route_path.dart';
import 'package:fe_starter_project_templete/features/auth/models/login/login.dart';
import 'package:fe_starter_project_templete/features/auth/repositories/auth_repository.dart';
import 'package:fe_starter_project_templete/injection.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStore with _$AuthStore;

abstract class _AuthStore with Store {
  final AuthRepository _repository = sl<AuthRepository>();

  @observable
  Login login = Login();

  @observable
  bool isLoading = false;

  @observable
  String errorMessage = '';

  @action
  Future<void> loginUser(String email, password, BuildContext context) async {
    isLoading = true;
    errorMessage = '';
    try {
      final data = await _repository.loginUser(email, password);
      login = data;
      // ignore: use_build_context_synchronously
      context.go(RoutePath.home);
    } catch (e) {
      errorMessage = e.toString();
      debugPrint("gggg222 $e");
    } finally {
      isLoading = false;
    }
  }

  @action
  Future<void> registerUser(
      String name, email, password, BuildContext context) async {
    isLoading = true;
    errorMessage = '';
    try {
      final data = await _repository.signUpUser(name, email, password);
      context.pop();
    } catch (e) {
      errorMessage = e.toString();
    } finally {
      isLoading = false;
    }
  }
}
