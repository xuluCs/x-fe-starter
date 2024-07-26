
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'user_request.g.dart';

UserRequest userRequestFromJson(String str) => UserRequest.fromJson(json.decode(str));

String userRequestToJson(UserRequest data) => json.encode(data.toJson());

@JsonSerializable()
class UserRequest {
    @JsonKey(name: "email")
    String email;
    @JsonKey(name: "password")
    String password;
    @JsonKey(name: "fullName")
    String fullName;
    @JsonKey(name: "address")
    String address;
    @JsonKey(name: "mobileNo")
    String mobileNo;
    @JsonKey(name: "birthDate")
    DateTime birthDate;
    @JsonKey(name: "roleId")
    int roleId;

    UserRequest({
        required this.email,
        required this.password,
        required this.fullName,
        required this.address,
        required this.mobileNo,
        required this.birthDate,
        required this.roleId,
    });

    factory UserRequest.fromJson(Map<String, dynamic> json) => _$UserRequestFromJson(json);

    Map<String, dynamic> toJson() => _$UserRequestToJson(this);
}
