// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginRequestImpl _$$LoginRequestImplFromJson(Map<String, dynamic> json) =>
    _$LoginRequestImpl(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$LoginRequestImplToJson(_$LoginRequestImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      user: UserInfo.fromJson(json['user'] as Map<String, dynamic>),
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      expireAt: const DateTimeConverter().fromJson(json['expireAt'] as String),
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expireAt': const DateTimeConverter().toJson(instance.expireAt),
    };

_$AutoLoginRequestImpl _$$AutoLoginRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AutoLoginRequestImpl(
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$AutoLoginRequestImplToJson(
        _$AutoLoginRequestImpl instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken,
    };

_$RenewTokenRequestImpl _$$RenewTokenRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$RenewTokenRequestImpl(
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$RenewTokenRequestImplToJson(
        _$RenewTokenRequestImpl instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken,
    };

_$RenewTokenResponseImpl _$$RenewTokenResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RenewTokenResponseImpl(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      expireAt: const DateTimeConverter().fromJson(json['expireAt'] as String),
    );

Map<String, dynamic> _$$RenewTokenResponseImplToJson(
        _$RenewTokenResponseImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expireAt': const DateTimeConverter().toJson(instance.expireAt),
    };

_$LogoutRequestImpl _$$LogoutRequestImplFromJson(Map<String, dynamic> json) =>
    _$LogoutRequestImpl(
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$LogoutRequestImplToJson(_$LogoutRequestImpl instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken,
    };
