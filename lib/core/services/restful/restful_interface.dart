import 'dart:async';
import 'package:dio/dio.dart';

abstract class RestfulInterface {
  Future<dynamic> get({
    required String uri,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {}

  Future<dynamic> post({
    required String uri,
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {}

  Future<dynamic> put({
    required String uri,
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {}

  Future<dynamic> download({
    required String uri,
    required String path,
    Options? options,
    ProgressCallback? onReceiveProgress,
  }) async {}
}
