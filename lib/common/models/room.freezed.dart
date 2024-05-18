// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoomInfo _$RoomInfoFromJson(Map<String, dynamic> json) {
  return _RoomInfo.fromJson(json);
}

/// @nodoc
mixin _$RoomInfo {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @HttpImageConverter()
  String get cover => throw _privateConstructorUsedError;
  @RoomCategoryConverter()
  RoomCategory get category => throw _privateConstructorUsedError;
  int get unreads => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get createAt => throw _privateConstructorUsedError;
  List<MemberInfo> get members => throw _privateConstructorUsedError;
  List<MessageInfo> get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomInfoCopyWith<RoomInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomInfoCopyWith<$Res> {
  factory $RoomInfoCopyWith(RoomInfo value, $Res Function(RoomInfo) then) =
      _$RoomInfoCopyWithImpl<$Res, RoomInfo>;
  @useResult
  $Res call(
      {int id,
      String name,
      @HttpImageConverter() String cover,
      @RoomCategoryConverter() RoomCategory category,
      int unreads,
      @DateTimeConverter() DateTime createAt,
      List<MemberInfo> members,
      List<MessageInfo> messages});
}

/// @nodoc
class _$RoomInfoCopyWithImpl<$Res, $Val extends RoomInfo>
    implements $RoomInfoCopyWith<$Res> {
  _$RoomInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? cover = null,
    Object? category = null,
    Object? unreads = null,
    Object? createAt = null,
    Object? members = null,
    Object? messages = null,
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
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as RoomCategory,
      unreads: null == unreads
          ? _value.unreads
          : unreads // ignore: cast_nullable_to_non_nullable
              as int,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<MemberInfo>,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomInfoImplCopyWith<$Res>
    implements $RoomInfoCopyWith<$Res> {
  factory _$$RoomInfoImplCopyWith(
          _$RoomInfoImpl value, $Res Function(_$RoomInfoImpl) then) =
      __$$RoomInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @HttpImageConverter() String cover,
      @RoomCategoryConverter() RoomCategory category,
      int unreads,
      @DateTimeConverter() DateTime createAt,
      List<MemberInfo> members,
      List<MessageInfo> messages});
}

