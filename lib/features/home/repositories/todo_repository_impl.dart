import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:fe_starter_project_templete/core/extensions/logger.dart';
import 'package:fe_starter_project_templete/core/models/backend_callback_model.dart';
import 'package:fe_starter_project_templete/core/services/restful/restful_handler.dart';
import 'package:fe_starter_project_templete/core/services/restful/restful_request.dart';
import 'package:fe_starter_project_templete/core/utils/failure.dart';
import 'package:fe_starter_project_templete/features/home/models/user/user.dart';
import 'package:fe_starter_project_templete/features/home/models/user/user_model.dart';
import 'package:fe_starter_project_templete/features/home/repositories/todo_repository.dart';
import 'package:fe_starter_project_templete/core/config/injection.dart';

class TodoRepositoryImpl implements TodoRepository {
  final _service = sl<RestfulHandler>();

  @override
  Future<Either<Failure, UserModel>?> getUsers() async {
    final result =
          await _service.handlingInterface(GetRequest(url: '/users'));
      result?.fold(
        (l) => Left(l),
        (r) {
          return Right(UserModel.fromJson(r.data));
        },
      );
  }
}
