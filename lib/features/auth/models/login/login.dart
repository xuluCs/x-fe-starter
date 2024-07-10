import 'package:json_annotation/json_annotation.dart';

part 'login.g.dart';

@JsonSerializable()
class Login {
  int? userId;
  String? fullName;
  String? jwtToken;
  String? jwtExpiryDateTime;

  Login({this.userId, this.fullName, this.jwtToken, this.jwtExpiryDateTime,});

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);
  Map<String, dynamic> toJson() => _$LoginToJson(this);
}
