// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return _UserInfo.fromJson(json);
}

/// @nodoc
mixin _$UserInfo {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  @HttpImageConverter()
  String get avatar => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  @UserRoleConverter()
  UserRole get role => throw _privateConstructorUsedError;
  int get roomId => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get createAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoCopyWith<UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoCopyWith<$Res> {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) then) =
      _$UserInfoCopyWithImpl<$Res, UserInfo>;
  @useResult
  $Res call(
      {int id,
      String username,
      @HttpImageConverter() String avatar,
      String nickname,
      @UserRoleConverter() UserRole role,
      int roomId,
      bool deleted,
      @DateTimeConverter() DateTime createAt});
}

/// @nodoc
class _$UserInfoCopyWithImpl<$Res, $Val extends UserInfo>
    implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._value, this._then);

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
    Object? role = null,
    Object? roomId = null,
    Object? deleted = null,
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
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInfoImplCopyWith<$Res>
    implements $UserInfoCopyWith<$Res> {
  factory _$$UserInfoImplCopyWith(
          _$UserInfoImpl value, $Res Function(_$UserInfoImpl) then) =
      __$$UserInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String username,
      @HttpImageConverter() String avatar,
      String nickname,
      @UserRoleConverter() UserRole role,
      int roomId,
      bool deleted,
      @DateTimeConverter() DateTime createAt});
}

