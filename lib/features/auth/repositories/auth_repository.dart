import 'package:dartz/dartz.dart';
import 'package:fe_starter_project_templete/core/models/backend_callback_model.dart';
import 'package:fe_starter_project_templete/core/utils/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure, BackendCallbackModel>?> loginUser(String email, password);
  // Future signUpUser(String name, email, password);
}
