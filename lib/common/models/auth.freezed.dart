// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) {
  return _LoginRequest.fromJson(json);
}

/// @nodoc
mixin _$LoginRequest {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$LoginRequestImpl implements _LoginRequest {
  _$LoginRequestImpl({required this.username, required this.password});

  factory _$LoginRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginRequestImplFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginRequest(username: $username, password: $password)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginRequestImplToJson(
      this,
    );
  }
}

abstract class _LoginRequest implements LoginRequest {
  factory _LoginRequest(
      {required final String username,
      required final String password}) = _$LoginRequestImpl;

  factory _LoginRequest.fromJson(Map<String, dynamic> json) =
      _$LoginRequestImpl.fromJson;

  @override
  String get username;
  @override
  String get password;
}

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return _LoginResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginResponse {
  UserInfo get user => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get expireAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$LoginResponseImpl implements _LoginResponse {
  _$LoginResponseImpl(
      {required this.user,
      required this.accessToken,
      required this.refreshToken,
      @DateTimeConverter() required this.expireAt});

  factory _$LoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseImplFromJson(json);

  @override
  final UserInfo user;
  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  @DateTimeConverter()
  final DateTime expireAt;

  @override
  String toString() {
    return 'LoginResponse(user: $user, accessToken: $accessToken, refreshToken: $refreshToken, expireAt: $expireAt)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseImplToJson(
      this,
    );
  }
}

abstract class _LoginResponse implements LoginResponse {
  factory _LoginResponse(
          {required final UserInfo user,
          required final String accessToken,
          required final String refreshToken,
          @DateTimeConverter() required final DateTime expireAt}) =
      _$LoginResponseImpl;

  factory _LoginResponse.fromJson(Map<String, dynamic> json) =
      _$LoginResponseImpl.fromJson;

  @override
  UserInfo get user;
  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  @DateTimeConverter()
  DateTime get expireAt;
}

AutoLoginRequest _$AutoLoginRequestFromJson(Map<String, dynamic> json) {
  return _AutoLoginRequest.fromJson(json);
}

/// @nodoc
mixin _$AutoLoginRequest {
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$AutoLoginRequestImpl implements _AutoLoginRequest {
  _$AutoLoginRequestImpl({required this.refreshToken});

  factory _$AutoLoginRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutoLoginRequestImplFromJson(json);

  @override
  final String refreshToken;

  @override
  String toString() {
    return 'AutoLoginRequest(refreshToken: $refreshToken)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AutoLoginRequestImplToJson(
      this,
    );
  }
}

abstract class _AutoLoginRequest implements AutoLoginRequest {
  factory _AutoLoginRequest({required final String refreshToken}) =
      _$AutoLoginRequestImpl;

  factory _AutoLoginRequest.fromJson(Map<String, dynamic> json) =
      _$AutoLoginRequestImpl.fromJson;

  @override
  String get refreshToken;
}

RenewTokenRequest _$RenewTokenRequestFromJson(Map<String, dynamic> json) {
  return _RenewTokenRequest.fromJson(json);
}

/// @nodoc
mixin _$RenewTokenRequest {
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$RenewTokenRequestImpl implements _RenewTokenRequest {
  const _$RenewTokenRequestImpl({required this.refreshToken});

  factory _$RenewTokenRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RenewTokenRequestImplFromJson(json);

  @override
  final String refreshToken;

  @override
  String toString() {
    return 'RenewTokenRequest(refreshToken: $refreshToken)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RenewTokenRequestImplToJson(
      this,
    );
  }
}

abstract class _RenewTokenRequest implements RenewTokenRequest {
  const factory _RenewTokenRequest({required final String refreshToken}) =
      _$RenewTokenRequestImpl;

  factory _RenewTokenRequest.fromJson(Map<String, dynamic> json) =
      _$RenewTokenRequestImpl.fromJson;

  @override
  String get refreshToken;
}

RenewTokenResponse _$RenewTokenResponseFromJson(Map<String, dynamic> json) {
  return _RenewTokenResponse.fromJson(json);
}

/// @nodoc
mixin _$RenewTokenResponse {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get expireAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$RenewTokenResponseImpl implements _RenewTokenResponse {
  _$RenewTokenResponseImpl(
      {required this.accessToken,
      required this.refreshToken,
      @DateTimeConverter() required this.expireAt});

  factory _$RenewTokenResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RenewTokenResponseImplFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  @DateTimeConverter()
  final DateTime expireAt;

  @override
  String toString() {
    return 'RenewTokenResponse(accessToken: $accessToken, refreshToken: $refreshToken, expireAt: $expireAt)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RenewTokenResponseImplToJson(
      this,
    );
  }
}

abstract class _RenewTokenResponse implements RenewTokenResponse {
  factory _RenewTokenResponse(
          {required final String accessToken,
          required final String refreshToken,
          @DateTimeConverter() required final DateTime expireAt}) =
      _$RenewTokenResponseImpl;

  factory _RenewTokenResponse.fromJson(Map<String, dynamic> json) =
      _$RenewTokenResponseImpl.fromJson;

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  @DateTimeConverter()
  DateTime get expireAt;
}

LogoutRequest _$LogoutRequestFromJson(Map<String, dynamic> json) {
  return _LogoutRequest.fromJson(json);
}

/// @nodoc
mixin _$LogoutRequest {
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogoutRequestCopyWith<LogoutRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutRequestCopyWith<$Res> {
  factory $LogoutRequestCopyWith(
          LogoutRequest value, $Res Function(LogoutRequest) then) =
      _$LogoutRequestCopyWithImpl<$Res, LogoutRequest>;
  @useResult
  $Res call({String refreshToken});
}

/// @nodoc
class _$LogoutRequestCopyWithImpl<$Res, $Val extends LogoutRequest>
    implements $LogoutRequestCopyWith<$Res> {
  _$LogoutRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogoutRequestImplCopyWith<$Res>
    implements $LogoutRequestCopyWith<$Res> {
  factory _$$LogoutRequestImplCopyWith(
          _$LogoutRequestImpl value, $Res Function(_$LogoutRequestImpl) then) =
      __$$LogoutRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String refreshToken});
}

/// @nodoc
class __$$LogoutRequestImplCopyWithImpl<$Res>
    extends _$LogoutRequestCopyWithImpl<$Res, _$LogoutRequestImpl>
    implements _$$LogoutRequestImplCopyWith<$Res> {
  __$$LogoutRequestImplCopyWithImpl(
      _$LogoutRequestImpl _value, $Res Function(_$LogoutRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
  }) {
    return _then(_$LogoutRequestImpl(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LogoutRequestImpl implements _LogoutRequest {
  const _$LogoutRequestImpl({required this.refreshToken});

  factory _$LogoutRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogoutRequestImplFromJson(json);

  @override
  final String refreshToken;

  @override
  String toString() {
    return 'LogoutRequest(refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutRequestImpl &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutRequestImplCopyWith<_$LogoutRequestImpl> get copyWith =>
      __$$LogoutRequestImplCopyWithImpl<_$LogoutRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LogoutRequestImplToJson(
      this,
    );
  }
}

abstract class _LogoutRequest implements LogoutRequest {
  const factory _LogoutRequest({required final String refreshToken}) =
      _$LogoutRequestImpl;

  factory _LogoutRequest.fromJson(Map<String, dynamic> json) =
      _$LogoutRequestImpl.fromJson;

  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$LogoutRequestImplCopyWith<_$LogoutRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
