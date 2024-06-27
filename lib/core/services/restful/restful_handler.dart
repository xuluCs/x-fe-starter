import 'package:dio/dio.dart';
import 'package:fe_starter_project_templete/core/models/backend_callback_data_model.dart';
import 'package:fe_starter_project_templete/core/models/backend_callback_model.dart';
import 'package:fe_starter_project_templete/core/services/restful/restful_module.dart';
import 'package:fe_starter_project_templete/core/services/restful/restful_request_interface.dart';
import 'package:fe_starter_project_templete/core/services/restful/restful_service.dart';

class RestfulHandler {
  RestfulModule restfullApiModule = RestfulModule(interface: RestfulService());

  Future<BackendCallbackModel?> handlingInterface(RestfulRequestInterface interface) async {
    try {
      final result = await restfullApiModule.send(interface);
      if (result != null) {
        return BackendCallbackModel.fromJson(result);
      } else {
        throw DioException(type: DioExceptionType.unknown, requestOptions: RequestOptions(path: interface.url));
      }
    } catch (e) {
      if (e is DioException) {
        if (e.type == DioExceptionType.connectionError || e.type == DioExceptionType.connectionTimeout) {
          final data = BackendCallbackDataModel(status: 408, msg: "$e");
          return BackendCallbackModel(data: data);
        }

        if (e.type == DioExceptionType.badResponse && e.response?.statusCode == 401) {
          final data = BackendCallbackDataModel.fromJson(e.response?.data);
          return BackendCallbackModel(data: data);
        }

        if (e.type == DioExceptionType.badResponse && e.response?.statusCode == 403) {
          final data = BackendCallbackDataModel.fromJson(e.response?.data);
          return BackendCallbackModel(data: data);
        }

        final data = e.response?.data;
        String? url = e.response?.headers.value("location");

        // if (url != null) {
        //   return await handlingInterface(RedirectRequest(url));
        // } else {
        //   return BackendCallbackModel.fromJson(data);
        // }
      } else {
        final data = BackendCallbackDataModel(status: 500, msg: "$e");
        return BackendCallbackModel(data: data);
      }
    }
  }
}
