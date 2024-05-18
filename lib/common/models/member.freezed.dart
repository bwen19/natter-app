// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MemberInfo _$MemberInfoFromJson(Map<String, dynamic> json) {
  return _MemberInfo.fromJson(json);
}

/// @nodoc
mixin _$MemberInfo {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @HttpImageConverter()
  String get avatar => throw _privateConstructorUsedError;
  @MemberRankConverter()
  MemberRank get rank => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get joinAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberInfoCopyWith<MemberInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberInfoCopyWith<$Res> {
  factory $MemberInfoCopyWith(
          MemberInfo value, $Res Function(MemberInfo) then) =
      _$MemberInfoCopyWithImpl<$Res, MemberInfo>;
  @useResult
  $Res call(
      {int id,
      String name,
      @HttpImageConverter() String avatar,
      @MemberRankConverter() MemberRank rank,
      @DateTimeConverter() DateTime joinAt});
}

/// @nodoc
class _$MemberInfoCopyWithImpl<$Res, $Val extends MemberInfo>
    implements $MemberInfoCopyWith<$Res> {
  _$MemberInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatar = null,
    Object? rank = null,
    Object? joinAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as MemberRank,
      joinAt: null == joinAt
          ? _value.joinAt
          : joinAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberInfoImplCopyWith<$Res>
    implements $MemberInfoCopyWith<$Res> {
  factory _$$MemberInfoImplCopyWith(
          _$MemberInfoImpl value, $Res Function(_$MemberInfoImpl) then) =
      __$$MemberInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @HttpImageConverter() String avatar,
      @MemberRankConverter() MemberRank rank,
      @DateTimeConverter() DateTime joinAt});
}

