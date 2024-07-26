import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fe_starter_project_templete/core/models/backend_callback_model.dart';
import 'package:fe_starter_project_templete/core/services/restful/restful_module.dart';
import 'package:fe_starter_project_templete/core/services/restful/restful_request_interface.dart';
import 'package:fe_starter_project_templete/core/services/restful/restful_service.dart';
import 'package:fe_starter_project_templete/core/utils/failure.dart';

class RestfulHandler {
  RestfulModule restfullApiModule = RestfulModule(interface: RestfulService());

  Future<Either<Failure, BackendCallbackModel>?> handlingInterface(
      RestfulRequestInterface interface) async {
    try {
      final result = await restfullApiModule.send(interface);
      
      if (result != null) {
        return Right(BackendCallbackModel.fromJson(result));
      } else {
        throw DioException(
            type: DioExceptionType.unknown,
            requestOptions: RequestOptions(path: interface.urlEnpoint));
      }
    } catch (e) {
      if (e is DioException) {
        if (e.type == DioExceptionType.connectionError ||
            e.type == DioExceptionType.connectionTimeout) {
          return Left(TimeOutFailure(e.message!));
        }

        if (e.type == DioExceptionType.badResponse &&
            e.response?.statusCode == 401) {
          return Left(ServerFailure(e.message!));
        }

        if (e.type == DioExceptionType.badResponse &&
            e.response?.statusCode == 403) {
          return left(ConnectionFailure(e.message!));
        }

        final data = e.response?.data;
        String? url = e.response?.headers.value("location");

        // if (url != null) {
        //   return await handlingInterface(RedirectRequest(url));
        // } else {
        //   return BackendCallbackModel.fromJson(data);
        // }
      } else {
        return const Left(DatabaseFailure("Database error"));
      }
    }
    return null;
  }
}
