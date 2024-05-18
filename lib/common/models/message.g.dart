// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageInfoImpl _$$MessageInfoImplFromJson(Map<String, dynamic> json) =>
    _$MessageInfoImpl(
      roomId: json['roomId'] as int,
      senderId: json['senderId'] as int,
      name: json['name'] as String,
      avatar: const HttpImageConverter().fromJson(json['avatar'] as String),
      content: json['content'] as String,
      fileUrl: const HttpImageConverter().fromJson(json['fileUrl'] as String),
      kind: const MessageKindConverter().fromJson(json['kind'] as String),
      divide: json['divide'] as bool,
      sendAt: const DateTimeConverter().fromJson(json['sendAt'] as String),
    );

Map<String, dynamic> _$$MessageInfoImplToJson(_$MessageInfoImpl instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'senderId': instance.senderId,
      'name': instance.name,
      'avatar': const HttpImageConverter().toJson(instance.avatar),
      'content': instance.content,
      'fileUrl': const HttpImageConverter().toJson(instance.fileUrl),
      'kind': const MessageKindConverter().toJson(instance.kind),
      'divide': instance.divide,
      'sendAt': const DateTimeConverter().toJson(instance.sendAt),
    };

_$InitializeRequestImpl _$$InitializeRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$InitializeRequestImpl();

Map<String, dynamic> _$$InitializeRequestImplToJson(
        _$InitializeRequestImpl instance) =>
    <String, dynamic>{};

_$InitializeResponseImpl _$$InitializeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$InitializeResponseImpl(
      rooms: (json['rooms'] as List<dynamic>)
          .map((e) => RoomInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      friends: (json['friends'] as List<dynamic>)
          .map((e) => FriendInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$InitializeResponseImplToJson(
        _$InitializeResponseImpl instance) =>
    <String, dynamic>{
      'rooms': instance.rooms,
      'friends': instance.friends,
    };

_$NewMessageRequestImpl _$$NewMessageRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$NewMessageRequestImpl(
      roomId: json['roomId'] as int,
      content: json['content'] as String,
      fileUrl: json['fileUrl'] as String,
      kind: $enumDecode(_$MessageKindEnumMap, json['kind']),
    );

Map<String, dynamic> _$$NewMessageRequestImplToJson(
        _$NewMessageRequestImpl instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'content': instance.content,
      'fileUrl': instance.fileUrl,
      'kind': _$MessageKindEnumMap[instance.kind]!,
    };

const _$MessageKindEnumMap = {
  MessageKind.text: 'text',
  MessageKind.image: 'image',
  MessageKind.file: 'file',
};

_$NewMessageResponseImpl _$$NewMessageResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$NewMessageResponseImpl(
      message: MessageInfo.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NewMessageResponseImplToJson(
        _$NewMessageResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$SendFileResponseImpl _$$SendFileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SendFileResponseImpl(
      content: json['content'] as String,
      fileUrl: json['fileUrl'] as String,
      kind: const MessageKindConverter().fromJson(json['kind'] as String),
    );

Map<String, dynamic> _$$SendFileResponseImplToJson(
        _$SendFileResponseImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'fileUrl': instance.fileUrl,
      'kind': const MessageKindConverter().toJson(instance.kind),
    };
