// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRequest _$UserRequestFromJson(Map<String, dynamic> json) => UserRequest(
      email: json['email'] as String,
      password: json['password'] as String,
      fullName: json['fullName'] as String,
      address: json['address'] as String,
      mobileNo: json['mobileNo'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
      roleId: (json['roleId'] as num).toInt(),
    );

Map<String, dynamic> _$UserRequestToJson(UserRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'fullName': instance.fullName,
      'address': instance.address,
      'mobileNo': instance.mobileNo,
      'birthDate': instance.birthDate.toIso8601String(),
      'roleId': instance.roleId,
    };
