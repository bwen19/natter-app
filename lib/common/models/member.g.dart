// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemberInfoImpl _$$MemberInfoImplFromJson(Map<String, dynamic> json) =>
    _$MemberInfoImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      avatar: const HttpImageConverter().fromJson(json['avatar'] as String),
      rank: const MemberRankConverter().fromJson(json['rank'] as String),
      joinAt: const DateTimeConverter().fromJson(json['joinAt'] as String),
    );

Map<String, dynamic> _$$MemberInfoImplToJson(_$MemberInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': const HttpImageConverter().toJson(instance.avatar),
      'rank': const MemberRankConverter().toJson(instance.rank),
      'joinAt': const DateTimeConverter().toJson(instance.joinAt),
    };

_$AddMembersRequestImpl _$$AddMembersRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AddMembersRequestImpl(
      roomId: json['roomId'] as int,
      membersId:
          (json['membersId'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$AddMembersRequestImplToJson(
        _$AddMembersRequestImpl instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'membersId': instance.membersId,
    };

_$AddMembersResponseImpl _$$AddMembersResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AddMembersResponseImpl(
      roomId: json['roomId'] as int,
      members: (json['members'] as List<dynamic>)
          .map((e) => MemberInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AddMembersResponseImplToJson(
        _$AddMembersResponseImpl instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'members': instance.members,
    };

_$DeleteMembersRequestImpl _$$DeleteMembersRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteMembersRequestImpl(
      roomId: json['roomId'] as int,
      membersId:
          (json['membersId'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$DeleteMembersRequestImplToJson(
        _$DeleteMembersRequestImpl instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'membersId': instance.membersId,
    };

_$DeleteMembersResponseImpl _$$DeleteMembersResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteMembersResponseImpl(
      roomId: json['roomId'] as int,
      membersId:
          (json['membersId'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$DeleteMembersResponseImplToJson(
        _$DeleteMembersResponseImpl instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'membersId': instance.membersId,
    };