/// @nodoc
class __$$RoomInfoImplCopyWithImpl<$Res>
    extends _$RoomInfoCopyWithImpl<$Res, _$RoomInfoImpl>
    implements _$$RoomInfoImplCopyWith<$Res> {
  __$$RoomInfoImplCopyWithImpl(
      _$RoomInfoImpl _value, $Res Function(_$RoomInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? cover = null,
    Object? category = null,
    Object? unreads = null,
    Object? createAt = null,
    Object? members = null,
    Object? messages = null,
  }) {
    return _then(_$RoomInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as RoomCategory,
      unreads: null == unreads
          ? _value.unreads
          : unreads // ignore: cast_nullable_to_non_nullable
              as int,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<MemberInfo>,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomInfoImpl implements _RoomInfo {
  const _$RoomInfoImpl(
      {required this.id,
      required this.name,
      @HttpImageConverter() required this.cover,
      @RoomCategoryConverter() required this.category,
      required this.unreads,
      @DateTimeConverter() required this.createAt,
      required final List<MemberInfo> members,
      required final List<MessageInfo> messages})
      : _members = members,
        _messages = messages;

  factory _$RoomInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomInfoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @HttpImageConverter()
  final String cover;
  @override
  @RoomCategoryConverter()
  final RoomCategory category;
  @override
  final int unreads;
  @override
  @DateTimeConverter()
  final DateTime createAt;
  final List<MemberInfo> _members;
  @override
  List<MemberInfo> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  final List<MessageInfo> _messages;
  @override
  List<MessageInfo> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'RoomInfo(id: $id, name: $name, cover: $cover, category: $category, unreads: $unreads, createAt: $createAt, members: $members, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.unreads, unreads) || other.unreads == unreads) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      cover,
      category,
      unreads,
      createAt,
      const DeepCollectionEquality().hash(_members),
      const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomInfoImplCopyWith<_$RoomInfoImpl> get copyWith =>
      __$$RoomInfoImplCopyWithImpl<_$RoomInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomInfoImplToJson(
      this,
    );
  }
}

abstract class _RoomInfo implements RoomInfo {
  const factory _RoomInfo(
      {required final int id,
      required final String name,
      @HttpImageConverter() required final String cover,
      @RoomCategoryConverter() required final RoomCategory category,
      required final int unreads,
      @DateTimeConverter() required final DateTime createAt,
      required final List<MemberInfo> members,
      required final List<MessageInfo> messages}) = _$RoomInfoImpl;

  factory _RoomInfo.fromJson(Map<String, dynamic> json) =
      _$RoomInfoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @HttpImageConverter()
  String get cover;
  @override
  @RoomCategoryConverter()
  RoomCategory get category;
  @override
  int get unreads;
  @override
  @DateTimeConverter()
  DateTime get createAt;
  @override
  List<MemberInfo> get members;
  @override
  List<MessageInfo> get messages;
  @override
  @JsonKey(ignore: true)
  _$$RoomInfoImplCopyWith<_$RoomInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewRoomRequest _$NewRoomRequestFromJson(Map<String, dynamic> json) {
  return _NewRoomRequest.fromJson(json);
}

/// @nodoc
mixin _$NewRoomRequest {
  String get name => throw _privateConstructorUsedError;
  List<int> get membersId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$NewRoomRequestImpl implements _NewRoomRequest {
  const _$NewRoomRequestImpl(
      {required this.name, required final List<int> membersId})
      : _membersId = membersId;

  factory _$NewRoomRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewRoomRequestImplFromJson(json);

  @override
  final String name;
  final List<int> _membersId;
  @override
  List<int> get membersId {
    if (_membersId is EqualUnmodifiableListView) return _membersId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_membersId);
  }

  @override
  String toString() {
    return 'NewRoomRequest(name: $name, membersId: $membersId)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NewRoomRequestImplToJson(
      this,
    );
  }
}

abstract class _NewRoomRequest implements NewRoomRequest {
  const factory _NewRoomRequest(
      {required final String name,
      required final List<int> membersId}) = _$NewRoomRequestImpl;

  factory _NewRoomRequest.fromJson(Map<String, dynamic> json) =
      _$NewRoomRequestImpl.fromJson;

  @override
  String get name;
  @override
  List<int> get membersId;
}

NewRoomResponse _$NewRoomResponseFromJson(Map<String, dynamic> json) {
  return _NewRoomResponse.fromJson(json);
}

/// @nodoc
mixin _$NewRoomResponse {
  RoomInfo get room => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$NewRoomResponseImpl implements _NewRoomResponse {
  const _$NewRoomResponseImpl({required this.room});

  factory _$NewRoomResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewRoomResponseImplFromJson(json);

  @override
  final RoomInfo room;

  @override
  String toString() {
    return 'NewRoomResponse(room: $room)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NewRoomResponseImplToJson(
      this,
    );
  }
}

abstract class _NewRoomResponse implements NewRoomResponse {
  const factory _NewRoomResponse({required final RoomInfo room}) =
      _$NewRoomResponseImpl;

  factory _NewRoomResponse.fromJson(Map<String, dynamic> json) =
      _$NewRoomResponseImpl.fromJson;

  @override
  RoomInfo get room;
}

ChangeCoverResponse _$ChangeCoverResponseFromJson(Map<String, dynamic> json) {
  return _ChangeCoverResponse.fromJson(json);
}

/// @nodoc
mixin _$ChangeCoverResponse {
  int get roomId => throw _privateConstructorUsedError;
  @HttpImageConverter()
  String get cover => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$ChangeCoverResponseImpl implements _ChangeCoverResponse {
  const _$ChangeCoverResponseImpl(
      {required this.roomId, @HttpImageConverter() required this.cover});

  factory _$ChangeCoverResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangeCoverResponseImplFromJson(json);

  @override
  final int roomId;
  @override
  @HttpImageConverter()
  final String cover;

  @override
  String toString() {
    return 'ChangeCoverResponse(roomId: $roomId, cover: $cover)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeCoverResponseImplToJson(
      this,
    );
  }
}

abstract class _ChangeCoverResponse implements ChangeCoverResponse {
  const factory _ChangeCoverResponse(
          {required final int roomId,
          @HttpImageConverter() required final String cover}) =
      _$ChangeCoverResponseImpl;

  factory _ChangeCoverResponse.fromJson(Map<String, dynamic> json) =
      _$ChangeCoverResponseImpl.fromJson;

  @override
  int get roomId;
  @override
  @HttpImageConverter()
  String get cover;
}

UpdateRoomRequest _$UpdateRoomRequestFromJson(Map<String, dynamic> json) {
  return _UpdateRoomRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateRoomRequest {
  int get roomId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$UpdateRoomRequestImpl implements _UpdateRoomRequest {
  const _$UpdateRoomRequestImpl({required this.roomId, required this.name});

  factory _$UpdateRoomRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateRoomRequestImplFromJson(json);

  @override
  final int roomId;
  @override
  final String name;

  @override
  String toString() {
    return 'UpdateRoomRequest(roomId: $roomId, name: $name)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateRoomRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateRoomRequest implements UpdateRoomRequest {
  const factory _UpdateRoomRequest(
      {required final int roomId,
      required final String name}) = _$UpdateRoomRequestImpl;

  factory _UpdateRoomRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateRoomRequestImpl.fromJson;

  @override
  int get roomId;
  @override
  String get name;
}

UpdateRoomResponse _$UpdateRoomResponseFromJson(Map<String, dynamic> json) {
  return _UpdateRoomResponse.fromJson(json);
}

/// @nodoc
mixin _$UpdateRoomResponse {
  int get roomId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$UpdateRoomResponseImpl implements _UpdateRoomResponse {
  const _$UpdateRoomResponseImpl({required this.roomId, required this.name});

  factory _$UpdateRoomResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateRoomResponseImplFromJson(json);

  @override
  final int roomId;
  @override
  final String name;

  @override
  String toString() {
    return 'UpdateRoomResponse(roomId: $roomId, name: $name)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateRoomResponseImplToJson(
      this,
    );
  }
}

abstract class _UpdateRoomResponse implements UpdateRoomResponse {
  const factory _UpdateRoomResponse(
      {required final int roomId,
      required final String name}) = _$UpdateRoomResponseImpl;

  factory _UpdateRoomResponse.fromJson(Map<String, dynamic> json) =
      _$UpdateRoomResponseImpl.fromJson;

  @override
  int get roomId;
  @override
  String get name;
}

DeleteRoomRequest _$DeleteRoomRequestFromJson(Map<String, dynamic> json) {
  return _DeleteRoomRequest.fromJson(json);
}

/// @nodoc
mixin _$DeleteRoomRequest {
  int get roomId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$DeleteRoomRequestImpl implements _DeleteRoomRequest {
  const _$DeleteRoomRequestImpl({required this.roomId});

  factory _$DeleteRoomRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteRoomRequestImplFromJson(json);

  @override
  final int roomId;

  @override
  String toString() {
    return 'DeleteRoomRequest(roomId: $roomId)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteRoomRequestImplToJson(
      this,
    );
  }
}

abstract class _DeleteRoomRequest implements DeleteRoomRequest {
  const factory _DeleteRoomRequest({required final int roomId}) =
      _$DeleteRoomRequestImpl;

  factory _DeleteRoomRequest.fromJson(Map<String, dynamic> json) =
      _$DeleteRoomRequestImpl.fromJson;

  @override
  int get roomId;
}

DeleteRoomResponse _$DeleteRoomResponseFromJson(Map<String, dynamic> json) {
  return _DeleteRoomResponse.fromJson(json);
}

/// @nodoc
mixin _$DeleteRoomResponse {
  int get roomId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$DeleteRoomResponseImpl implements _DeleteRoomResponse {
  const _$DeleteRoomResponseImpl({required this.roomId});

  factory _$DeleteRoomResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteRoomResponseImplFromJson(json);

  @override
  final int roomId;

  @override
  String toString() {
    return 'DeleteRoomResponse(roomId: $roomId)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteRoomResponseImplToJson(
      this,
    );
  }
}

abstract class _DeleteRoomResponse implements DeleteRoomResponse {
  const factory _DeleteRoomResponse({required final int roomId}) =
      _$DeleteRoomResponseImpl;

  factory _DeleteRoomResponse.fromJson(Map<String, dynamic> json) =
      _$DeleteRoomResponseImpl.fromJson;

  @override
  int get roomId;
}

LeaveRoomRequest _$LeaveRoomRequestFromJson(Map<String, dynamic> json) {
  return _LeaveRoomRequest.fromJson(json);
}

/// @nodoc
mixin _$LeaveRoomRequest {
  int get roomId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$LeaveRoomRequestImpl implements _LeaveRoomRequest {
  const _$LeaveRoomRequestImpl({required this.roomId});

  factory _$LeaveRoomRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveRoomRequestImplFromJson(json);

  @override
  final int roomId;

  @override
  String toString() {
    return 'LeaveRoomRequest(roomId: $roomId)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveRoomRequestImplToJson(
      this,
    );
  }
}

abstract class _LeaveRoomRequest implements LeaveRoomRequest {
  const factory _LeaveRoomRequest({required final int roomId}) =
      _$LeaveRoomRequestImpl;

  factory _LeaveRoomRequest.fromJson(Map<String, dynamic> json) =
      _$LeaveRoomRequestImpl.fromJson;

  @override
  int get roomId;
}
