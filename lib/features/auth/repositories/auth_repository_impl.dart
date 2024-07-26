import 'package:dartz/dartz.dart';
import 'package:fe_starter_project_templete/core/models/backend_callback_model.dart';
import 'package:fe_starter_project_templete/core/services/restful/restful_handler.dart';
import 'package:fe_starter_project_templete/core/services/restful/restful_request.dart';
import 'package:fe_starter_project_templete/core/utils/failure.dart';
import 'package:fe_starter_project_templete/features/auth/repositories/auth_repository.dart';
import 'package:fe_starter_project_templete/core/config/injection.dart';

class AuthRepositoryImpl extends AuthRepository {
  final _service = sl<RestfulHandler>();
  @override
  Future<Either<Failure, BackendCallbackModel>?> loginUser(
      String email, password) async {
    final result = await _service
        .handlingInterface(PostRequest(url: '/users-auth/sign', param: {
      "email": email,
      "password": password,
    }));
    return result?.fold(
      (l) => Left(l),
      (r) => Right(r),
    );
  }

  // @override
  // Future signUpUser(String name, email, password) async {
  //   try {
  //     final result = await _service.postData('/users-auth/sign', {
  //       "fullName": name,
  //       "email": email,
  //       "password": password,
  //     });
  //   } catch (e) {
  //     throw Exception(e);
  //   }
  // }
}
