// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoImpl _$$UserInfoImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoImpl(
      id: json['id'] as int,
      username: json['username'] as String,
      avatar: const HttpImageConverter().fromJson(json['avatar'] as String),
      nickname: json['nickname'] as String,
      role: const UserRoleConverter().fromJson(json['role'] as String),
      roomId: json['roomId'] as int,
      deleted: json['deleted'] as bool,
      createAt: const DateTimeConverter().fromJson(json['createAt'] as String),
    );

Map<String, dynamic> _$$UserInfoImplToJson(_$UserInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'avatar': const HttpImageConverter().toJson(instance.avatar),
      'nickname': instance.nickname,
      'role': const UserRoleConverter().toJson(instance.role),
      'roomId': instance.roomId,
      'deleted': instance.deleted,
      'createAt': const DateTimeConverter().toJson(instance.createAt),
    };

_$UpdateUserRequestImpl _$$UpdateUserRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateUserRequestImpl(
      userId: json['userId'] as int,
      nickname: json['nickname'] as String?,
    );

Map<String, dynamic> _$$UpdateUserRequestImplToJson(
        _$UpdateUserRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'nickname': instance.nickname,
    };

_$UpdateUserResponseImpl _$$UpdateUserResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateUserResponseImpl(
      user: UserInfo.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateUserResponseImplToJson(
        _$UpdateUserResponseImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

_$ChangeAvatarResponseImpl _$$ChangeAvatarResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangeAvatarResponseImpl(
      avatar: const HttpImageConverter().fromJson(json['avatar'] as String),
    );

Map<String, dynamic> _$$ChangeAvatarResponseImplToJson(
        _$ChangeAvatarResponseImpl instance) =>
    <String, dynamic>{
      'avatar': const HttpImageConverter().toJson(instance.avatar),
    };

_$ChangePasswordRequestImpl _$$ChangePasswordRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangePasswordRequestImpl(
      oldPassword: json['oldPassword'] as String,
      newPassword: json['newPassword'] as String,
    );

Map<String, dynamic> _$$ChangePasswordRequestImplToJson(
        _$ChangePasswordRequestImpl instance) =>
    <String, dynamic>{
      'oldPassword': instance.oldPassword,
      'newPassword': instance.newPassword,
    };

_$FindUserResponseImpl _$$FindUserResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FindUserResponseImpl(
      user: json['user'] == null
          ? null
          : UserInfo.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FindUserResponseImplToJson(
        _$FindUserResponseImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
