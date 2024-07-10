// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Login _$LoginFromJson(Map<String, dynamic> json) => Login(
      userId: (json['userId'] as num?)?.toInt(),
      fullName: json['fullName'] as String?,
      jwtToken: json['jwtToken'] as String?,
      jwtExpiryDateTime: json['jwtExpiryDateTime'] as String?,
    );

Map<String, dynamic> _$LoginToJson(Login instance) => <String, dynamic>{
      'userId': instance.userId,
      'fullName': instance.fullName,
      'jwtToken': instance.jwtToken,
      'jwtExpiryDateTime': instance.jwtExpiryDateTime,
    };
