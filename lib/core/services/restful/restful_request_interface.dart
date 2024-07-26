import 'package:dio/dio.dart';
import 'package:fe_starter_project_templete/core/utils/enum_key.dart';

abstract class RestfulRequestInterface {
  String urlEnpoint = '';
  String downloadPath = '';
  dynamic get method;
  late RequestType _requestType;
  RequestType get requestType => _requestType;

  dynamic body;
  Options? options;
  CancelToken? cancelToken;
  ProgressCallback? onSendProgress;
  ProgressCallback? onReceiveProgress;
  Map<String, dynamic> queryParameters = {};

  RestfulRequestInterface() {
    _requestType = RequestType.restfull;
  }

  Future response(dynamic res) async {}
}
