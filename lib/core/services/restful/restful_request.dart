import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:fe_starter_project_templete/core/services/restful/restful_request_interface.dart';
import 'package:fe_starter_project_templete/core/services/system_service.dart';
import 'package:fe_starter_project_templete/core/utils/enum_key.dart';

class PostRequest extends RestfulRequestInterface {
  @override
  RestfulMethod get method => RestfulMethod.post;

  PostRequest({
    required String url,
    required Map<String, dynamic> param,
  })  : assert(param.isNotEmpty, "Param must be provided"),
        super() {
    urlEnpoint = url;

    body = jsonEncode(param);

    // options = Options()..headers = {"Authorization": "Bearer ${setupToken()}"};
  }

  @override
  Future<Map<String, dynamic>> response(res) async => res;
}

class GetRequest extends RestfulRequestInterface {
  @override
  RestfulMethod get method => RestfulMethod.get;

  GetRequest({
    required String url,
  }) {
    urlEnpoint = url;

    options = Options()..headers = {"Authorization": "Bearer ${setupToken()}"};
  }

  @override
  Future<Map<String, dynamic>> response(res) async => res;
}

class PutRequest extends RestfulRequestInterface {
  @override
  RestfulMethod get method => RestfulMethod.put;

  PutRequest({
    required String url,
    required Map<String, dynamic> param,
  })  : assert(param.isNotEmpty, "Param must be provided"),
        super() {
    urlEnpoint = url;

    body = jsonEncode(param);

    options = Options()..headers = {"Authorization": "Bearer ${setupToken()}"};
  }

  @override
  Future<Map<String, dynamic>> response(res) async => res;
}

class DeleteRequest extends RestfulRequestInterface {
  @override
  RestfulMethod get method => RestfulMethod.put;

  DeleteRequest({
    required String url,
  }) {
    urlEnpoint = url;

    options = Options()..headers = {"Authorization": "Bearer ${setupToken()}"};
  }

  @override
  Future<Map<String, dynamic>> response(res) async => res;
}
