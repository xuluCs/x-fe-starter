
class BackendCallbackModel {
  int? status;
  String? message;
  dynamic data;

  BackendCallbackModel({
    this.status,
    this.message,
    this.data,
  });

  BackendCallbackModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'];
  }
}
