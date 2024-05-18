// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CliInitializeImpl _$$CliInitializeImplFromJson(Map<String, dynamic> json) =>
    _$CliInitializeImpl(
      InitializeRequest.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$CliInitializeImplToJson(_$CliInitializeImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'action': instance.$type,
    };

_$CliNewMessageImpl _$$CliNewMessageImplFromJson(Map<String, dynamic> json) =>
    _$CliNewMessageImpl(
      NewMessageRequest.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$CliNewMessageImplToJson(_$CliNewMessageImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'action': instance.$type,
    };

_$CliNewRoomImpl _$$CliNewRoomImplFromJson(Map<String, dynamic> json) =>
    _$CliNewRoomImpl(
      NewRoomRequest.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$CliNewRoomImplToJson(_$CliNewRoomImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'action': instance.$type,
    };

_$CliUpdateRoomImpl _$$CliUpdateRoomImplFromJson(Map<String, dynamic> json) =>
    _$CliUpdateRoomImpl(
      UpdateRoomRequest.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$CliUpdateRoomImplToJson(_$CliUpdateRoomImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'action': instance.$type,
    };

_$CliDeleteRoomImpl _$$CliDeleteRoomImplFromJson(Map<String, dynamic> json) =>
    _$CliDeleteRoomImpl(
      DeleteRoomRequest.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$CliDeleteRoomImplToJson(_$CliDeleteRoomImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'action': instance.$type,
    };

_$CliLeaveRoomImpl _$$CliLeaveRoomImplFromJson(Map<String, dynamic> json) =>
    _$CliLeaveRoomImpl(
      LeaveRoomRequest.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$CliLeaveRoomImplToJson(_$CliLeaveRoomImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'action': instance.$type,
    };

_$CliAddMembersImpl _$$CliAddMembersImplFromJson(Map<String, dynamic> json) =>
    _$CliAddMembersImpl(
      AddMembersRequest.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$CliAddMembersImplToJson(_$CliAddMembersImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'action': instance.$type,
    };

_$CliDeleteMembersImpl _$$CliDeleteMembersImplFromJson(
        Map<String, dynamic> json) =>
    _$CliDeleteMembersImpl(
      DeleteMembersRequest.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$CliDeleteMembersImplToJson(
        _$CliDeleteMembersImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'action': instance.$type,
    };

_$CliAddFriendImpl _$$CliAddFriendImplFromJson(Map<String, dynamic> json) =>
    _$CliAddFriendImpl(
      AddFriendRequest.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$CliAddFriendImplToJson(_$CliAddFriendImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'action': instance.$type,
    };

_$CliAcceptFriendImpl _$$CliAcceptFriendImplFromJson(
        Map<String, dynamic> json) =>
    _$CliAcceptFriendImpl(
      AcceptFriendRequest.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$CliAcceptFriendImplToJson(
        _$CliAcceptFriendImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'action': instance.$type,
    };

_$CliRefuseFriendImpl _$$CliRefuseFriendImplFromJson(
        Map<String, dynamic> json) =>
    _$CliRefuseFriendImpl(
      RefuseFriendRequest.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$CliRefuseFriendImplToJson(
        _$CliRefuseFriendImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'action': instance.$type,
    };

_$CliDeleteFriendImpl _$$CliDeleteFriendImplFromJson(
        Map<String, dynamic> json) =>
    _$CliDeleteFriendImpl(
      DeleteFriendRequest.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$CliDeleteFriendImplToJson(
        _$CliDeleteFriendImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'action': instance.$type,
    };

_$SrvErrMessageImpl _$$SrvErrMessageImplFromJson(Map<String, dynamic> json) =>
    _$SrvErrMessageImpl(
      json['data'] as String,
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$SrvErrMessageImplToJson(_$SrvErrMessageImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'action': instance.$type,
    };

_$SrvInitializeImpl _$$SrvInitializeImplFromJson(Map<String, dynamic> json) =>
    _$SrvInitializeImpl(
      InitializeResponse.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$SrvInitializeImplToJson(_$SrvInitializeImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'action': instance.$type,
    };

_$SrvNewMessageImpl _$$SrvNewMessageImplFromJson(Map<String, dynamic> json) =>
    _$SrvNewMessageImpl(
      NewMessageResponse.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$SrvNewMessageImplToJson(_$SrvNewMessageImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'action': instance.$type,
    };

_$SrvNewRoomImpl _$$SrvNewRoomImplFromJson(Map<String, dynamic> json) =>
    _$SrvNewRoomImpl(
      NewRoomResponse.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$SrvNewRoomImplToJson(_$SrvNewRoomImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'action': instance.$type,
    };

_$SrvChangeCoverImpl _$$SrvChangeCoverImplFromJson(Map<String, dynamic> json) =>
    _$SrvChangeCoverImpl(
      ChangeCoverResponse.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$SrvChangeCoverImplToJson(
        _$SrvChangeCoverImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'action': instance.$type,
    };

_$SrvUpdateRoomImpl _$$SrvUpdateRoomImplFromJson(Map<String, dynamic> json) =>
    _$SrvUpdateRoomImpl(
      UpdateRoomResponse.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$SrvUpdateRoomImplToJson(_$SrvUpdateRoomImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'action': instance.$type,
    };

_$SrvDeleteRoomImpl _$$SrvDeleteRoomImplFromJson(Map<String, dynamic> json) =>
    _$SrvDeleteRoomImpl(
      DeleteRoomResponse.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$SrvDeleteRoomImplToJson(_$SrvDeleteRoomImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'action': instance.$type,
    };

_$SrvAddMembersImpl _$$SrvAddMembersImplFromJson(Map<String, dynamic> json) =>
    _$SrvAddMembersImpl(
      AddMembersResponse.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$SrvAddMembersImplToJson(_$SrvAddMembersImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'action': instance.$type,
    };

_$SrvDeleteMembersImpl _$$SrvDeleteMembersImplFromJson(
        Map<String, dynamic> json) =>
    _$SrvDeleteMembersImpl(
      DeleteMembersResponse.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$SrvDeleteMembersImplToJson(
        _$SrvDeleteMembersImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'action': instance.$type,
    };

_$SrvAddFriendImpl _$$SrvAddFriendImplFromJson(Map<String, dynamic> json) =>
    _$SrvAddFriendImpl(
      AddFriendResponse.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$SrvAddFriendImplToJson(_$SrvAddFriendImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'action': instance.$type,
    };

_$SrvAcceptFriendImpl _$$SrvAcceptFriendImplFromJson(
        Map<String, dynamic> json) =>
    _$SrvAcceptFriendImpl(
      AcceptFriendResponse.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$SrvAcceptFriendImplToJson(
        _$SrvAcceptFriendImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'action': instance.$type,
    };

_$SrvRefuseFriendImpl _$$SrvRefuseFriendImplFromJson(
        Map<String, dynamic> json) =>
    _$SrvRefuseFriendImpl(
      RefuseFriendResponse.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$SrvRefuseFriendImplToJson(
        _$SrvRefuseFriendImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'action': instance.$type,
    };

_$SrvDeleteFriendImpl _$$SrvDeleteFriendImplFromJson(
        Map<String, dynamic> json) =>
    _$SrvDeleteFriendImpl(
      DeleteFriendResponse.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['action'] as String?,
    );

Map<String, dynamic> _$$SrvDeleteFriendImplToJson(
        _$SrvDeleteFriendImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'action': instance.$type,
    };
