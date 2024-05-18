// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageInfo _$MessageInfoFromJson(Map<String, dynamic> json) {
  return _MessageInfo.fromJson(json);
}

/// @nodoc
mixin _$MessageInfo {
  int get roomId => throw _privateConstructorUsedError;
  int get senderId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @HttpImageConverter()
  String get avatar => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @HttpImageConverter()
  String get fileUrl => throw _privateConstructorUsedError;
  @MessageKindConverter()
  MessageKind get kind => throw _privateConstructorUsedError;
  bool get divide => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get sendAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$MessageInfoImpl implements _MessageInfo {
  const _$MessageInfoImpl(
      {required this.roomId,
      required this.senderId,
      required this.name,
      @HttpImageConverter() required this.avatar,
      required this.content,
      @HttpImageConverter() required this.fileUrl,
      @MessageKindConverter() required this.kind,
      required this.divide,
      @DateTimeConverter() required this.sendAt});

  factory _$MessageInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageInfoImplFromJson(json);

  @override
  final int roomId;
  @override
  final int senderId;
  @override
  final String name;
  @override
  @HttpImageConverter()
  final String avatar;
  @override
  final String content;
  @override
  @HttpImageConverter()
  final String fileUrl;
  @override
  @MessageKindConverter()
  final MessageKind kind;
  @override
  final bool divide;
  @override
  @DateTimeConverter()
  final DateTime sendAt;

  @override
  String toString() {
    return 'MessageInfo(roomId: $roomId, senderId: $senderId, name: $name, avatar: $avatar, content: $content, fileUrl: $fileUrl, kind: $kind, divide: $divide, sendAt: $sendAt)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageInfoImplToJson(
      this,
    );
  }
}

abstract class _MessageInfo implements MessageInfo {
  const factory _MessageInfo(
      {required final int roomId,
      required final int senderId,
      required final String name,
      @HttpImageConverter() required final String avatar,
      required final String content,
      @HttpImageConverter() required final String fileUrl,
      @MessageKindConverter() required final MessageKind kind,
      required final bool divide,
      @DateTimeConverter() required final DateTime sendAt}) = _$MessageInfoImpl;

  factory _MessageInfo.fromJson(Map<String, dynamic> json) =
      _$MessageInfoImpl.fromJson;

  @override
  int get roomId;
  @override
  int get senderId;
  @override
  String get name;
  @override
  @HttpImageConverter()
  String get avatar;
  @override
  String get content;
  @override
  @HttpImageConverter()
  String get fileUrl;
  @override
  @MessageKindConverter()
  MessageKind get kind;
  @override
  bool get divide;
  @override
  @DateTimeConverter()
  DateTime get sendAt;
}

InitializeRequest _$InitializeRequestFromJson(Map<String, dynamic> json) {
  return _InitializeRequest.fromJson(json);
}

/// @nodoc
mixin _$InitializeRequest {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$InitializeRequestImpl implements _InitializeRequest {
  const _$InitializeRequestImpl();

  factory _$InitializeRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitializeRequestImplFromJson(json);

  @override
  String toString() {
    return 'InitializeRequest()';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InitializeRequestImplToJson(
      this,
    );
  }
}

abstract class _InitializeRequest implements InitializeRequest {
  const factory _InitializeRequest() = _$InitializeRequestImpl;

  factory _InitializeRequest.fromJson(Map<String, dynamic> json) =
      _$InitializeRequestImpl.fromJson;
}

InitializeResponse _$InitializeResponseFromJson(Map<String, dynamic> json) {
  return _InitializeResponse.fromJson(json);
}

/// @nodoc
mixin _$InitializeResponse {
  List<RoomInfo> get rooms => throw _privateConstructorUsedError;
  List<FriendInfo> get friends => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$InitializeResponseImpl implements _InitializeResponse {
  const _$InitializeResponseImpl(
      {required final List<RoomInfo> rooms,
      required final List<FriendInfo> friends})
      : _rooms = rooms,
        _friends = friends;

  factory _$InitializeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitializeResponseImplFromJson(json);

  final List<RoomInfo> _rooms;
  @override
  List<RoomInfo> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  final List<FriendInfo> _friends;
  @override
  List<FriendInfo> get friends {
    if (_friends is EqualUnmodifiableListView) return _friends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_friends);
  }

  @override
  String toString() {
    return 'InitializeResponse(rooms: $rooms, friends: $friends)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InitializeResponseImplToJson(
      this,
    );
  }
}

