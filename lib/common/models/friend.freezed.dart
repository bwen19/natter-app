// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friend.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FriendInfo _$FriendInfoFromJson(Map<String, dynamic> json) {
  return _FriendInfo.fromJson(json);
}

/// @nodoc
mixin _$FriendInfo {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  @HttpImageConverter()
  String get avatar => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  @FriendStatusConverter()
  FriendStatus get status => throw _privateConstructorUsedError;
  int get roomId => throw _privateConstructorUsedError;
  bool get first => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get createAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FriendInfoCopyWith<FriendInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendInfoCopyWith<$Res> {
  factory $FriendInfoCopyWith(
          FriendInfo value, $Res Function(FriendInfo) then) =
      _$FriendInfoCopyWithImpl<$Res, FriendInfo>;
  @useResult
  $Res call(
      {int id,
      String username,
      @HttpImageConverter() String avatar,
      String nickname,
      @FriendStatusConverter() FriendStatus status,
      int roomId,
      bool first,
      @DateTimeConverter() DateTime createAt});
}

/// @nodoc
class _$FriendInfoCopyWithImpl<$Res, $Val extends FriendInfo>
    implements $FriendInfoCopyWith<$Res> {
  _$FriendInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? avatar = null,
    Object? nickname = null,
    Object? status = null,
    Object? roomId = null,
    Object? first = null,
    Object? createAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FriendStatus,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FriendInfoImplCopyWith<$Res>
    implements $FriendInfoCopyWith<$Res> {
  factory _$$FriendInfoImplCopyWith(
          _$FriendInfoImpl value, $Res Function(_$FriendInfoImpl) then) =
      __$$FriendInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String username,
      @HttpImageConverter() String avatar,
      String nickname,
      @FriendStatusConverter() FriendStatus status,
      int roomId,
      bool first,
      @DateTimeConverter() DateTime createAt});
}

