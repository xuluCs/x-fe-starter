
import 'package:json_annotation/json_annotation.dart';
import 'package:fe_starter_project_templete/features/auth/models/login/data_login.dart';

part 'login.g.dart';

@JsonSerializable()
class Login {
  String? token;
  DataLogin? data;

  Login({this.token, this.data});

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);
  Map<String, dynamic> toJson() => _$LoginToJson(this);
}