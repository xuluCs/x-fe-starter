import 'package:fe_starter_project_templete/core/services/restful/restful_interface.dart';
import 'package:fe_starter_project_templete/core/services/restful/restful_request_interface.dart';
import 'package:fe_starter_project_templete/core/utils/enum_key.dart';

class RestfulModule {
  late RestfulInterface _restfulInterface;

  RestfulModule({
    required RestfulInterface interface,
  }) {
    _restfulInterface = interface;
  }

  Future<T> send<T>(RestfulRequestInterface request) async {
    final url = request.urlEnpoint;

    dynamic json;

    switch (request.requestType) {
      case RequestType.restfull:
        switch (request.method as RestfulMethod) {
          case RestfulMethod.get:
            json = await _restfulInterface.get(
              uri: url,
              options: request.options,
              cancelToken: request.cancelToken,
              onReceiveProgress: request.onReceiveProgress,
              queryParameters: _convertQueryParams(request.queryParameters),
            );
            break;
          case RestfulMethod.post:
            json = await _restfulInterface.post(
              uri: url,
              options: request.options,
              cancelToken: request.cancelToken,
              data: _convertBodyParams(request.body),
              onSendProgress: request.onSendProgress,
              onReceiveProgress: request.onReceiveProgress,
              queryParameters: _convertQueryParams(request.queryParameters),
            );
            break;
          case RestfulMethod.put:
            json = await _restfulInterface.put(
              uri: url,
              options: request.options,
              cancelToken: request.cancelToken,
              data: _convertBodyParams(request.body),
              onSendProgress: request.onSendProgress,
              onReceiveProgress: request.onReceiveProgress,
              queryParameters: _convertQueryParams(request.queryParameters),
            );
            break;
          case RestfulMethod.download:
            json = await _restfulInterface.download(
              uri: url,
              path: request.downloadPath,
              options: request.options,
              onReceiveProgress: request.onReceiveProgress,
            );
        }
        break;
    }

    final res = await request.response(json);
    return res as T;
  }

  dynamic _convertBodyParams(dynamic body) {
    if (body == null) {
      return {};
    } else {
      return body;
    }
  }

  Map<String, dynamic> _convertQueryParams(Map<String, dynamic>? q) {
    if (q == null) return {};
    final result = <String, dynamic>{};
    q.forEach((key, value) {
      if (value is List) {
        if (value is List<String>) {
          result[key] = value;
        } else {
          result[key] = value.map((e) => e.toString()).toList();
        }
      } else if (value != null) {
        result[key] = value.toString();
      }
    });
    return result;
  }
}
