// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomInfoImpl _$$RoomInfoImplFromJson(Map<String, dynamic> json) =>
    _$RoomInfoImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      cover: const HttpImageConverter().fromJson(json['cover'] as String),
      category:
          const RoomCategoryConverter().fromJson(json['category'] as String),
      unreads: json['unreads'] as int,
      createAt: const DateTimeConverter().fromJson(json['createAt'] as String),
      members: (json['members'] as List<dynamic>)
          .map((e) => MemberInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      messages: (json['messages'] as List<dynamic>)
          .map((e) => MessageInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RoomInfoImplToJson(_$RoomInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cover': const HttpImageConverter().toJson(instance.cover),
      'category': const RoomCategoryConverter().toJson(instance.category),
      'unreads': instance.unreads,
      'createAt': const DateTimeConverter().toJson(instance.createAt),
      'members': instance.members,
      'messages': instance.messages,
    };

_$NewRoomRequestImpl _$$NewRoomRequestImplFromJson(Map<String, dynamic> json) =>
    _$NewRoomRequestImpl(
      name: json['name'] as String,
      membersId:
          (json['membersId'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$NewRoomRequestImplToJson(
        _$NewRoomRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'membersId': instance.membersId,
    };

_$NewRoomResponseImpl _$$NewRoomResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$NewRoomResponseImpl(
      room: RoomInfo.fromJson(json['room'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NewRoomResponseImplToJson(
        _$NewRoomResponseImpl instance) =>
    <String, dynamic>{
      'room': instance.room,
    };

_$ChangeCoverResponseImpl _$$ChangeCoverResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangeCoverResponseImpl(
      roomId: json['roomId'] as int,
      cover: const HttpImageConverter().fromJson(json['cover'] as String),
    );

Map<String, dynamic> _$$ChangeCoverResponseImplToJson(
        _$ChangeCoverResponseImpl instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'cover': const HttpImageConverter().toJson(instance.cover),
    };

_$UpdateRoomRequestImpl _$$UpdateRoomRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateRoomRequestImpl(
      roomId: json['roomId'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$UpdateRoomRequestImplToJson(
        _$UpdateRoomRequestImpl instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'name': instance.name,
    };

_$UpdateRoomResponseImpl _$$UpdateRoomResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateRoomResponseImpl(
      roomId: json['roomId'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$UpdateRoomResponseImplToJson(
        _$UpdateRoomResponseImpl instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'name': instance.name,
    };

_$DeleteRoomRequestImpl _$$DeleteRoomRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteRoomRequestImpl(
      roomId: json['roomId'] as int,
    );

Map<String, dynamic> _$$DeleteRoomRequestImplToJson(
        _$DeleteRoomRequestImpl instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
    };

_$DeleteRoomResponseImpl _$$DeleteRoomResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteRoomResponseImpl(
      roomId: json['roomId'] as int,
    );

Map<String, dynamic> _$$DeleteRoomResponseImplToJson(
        _$DeleteRoomResponseImpl instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
    };

_$LeaveRoomRequestImpl _$$LeaveRoomRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaveRoomRequestImpl(
      roomId: json['roomId'] as int,
    );

Map<String, dynamic> _$$LeaveRoomRequestImplToJson(
        _$LeaveRoomRequestImpl instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
    };
