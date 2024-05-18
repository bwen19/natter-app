// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FriendInfoImpl _$$FriendInfoImplFromJson(Map<String, dynamic> json) =>
    _$FriendInfoImpl(
      id: json['id'] as int,
      username: json['username'] as String,
      avatar: const HttpImageConverter().fromJson(json['avatar'] as String),
      nickname: json['nickname'] as String,
      status: const FriendStatusConverter().fromJson(json['status'] as String),
      roomId: json['roomId'] as int,
      first: json['first'] as bool,
      createAt: const DateTimeConverter().fromJson(json['createAt'] as String),
    );

Map<String, dynamic> _$$FriendInfoImplToJson(_$FriendInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'avatar': const HttpImageConverter().toJson(instance.avatar),
      'nickname': instance.nickname,
      'status': const FriendStatusConverter().toJson(instance.status),
      'roomId': instance.roomId,
      'first': instance.first,
      'createAt': const DateTimeConverter().toJson(instance.createAt),
    };

_$AddFriendRequestImpl _$$AddFriendRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AddFriendRequestImpl(
      friendId: json['friendId'] as int,
    );

Map<String, dynamic> _$$AddFriendRequestImplToJson(
        _$AddFriendRequestImpl instance) =>
    <String, dynamic>{
      'friendId': instance.friendId,
    };

_$AddFriendResponseImpl _$$AddFriendResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AddFriendResponseImpl(
      friend: FriendInfo.fromJson(json['friend'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddFriendResponseImplToJson(
        _$AddFriendResponseImpl instance) =>
    <String, dynamic>{
      'friend': instance.friend,
    };

_$AcceptFriendRequestImpl _$$AcceptFriendRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AcceptFriendRequestImpl(
      friendId: json['friendId'] as int,
    );

Map<String, dynamic> _$$AcceptFriendRequestImplToJson(
        _$AcceptFriendRequestImpl instance) =>
    <String, dynamic>{
      'friendId': instance.friendId,
    };

_$AcceptFriendResponseImpl _$$AcceptFriendResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AcceptFriendResponseImpl(
      friend: FriendInfo.fromJson(json['friend'] as Map<String, dynamic>),
      room: RoomInfo.fromJson(json['room'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AcceptFriendResponseImplToJson(
        _$AcceptFriendResponseImpl instance) =>
    <String, dynamic>{
      'friend': instance.friend,
      'room': instance.room,
    };

_$RefuseFriendRequestImpl _$$RefuseFriendRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$RefuseFriendRequestImpl(
      friendId: json['friendId'] as int,
    );

Map<String, dynamic> _$$RefuseFriendRequestImplToJson(
        _$RefuseFriendRequestImpl instance) =>
    <String, dynamic>{
      'friendId': instance.friendId,
    };

_$RefuseFriendResponseImpl _$$RefuseFriendResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RefuseFriendResponseImpl(
      friendId: json['friendId'] as int,
    );

Map<String, dynamic> _$$RefuseFriendResponseImplToJson(
        _$RefuseFriendResponseImpl instance) =>
    <String, dynamic>{
      'friendId': instance.friendId,
    };

_$DeleteFriendRequestImpl _$$DeleteFriendRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteFriendRequestImpl(
      friendId: json['friendId'] as int,
    );

Map<String, dynamic> _$$DeleteFriendRequestImplToJson(
        _$DeleteFriendRequestImpl instance) =>
    <String, dynamic>{
      'friendId': instance.friendId,
    };

_$DeleteFriendResponseImpl _$$DeleteFriendResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteFriendResponseImpl(
      friendId: json['friendId'] as int,
      roomId: json['roomId'] as int,
    );

Map<String, dynamic> _$$DeleteFriendResponseImplToJson(
        _$DeleteFriendResponseImpl instance) =>
    <String, dynamic>{
      'friendId': instance.friendId,
      'roomId': instance.roomId,
    };