abstract class _InitializeResponse implements InitializeResponse {
  const factory _InitializeResponse(
      {required final List<RoomInfo> rooms,
      required final List<FriendInfo> friends}) = _$InitializeResponseImpl;

  factory _InitializeResponse.fromJson(Map<String, dynamic> json) =
      _$InitializeResponseImpl.fromJson;

  @override
  List<RoomInfo> get rooms;
  @override
  List<FriendInfo> get friends;
}

NewMessageRequest _$NewMessageRequestFromJson(Map<String, dynamic> json) {
  return _NewMessageRequest.fromJson(json);
}

/// @nodoc
mixin _$NewMessageRequest {
  int get roomId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get fileUrl => throw _privateConstructorUsedError;
  MessageKind get kind => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$NewMessageRequestImpl implements _NewMessageRequest {
  const _$NewMessageRequestImpl(
      {required this.roomId,
      required this.content,
      required this.fileUrl,
      required this.kind});

  factory _$NewMessageRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewMessageRequestImplFromJson(json);

  @override
  final int roomId;
  @override
  final String content;
  @override
  final String fileUrl;
  @override
  final MessageKind kind;

  @override
  String toString() {
    return 'NewMessageRequest(roomId: $roomId, content: $content, fileUrl: $fileUrl, kind: $kind)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NewMessageRequestImplToJson(
      this,
    );
  }
}

abstract class _NewMessageRequest implements NewMessageRequest {
  const factory _NewMessageRequest(
      {required final int roomId,
      required final String content,
      required final String fileUrl,
      required final MessageKind kind}) = _$NewMessageRequestImpl;

  factory _NewMessageRequest.fromJson(Map<String, dynamic> json) =
      _$NewMessageRequestImpl.fromJson;

  @override
  int get roomId;
  @override
  String get content;
  @override
  String get fileUrl;
  @override
  MessageKind get kind;
}

NewMessageResponse _$NewMessageResponseFromJson(Map<String, dynamic> json) {
  return _NewMessageResponse.fromJson(json);
}

/// @nodoc
mixin _$NewMessageResponse {
  MessageInfo get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$NewMessageResponseImpl implements _NewMessageResponse {
  const _$NewMessageResponseImpl({required this.message});

  factory _$NewMessageResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewMessageResponseImplFromJson(json);

  @override
  final MessageInfo message;

  @override
  String toString() {
    return 'NewMessageResponse(message: $message)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NewMessageResponseImplToJson(
      this,
    );
  }
}

abstract class _NewMessageResponse implements NewMessageResponse {
  const factory _NewMessageResponse({required final MessageInfo message}) =
      _$NewMessageResponseImpl;

  factory _NewMessageResponse.fromJson(Map<String, dynamic> json) =
      _$NewMessageResponseImpl.fromJson;

  @override
  MessageInfo get message;
}

SendFileResponse _$SendFileResponseFromJson(Map<String, dynamic> json) {
  return _SendFileResponse.fromJson(json);
}

/// @nodoc
mixin _$SendFileResponse {
  String get content => throw _privateConstructorUsedError;
  String get fileUrl => throw _privateConstructorUsedError;
  @MessageKindConverter()
  MessageKind get kind => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$SendFileResponseImpl implements _SendFileResponse {
  const _$SendFileResponseImpl(
      {required this.content,
      required this.fileUrl,
      @MessageKindConverter() required this.kind});

  factory _$SendFileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendFileResponseImplFromJson(json);

  @override
  final String content;
  @override
  final String fileUrl;
  @override
  @MessageKindConverter()
  final MessageKind kind;

  @override
  String toString() {
    return 'SendFileResponse(content: $content, fileUrl: $fileUrl, kind: $kind)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SendFileResponseImplToJson(
      this,
    );
  }
}

abstract class _SendFileResponse implements SendFileResponse {
  const factory _SendFileResponse(
          {required final String content,
          required final String fileUrl,
          @MessageKindConverter() required final MessageKind kind}) =
      _$SendFileResponseImpl;

  factory _SendFileResponse.fromJson(Map<String, dynamic> json) =
      _$SendFileResponseImpl.fromJson;

  @override
  String get content;
  @override
  String get fileUrl;
  @override
  @MessageKindConverter()
  MessageKind get kind;
}