/// @nodoc
class __$$UserInfoImplCopyWithImpl<$Res>
    extends _$UserInfoCopyWithImpl<$Res, _$UserInfoImpl>
    implements _$$UserInfoImplCopyWith<$Res> {
  __$$UserInfoImplCopyWithImpl(
      _$UserInfoImpl _value, $Res Function(_$UserInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? avatar = null,
    Object? nickname = null,
    Object? role = null,
    Object? roomId = null,
    Object? deleted = null,
    Object? createAt = null,
  }) {
    return _then(_$UserInfoImpl(
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
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
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
class _$UserInfoImpl implements _UserInfo {
  const _$UserInfoImpl(
      {required this.id,
      required this.username,
      @HttpImageConverter() required this.avatar,
      required this.nickname,
      @UserRoleConverter() required this.role,
      required this.roomId,
      required this.deleted,
      @DateTimeConverter() required this.createAt});

  factory _$UserInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoImplFromJson(json);

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
  @UserRoleConverter()
  final UserRole role;
  @override
  final int roomId;
  @override
  final bool deleted;
  @override
  @DateTimeConverter()
  final DateTime createAt;

  @override
  String toString() {
    return 'UserInfo(id: $id, username: $username, avatar: $avatar, nickname: $nickname, role: $role, roomId: $roomId, deleted: $deleted, createAt: $createAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, avatar, nickname,
      role, roomId, deleted, createAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      __$$UserInfoImplCopyWithImpl<_$UserInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoImplToJson(
      this,
    );
  }
}

abstract class _UserInfo implements UserInfo {
  const factory _UserInfo(
      {required final int id,
      required final String username,
      @HttpImageConverter() required final String avatar,
      required final String nickname,
      @UserRoleConverter() required final UserRole role,
      required final int roomId,
      required final bool deleted,
      @DateTimeConverter() required final DateTime createAt}) = _$UserInfoImpl;

  factory _UserInfo.fromJson(Map<String, dynamic> json) =
      _$UserInfoImpl.fromJson;

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
  @UserRoleConverter()
  UserRole get role;
  @override
  int get roomId;
  @override
  bool get deleted;
  @override
  @DateTimeConverter()
  DateTime get createAt;
  @override
  @JsonKey(ignore: true)
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateUserRequest _$UpdateUserRequestFromJson(Map<String, dynamic> json) {
  return _UpdateUserRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserRequest {
  int get userId => throw _privateConstructorUsedError;
  String? get nickname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$UpdateUserRequestImpl implements _UpdateUserRequest {
  const _$UpdateUserRequestImpl({required this.userId, required this.nickname});

  factory _$UpdateUserRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateUserRequestImplFromJson(json);

  @override
  final int userId;
  @override
  final String? nickname;

  @override
  String toString() {
    return 'UpdateUserRequest(userId: $userId, nickname: $nickname)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateUserRequest implements UpdateUserRequest {
  const factory _UpdateUserRequest(
      {required final int userId,
      required final String? nickname}) = _$UpdateUserRequestImpl;

  factory _UpdateUserRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateUserRequestImpl.fromJson;

  @override
  int get userId;
  @override
  String? get nickname;
}

UpdateUserResponse _$UpdateUserResponseFromJson(Map<String, dynamic> json) {
  return _UpdateUserResponse.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserResponse {
  UserInfo get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$UpdateUserResponseImpl implements _UpdateUserResponse {
  const _$UpdateUserResponseImpl({required this.user});

  factory _$UpdateUserResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateUserResponseImplFromJson(json);

  @override
  final UserInfo user;

  @override
  String toString() {
    return 'UpdateUserResponse(user: $user)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserResponseImplToJson(
      this,
    );
  }
}

abstract class _UpdateUserResponse implements UpdateUserResponse {
  const factory _UpdateUserResponse({required final UserInfo user}) =
      _$UpdateUserResponseImpl;

  factory _UpdateUserResponse.fromJson(Map<String, dynamic> json) =
      _$UpdateUserResponseImpl.fromJson;

  @override
  UserInfo get user;
}

ChangeAvatarResponse _$ChangeAvatarResponseFromJson(Map<String, dynamic> json) {
  return _ChangeAvatarResponse.fromJson(json);
}

/// @nodoc
mixin _$ChangeAvatarResponse {
  @HttpImageConverter()
  String get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$ChangeAvatarResponseImpl implements _ChangeAvatarResponse {
  const _$ChangeAvatarResponseImpl(
      {@HttpImageConverter() required this.avatar});

  factory _$ChangeAvatarResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangeAvatarResponseImplFromJson(json);

  @override
  @HttpImageConverter()
  final String avatar;

  @override
  String toString() {
    return 'ChangeAvatarResponse(avatar: $avatar)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeAvatarResponseImplToJson(
      this,
    );
  }
}

abstract class _ChangeAvatarResponse implements ChangeAvatarResponse {
  const factory _ChangeAvatarResponse(
          {@HttpImageConverter() required final String avatar}) =
      _$ChangeAvatarResponseImpl;

  factory _ChangeAvatarResponse.fromJson(Map<String, dynamic> json) =
      _$ChangeAvatarResponseImpl.fromJson;

  @override
  @HttpImageConverter()
  String get avatar;
}

ChangePasswordRequest _$ChangePasswordRequestFromJson(
    Map<String, dynamic> json) {
  return _ChangePasswordRequest.fromJson(json);
}

/// @nodoc
mixin _$ChangePasswordRequest {
  String get oldPassword => throw _privateConstructorUsedError;
  String get newPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$ChangePasswordRequestImpl implements _ChangePasswordRequest {
  const _$ChangePasswordRequestImpl(
      {required this.oldPassword, required this.newPassword});

  factory _$ChangePasswordRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangePasswordRequestImplFromJson(json);

  @override
  final String oldPassword;
  @override
  final String newPassword;

  @override
  String toString() {
    return 'ChangePasswordRequest(oldPassword: $oldPassword, newPassword: $newPassword)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePasswordRequestImplToJson(
      this,
    );
  }
}

abstract class _ChangePasswordRequest implements ChangePasswordRequest {
  const factory _ChangePasswordRequest(
      {required final String oldPassword,
      required final String newPassword}) = _$ChangePasswordRequestImpl;

  factory _ChangePasswordRequest.fromJson(Map<String, dynamic> json) =
      _$ChangePasswordRequestImpl.fromJson;

  @override
  String get oldPassword;
  @override
  String get newPassword;
}

FindUserResponse _$FindUserResponseFromJson(Map<String, dynamic> json) {
  return _FindUserResponse.fromJson(json);
}

/// @nodoc
mixin _$FindUserResponse {
  UserInfo? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$FindUserResponseImpl implements _FindUserResponse {
  const _$FindUserResponseImpl({required this.user});

  factory _$FindUserResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FindUserResponseImplFromJson(json);

  @override
  final UserInfo? user;

  @override
  String toString() {
    return 'FindUserResponse(user: $user)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FindUserResponseImplToJson(
      this,
    );
  }
}

abstract class _FindUserResponse implements FindUserResponse {
  const factory _FindUserResponse({required final UserInfo? user}) =
      _$FindUserResponseImpl;

  factory _FindUserResponse.fromJson(Map<String, dynamic> json) =
      _$FindUserResponseImpl.fromJson;

  @override
  UserInfo? get user;
}