/// @nodoc
class __$$MemberInfoImplCopyWithImpl<$Res>
    extends _$MemberInfoCopyWithImpl<$Res, _$MemberInfoImpl>
    implements _$$MemberInfoImplCopyWith<$Res> {
  __$$MemberInfoImplCopyWithImpl(
      _$MemberInfoImpl _value, $Res Function(_$MemberInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatar = null,
    Object? rank = null,
    Object? joinAt = null,
  }) {
    return _then(_$MemberInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as MemberRank,
      joinAt: null == joinAt
          ? _value.joinAt
          : joinAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberInfoImpl implements _MemberInfo {
  const _$MemberInfoImpl(
      {required this.id,
      required this.name,
      @HttpImageConverter() required this.avatar,
      @MemberRankConverter() required this.rank,
      @DateTimeConverter() required this.joinAt});

  factory _$MemberInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberInfoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @HttpImageConverter()
  final String avatar;
  @override
  @MemberRankConverter()
  final MemberRank rank;
  @override
  @DateTimeConverter()
  final DateTime joinAt;

  @override
  String toString() {
    return 'MemberInfo(id: $id, name: $name, avatar: $avatar, rank: $rank, joinAt: $joinAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.joinAt, joinAt) || other.joinAt == joinAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatar, rank, joinAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberInfoImplCopyWith<_$MemberInfoImpl> get copyWith =>
      __$$MemberInfoImplCopyWithImpl<_$MemberInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberInfoImplToJson(
      this,
    );
  }
}

abstract class _MemberInfo implements MemberInfo {
  const factory _MemberInfo(
      {required final int id,
      required final String name,
      @HttpImageConverter() required final String avatar,
      @MemberRankConverter() required final MemberRank rank,
      @DateTimeConverter() required final DateTime joinAt}) = _$MemberInfoImpl;

  factory _MemberInfo.fromJson(Map<String, dynamic> json) =
      _$MemberInfoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @HttpImageConverter()
  String get avatar;
  @override
  @MemberRankConverter()
  MemberRank get rank;
  @override
  @DateTimeConverter()
  DateTime get joinAt;
  @override
  @JsonKey(ignore: true)
  _$$MemberInfoImplCopyWith<_$MemberInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddMembersRequest _$AddMembersRequestFromJson(Map<String, dynamic> json) {
  return _AddMembersRequest.fromJson(json);
}

/// @nodoc
mixin _$AddMembersRequest {
  int get roomId => throw _privateConstructorUsedError;
  List<int> get membersId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$AddMembersRequestImpl implements _AddMembersRequest {
  const _$AddMembersRequestImpl(
      {required this.roomId, required final List<int> membersId})
      : _membersId = membersId;

  factory _$AddMembersRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddMembersRequestImplFromJson(json);

  @override
  final int roomId;
  final List<int> _membersId;
  @override
  List<int> get membersId {
    if (_membersId is EqualUnmodifiableListView) return _membersId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_membersId);
  }

  @override
  String toString() {
    return 'AddMembersRequest(roomId: $roomId, membersId: $membersId)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AddMembersRequestImplToJson(
      this,
    );
  }
}

abstract class _AddMembersRequest implements AddMembersRequest {
  const factory _AddMembersRequest(
      {required final int roomId,
      required final List<int> membersId}) = _$AddMembersRequestImpl;

  factory _AddMembersRequest.fromJson(Map<String, dynamic> json) =
      _$AddMembersRequestImpl.fromJson;

  @override
  int get roomId;
  @override
  List<int> get membersId;
}

AddMembersResponse _$AddMembersResponseFromJson(Map<String, dynamic> json) {
  return _AddMembersResponse.fromJson(json);
}

/// @nodoc
mixin _$AddMembersResponse {
  int get roomId => throw _privateConstructorUsedError;
  List<MemberInfo> get members => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$AddMembersResponseImpl implements _AddMembersResponse {
  const _$AddMembersResponseImpl(
      {required this.roomId, required final List<MemberInfo> members})
      : _members = members;

  factory _$AddMembersResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddMembersResponseImplFromJson(json);

  @override
  final int roomId;
  final List<MemberInfo> _members;
  @override
  List<MemberInfo> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString() {
    return 'AddMembersResponse(roomId: $roomId, members: $members)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AddMembersResponseImplToJson(
      this,
    );
  }
}

abstract class _AddMembersResponse implements AddMembersResponse {
  const factory _AddMembersResponse(
      {required final int roomId,
      required final List<MemberInfo> members}) = _$AddMembersResponseImpl;

  factory _AddMembersResponse.fromJson(Map<String, dynamic> json) =
      _$AddMembersResponseImpl.fromJson;

  @override
  int get roomId;
  @override
  List<MemberInfo> get members;
}

DeleteMembersRequest _$DeleteMembersRequestFromJson(Map<String, dynamic> json) {
  return _DeleteMembersRequest.fromJson(json);
}

/// @nodoc
mixin _$DeleteMembersRequest {
  int get roomId => throw _privateConstructorUsedError;
  List<int> get membersId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$DeleteMembersRequestImpl implements _DeleteMembersRequest {
  const _$DeleteMembersRequestImpl(
      {required this.roomId, required final List<int> membersId})
      : _membersId = membersId;

  factory _$DeleteMembersRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteMembersRequestImplFromJson(json);

  @override
  final int roomId;
  final List<int> _membersId;
  @override
  List<int> get membersId {
    if (_membersId is EqualUnmodifiableListView) return _membersId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_membersId);
  }

  @override
  String toString() {
    return 'DeleteMembersRequest(roomId: $roomId, membersId: $membersId)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteMembersRequestImplToJson(
      this,
    );
  }
}

abstract class _DeleteMembersRequest implements DeleteMembersRequest {
  const factory _DeleteMembersRequest(
      {required final int roomId,
      required final List<int> membersId}) = _$DeleteMembersRequestImpl;

  factory _DeleteMembersRequest.fromJson(Map<String, dynamic> json) =
      _$DeleteMembersRequestImpl.fromJson;

  @override
  int get roomId;
  @override
  List<int> get membersId;
}

DeleteMembersResponse _$DeleteMembersResponseFromJson(
    Map<String, dynamic> json) {
  return _DeleteMembersResponse.fromJson(json);
}

/// @nodoc
mixin _$DeleteMembersResponse {
  int get roomId => throw _privateConstructorUsedError;
  List<int> get membersId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$DeleteMembersResponseImpl implements _DeleteMembersResponse {
  const _$DeleteMembersResponseImpl(
      {required this.roomId, required final List<int> membersId})
      : _membersId = membersId;

  factory _$DeleteMembersResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteMembersResponseImplFromJson(json);

  @override
  final int roomId;
  final List<int> _membersId;
  @override
  List<int> get membersId {
    if (_membersId is EqualUnmodifiableListView) return _membersId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_membersId);
  }

  @override
  String toString() {
    return 'DeleteMembersResponse(roomId: $roomId, membersId: $membersId)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteMembersResponseImplToJson(
      this,
    );
  }
}

abstract class _DeleteMembersResponse implements DeleteMembersResponse {
  const factory _DeleteMembersResponse(
      {required final int roomId,
      required final List<int> membersId}) = _$DeleteMembersResponseImpl;

  factory _DeleteMembersResponse.fromJson(Map<String, dynamic> json) =
      _$DeleteMembersResponseImpl.fromJson;

  @override
  int get roomId;
  @override
  List<int> get membersId;
}
