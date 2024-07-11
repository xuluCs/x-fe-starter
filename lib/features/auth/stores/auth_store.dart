import 'package:fe_starter_project_templete/core/extensions/logger.dart';
import 'package:fe_starter_project_templete/core/utils/navigator.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:fe_starter_project_templete/features/auth/models/login/login.dart';
import 'package:fe_starter_project_templete/features/auth/repositories/auth_repository.dart';
import 'package:fe_starter_project_templete/core/config/injection.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStore with _$AuthStore;

abstract class _AuthStore with Store, NavigatorMixin {
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
      final data = await _repository.loginUser(email, password).then(
        (value) {
          pop(context);
        },
      );

      pushNamed(name: 'home');

      login = data;
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
      final data = await _repository.signUpUser(name, email, password).then(
        (value) {
          pop(context);
        },
      );
    } catch (e) {
      errorMessage = e.toString();
    } finally {
      isLoading = false;
    }
  }
}
