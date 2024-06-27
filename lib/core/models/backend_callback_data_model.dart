
class BackendCallbackDataModel {
  int? status;
  String? msg;
  String? traces;
  String? title;
  dynamic listData;
  dynamic data;

  BackendCallbackDataModel({
    this.status,
    this.msg,
    this.traces,
    this.title,
    this.listData,
    this.data,
  });

  BackendCallbackDataModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    traces = json['traces'];
    data = json['data'];
    status = json['status'];
    listData = json['list_data'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['msg'] = msg;
    data['traces'] = traces;
    data['status'] = status;
    data['list_data'] = listData;
    return data;
  }
}