/// @nodoc
class __$$FriendInfoImplCopyWithImpl<$Res>
    extends _$FriendInfoCopyWithImpl<$Res, _$FriendInfoImpl>
    implements _$$FriendInfoImplCopyWith<$Res> {
  __$$FriendInfoImplCopyWithImpl(
      _$FriendInfoImpl _value, $Res Function(_$FriendInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? avatar = null,
    Object? nickname = null,
    Object? status = null,
    Object? roomId = null,
    Object? first = null,
    Object? createAt = null,
  }) {
    return _then(_$FriendInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FriendStatus,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FriendInfoImpl implements _FriendInfo {
  const _$FriendInfoImpl(
      {required this.id,
      required this.username,
      @HttpImageConverter() required this.avatar,
      required this.nickname,
      @FriendStatusConverter() required this.status,
      required this.roomId,
      required this.first,
      @DateTimeConverter() required this.createAt});

  factory _$FriendInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FriendInfoImplFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  @HttpImageConverter()
  final String avatar;
  @override
  final String nickname;
  @override
  @FriendStatusConverter()
  final FriendStatus status;
  @override
  final int roomId;
  @override
  final bool first;
  @override
  @DateTimeConverter()
  final DateTime createAt;

  @override
  String toString() {
    return 'FriendInfo(id: $id, username: $username, avatar: $avatar, nickname: $nickname, status: $status, roomId: $roomId, first: $first, createAt: $createAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FriendInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, avatar, nickname,
      status, roomId, first, createAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FriendInfoImplCopyWith<_$FriendInfoImpl> get copyWith =>
      __$$FriendInfoImplCopyWithImpl<_$FriendInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FriendInfoImplToJson(
      this,
    );
  }
}

abstract class _FriendInfo implements FriendInfo {
  const factory _FriendInfo(
          {required final int id,
          required final String username,
          @HttpImageConverter() required final String avatar,
          required final String nickname,
          @FriendStatusConverter() required final FriendStatus status,
          required final int roomId,
          required final bool first,
          @DateTimeConverter() required final DateTime createAt}) =
      _$FriendInfoImpl;

  factory _FriendInfo.fromJson(Map<String, dynamic> json) =
      _$FriendInfoImpl.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  @HttpImageConverter()
  String get avatar;
  @override
  String get nickname;
  @override
  @FriendStatusConverter()
  FriendStatus get status;
  @override
  int get roomId;
  @override
  bool get first;
  @override
  @DateTimeConverter()
  DateTime get createAt;
  @override
  @JsonKey(ignore: true)
  _$$FriendInfoImplCopyWith<_$FriendInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddFriendRequest _$AddFriendRequestFromJson(Map<String, dynamic> json) {
  return _AddFriendRequest.fromJson(json);
}

/// @nodoc
mixin _$AddFriendRequest {
  int get friendId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$AddFriendRequestImpl implements _AddFriendRequest {
  const _$AddFriendRequestImpl({required this.friendId});

  factory _$AddFriendRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddFriendRequestImplFromJson(json);

  @override
  final int friendId;

  @override
  String toString() {
    return 'AddFriendRequest(friendId: $friendId)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AddFriendRequestImplToJson(
      this,
    );
  }
}

abstract class _AddFriendRequest implements AddFriendRequest {
  const factory _AddFriendRequest({required final int friendId}) =
      _$AddFriendRequestImpl;

  factory _AddFriendRequest.fromJson(Map<String, dynamic> json) =
      _$AddFriendRequestImpl.fromJson;

  @override
  int get friendId;
}

AddFriendResponse _$AddFriendResponseFromJson(Map<String, dynamic> json) {
  return _AddFriendResponse.fromJson(json);
}

/// @nodoc
mixin _$AddFriendResponse {
  FriendInfo get friend => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$AddFriendResponseImpl implements _AddFriendResponse {
  const _$AddFriendResponseImpl({required this.friend});

  factory _$AddFriendResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddFriendResponseImplFromJson(json);

  @override
  final FriendInfo friend;

  @override
  String toString() {
    return 'AddFriendResponse(friend: $friend)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AddFriendResponseImplToJson(
      this,
    );
  }
}

abstract class _AddFriendResponse implements AddFriendResponse {
  const factory _AddFriendResponse({required final FriendInfo friend}) =
      _$AddFriendResponseImpl;

  factory _AddFriendResponse.fromJson(Map<String, dynamic> json) =
      _$AddFriendResponseImpl.fromJson;

  @override
  FriendInfo get friend;
}

AcceptFriendRequest _$AcceptFriendRequestFromJson(Map<String, dynamic> json) {
  return _AcceptFriendRequest.fromJson(json);
}

/// @nodoc
mixin _$AcceptFriendRequest {
  int get friendId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$AcceptFriendRequestImpl implements _AcceptFriendRequest {
  const _$AcceptFriendRequestImpl({required this.friendId});

  factory _$AcceptFriendRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AcceptFriendRequestImplFromJson(json);

  @override
  final int friendId;

  @override
  String toString() {
    return 'AcceptFriendRequest(friendId: $friendId)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AcceptFriendRequestImplToJson(
      this,
    );
  }
}

abstract class _AcceptFriendRequest implements AcceptFriendRequest {
  const factory _AcceptFriendRequest({required final int friendId}) =
      _$AcceptFriendRequestImpl;

  factory _AcceptFriendRequest.fromJson(Map<String, dynamic> json) =
      _$AcceptFriendRequestImpl.fromJson;

  @override
  int get friendId;
}

AcceptFriendResponse _$AcceptFriendResponseFromJson(Map<String, dynamic> json) {
  return _AcceptFriendResponse.fromJson(json);
}

/// @nodoc
mixin _$AcceptFriendResponse {
  FriendInfo get friend => throw _privateConstructorUsedError;
  RoomInfo get room => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$AcceptFriendResponseImpl implements _AcceptFriendResponse {
  const _$AcceptFriendResponseImpl({required this.friend, required this.room});

  factory _$AcceptFriendResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AcceptFriendResponseImplFromJson(json);

  @override
  final FriendInfo friend;
  @override
  final RoomInfo room;

  @override
  String toString() {
    return 'AcceptFriendResponse(friend: $friend, room: $room)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AcceptFriendResponseImplToJson(
      this,
    );
  }
}

abstract class _AcceptFriendResponse implements AcceptFriendResponse {
  const factory _AcceptFriendResponse(
      {required final FriendInfo friend,
      required final RoomInfo room}) = _$AcceptFriendResponseImpl;

  factory _AcceptFriendResponse.fromJson(Map<String, dynamic> json) =
      _$AcceptFriendResponseImpl.fromJson;

  @override
  FriendInfo get friend;
  @override
  RoomInfo get room;
}

RefuseFriendRequest _$RefuseFriendRequestFromJson(Map<String, dynamic> json) {
  return _RefuseFriendRequest.fromJson(json);
}

/// @nodoc
mixin _$RefuseFriendRequest {
  int get friendId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$RefuseFriendRequestImpl implements _RefuseFriendRequest {
  const _$RefuseFriendRequestImpl({required this.friendId});

  factory _$RefuseFriendRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefuseFriendRequestImplFromJson(json);

  @override
  final int friendId;

  @override
  String toString() {
    return 'RefuseFriendRequest(friendId: $friendId)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RefuseFriendRequestImplToJson(
      this,
    );
  }
}

abstract class _RefuseFriendRequest implements RefuseFriendRequest {
  const factory _RefuseFriendRequest({required final int friendId}) =
      _$RefuseFriendRequestImpl;

  factory _RefuseFriendRequest.fromJson(Map<String, dynamic> json) =
      _$RefuseFriendRequestImpl.fromJson;

  @override
  int get friendId;
}

RefuseFriendResponse _$RefuseFriendResponseFromJson(Map<String, dynamic> json) {
  return _RefuseFriendResponse.fromJson(json);
}

/// @nodoc
mixin _$RefuseFriendResponse {
  int get friendId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$RefuseFriendResponseImpl implements _RefuseFriendResponse {
  const _$RefuseFriendResponseImpl({required this.friendId});

  factory _$RefuseFriendResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefuseFriendResponseImplFromJson(json);

  @override
  final int friendId;

  @override
  String toString() {
    return 'RefuseFriendResponse(friendId: $friendId)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RefuseFriendResponseImplToJson(
      this,
    );
  }
}

abstract class _RefuseFriendResponse implements RefuseFriendResponse {
  const factory _RefuseFriendResponse({required final int friendId}) =
      _$RefuseFriendResponseImpl;

  factory _RefuseFriendResponse.fromJson(Map<String, dynamic> json) =
      _$RefuseFriendResponseImpl.fromJson;

  @override
  int get friendId;
}

DeleteFriendRequest _$DeleteFriendRequestFromJson(Map<String, dynamic> json) {
  return _DeleteFriendRequest.fromJson(json);
}

/// @nodoc
mixin _$DeleteFriendRequest {
  int get friendId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$DeleteFriendRequestImpl implements _DeleteFriendRequest {
  const _$DeleteFriendRequestImpl({required this.friendId});

  factory _$DeleteFriendRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteFriendRequestImplFromJson(json);

  @override
  final int friendId;

  @override
  String toString() {
    return 'DeleteFriendRequest(friendId: $friendId)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteFriendRequestImplToJson(
      this,
    );
  }
}

abstract class _DeleteFriendRequest implements DeleteFriendRequest {
  const factory _DeleteFriendRequest({required final int friendId}) =
      _$DeleteFriendRequestImpl;

  factory _DeleteFriendRequest.fromJson(Map<String, dynamic> json) =
      _$DeleteFriendRequestImpl.fromJson;

  @override
  int get friendId;
}

DeleteFriendResponse _$DeleteFriendResponseFromJson(Map<String, dynamic> json) {
  return _DeleteFriendResponse.fromJson(json);
}

/// @nodoc
mixin _$DeleteFriendResponse {
  int get friendId => throw _privateConstructorUsedError;
  int get roomId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$DeleteFriendResponseImpl implements _DeleteFriendResponse {
  const _$DeleteFriendResponseImpl(
      {required this.friendId, required this.roomId});

  factory _$DeleteFriendResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteFriendResponseImplFromJson(json);

  @override
  final int friendId;
  @override
  final int roomId;

  @override
  String toString() {
    return 'DeleteFriendResponse(friendId: $friendId, roomId: $roomId)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteFriendResponseImplToJson(
      this,
    );
  }
}

abstract class _DeleteFriendResponse implements DeleteFriendResponse {
  const factory _DeleteFriendResponse(
      {required final int friendId,
      required final int roomId}) = _$DeleteFriendResponseImpl;

  factory _DeleteFriendResponse.fromJson(Map<String, dynamic> json) =
      _$DeleteFriendResponseImpl.fromJson;

  @override
  int get friendId;
  @override
  int get roomId;
}
