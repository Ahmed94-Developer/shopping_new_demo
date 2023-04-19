// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Login _$LoginFromJson(Map<String, dynamic> json) => Login(
      status: json['status'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
      active: json['active'] as bool,
    );

Map<String, dynamic> _$LoginToJson(Login instance) => <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'active': instance.active,
    };
