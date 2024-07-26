
import 'package:dartz/dartz.dart';
import 'package:fe_starter_project_templete/core/utils/failure.dart';
import 'package:fe_starter_project_templete/features/home/models/user/user_model.dart';

abstract class TodoRepository {
  Future<Either<Failure, UserModel>?> getUsers();
}