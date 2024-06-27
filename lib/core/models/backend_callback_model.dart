import 'package:fe_starter_project_templete/core/models/backend_callback_data_model.dart';

class BackendCallbackModel {
  String? accessToken;
  String? tokenExp;
  BackendCallbackDataModel? data;

  BackendCallbackModel({
    this.accessToken,
    this.tokenExp,
    this.data,
  });

  BackendCallbackModel.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    tokenExp = json['exp_date'];
    if (json['data'] != null) {
      data = BackendCallbackDataModel.fromJson(json['data']);
    }
  }
}
