// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatState {
  List<RoomInfo> get rooms => throw _privateConstructorUsedError;
  List<FriendInfo> get friends => throw _privateConstructorUsedError;
  int get totalUnreads => throw _privateConstructorUsedError;
  int get numNewFriends => throw _privateConstructorUsedError;
  int get currRoomId => throw _privateConstructorUsedError;
  int get currFriendId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {List<RoomInfo> rooms,
      List<FriendInfo> friends,
      int totalUnreads,
      int numNewFriends,
      int currRoomId,
      int currFriendId});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
    Object? friends = null,
    Object? totalUnreads = null,
    Object? numNewFriends = null,
    Object? currRoomId = null,
    Object? currFriendId = null,
  }) {
    return _then(_value.copyWith(
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomInfo>,
      friends: null == friends
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<FriendInfo>,
      totalUnreads: null == totalUnreads
          ? _value.totalUnreads
          : totalUnreads // ignore: cast_nullable_to_non_nullable
              as int,
      numNewFriends: null == numNewFriends
          ? _value.numNewFriends
          : numNewFriends // ignore: cast_nullable_to_non_nullable
              as int,
      currRoomId: null == currRoomId
          ? _value.currRoomId
          : currRoomId // ignore: cast_nullable_to_non_nullable
              as int,
      currFriendId: null == currFriendId
          ? _value.currFriendId
          : currFriendId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateImplCopyWith(
          _$ChatStateImpl value, $Res Function(_$ChatStateImpl) then) =
      __$$ChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<RoomInfo> rooms,
      List<FriendInfo> friends,
      int totalUnreads,
      int numNewFriends,
      int currRoomId,
      int currFriendId});
}

/// @nodoc
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
      _$ChatStateImpl _value, $Res Function(_$ChatStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
    Object? friends = null,
    Object? totalUnreads = null,
    Object? numNewFriends = null,
    Object? currRoomId = null,
    Object? currFriendId = null,
  }) {
    return _then(_$ChatStateImpl(
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomInfo>,
      friends: null == friends
          ? _value._friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<FriendInfo>,
      totalUnreads: null == totalUnreads
          ? _value.totalUnreads
          : totalUnreads // ignore: cast_nullable_to_non_nullable
              as int,
      numNewFriends: null == numNewFriends
          ? _value.numNewFriends
          : numNewFriends // ignore: cast_nullable_to_non_nullable
              as int,
      currRoomId: null == currRoomId
          ? _value.currRoomId
          : currRoomId // ignore: cast_nullable_to_non_nullable
              as int,
      currFriendId: null == currFriendId
          ? _value.currFriendId
          : currFriendId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChatStateImpl implements _ChatState {
  const _$ChatStateImpl(
      {required final List<RoomInfo> rooms,
      required final List<FriendInfo> friends,
      required this.totalUnreads,
      required this.numNewFriends,
      required this.currRoomId,
      required this.currFriendId})
      : _rooms = rooms,
        _friends = friends;

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
  final int totalUnreads;
  @override
  final int numNewFriends;
  @override
  final int currRoomId;
  @override
  final int currFriendId;

  @override
  String toString() {
    return 'ChatState(rooms: $rooms, friends: $friends, totalUnreads: $totalUnreads, numNewFriends: $numNewFriends, currRoomId: $currRoomId, currFriendId: $currFriendId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateImpl &&
            const DeepCollectionEquality().equals(other._rooms, _rooms) &&
            const DeepCollectionEquality().equals(other._friends, _friends) &&
            (identical(other.totalUnreads, totalUnreads) ||
                other.totalUnreads == totalUnreads) &&
            (identical(other.numNewFriends, numNewFriends) ||
                other.numNewFriends == numNewFriends) &&
            (identical(other.currRoomId, currRoomId) ||
                other.currRoomId == currRoomId) &&
            (identical(other.currFriendId, currFriendId) ||
                other.currFriendId == currFriendId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_rooms),
      const DeepCollectionEquality().hash(_friends),
      totalUnreads,
      numNewFriends,
      currRoomId,
      currFriendId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {required final List<RoomInfo> rooms,
      required final List<FriendInfo> friends,
      required final int totalUnreads,
      required final int numNewFriends,
      required final int currRoomId,
      required final int currFriendId}) = _$ChatStateImpl;

  @override
  List<RoomInfo> get rooms;
  @override
  List<FriendInfo> get friends;
  @override
  int get totalUnreads;
  @override
  int get numNewFriends;
  @override
  int get currRoomId;
  @override
  int get currFriendId;
  @override
  @JsonKey(ignore: true)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoomState {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get cover => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get sendAt => throw _privateConstructorUsedError;
  int get unreads => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomStateCopyWith<RoomState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomStateCopyWith<$Res> {
  factory $RoomStateCopyWith(RoomState value, $Res Function(RoomState) then) =
      _$RoomStateCopyWithImpl<$Res, RoomState>;
  @useResult
  $Res call(
      {int id,
      String name,
      String cover,
      String content,
      String sendAt,
      int unreads});
}

/// @nodoc
class _$RoomStateCopyWithImpl<$Res, $Val extends RoomState>
    implements $RoomStateCopyWith<$Res> {
  _$RoomStateCopyWithImpl(this._value, this._then);

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
    Object? content = null,
    Object? sendAt = null,
    Object? unreads = null,
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
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      sendAt: null == sendAt
          ? _value.sendAt
          : sendAt // ignore: cast_nullable_to_non_nullable
              as String,
      unreads: null == unreads
          ? _value.unreads
          : unreads // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomStateImplCopyWith<$Res>
    implements $RoomStateCopyWith<$Res> {
  factory _$$RoomStateImplCopyWith(
          _$RoomStateImpl value, $Res Function(_$RoomStateImpl) then) =
      __$$RoomStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String cover,
      String content,
      String sendAt,
      int unreads});
}

/// @nodoc
class __$$RoomStateImplCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$RoomStateImpl>
    implements _$$RoomStateImplCopyWith<$Res> {
  __$$RoomStateImplCopyWithImpl(
      _$RoomStateImpl _value, $Res Function(_$RoomStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? cover = null,
    Object? content = null,
    Object? sendAt = null,
    Object? unreads = null,
  }) {
    return _then(_$RoomStateImpl(
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
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      sendAt: null == sendAt
          ? _value.sendAt
          : sendAt // ignore: cast_nullable_to_non_nullable
              as String,
      unreads: null == unreads
          ? _value.unreads
          : unreads // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RoomStateImpl implements _RoomState {
  const _$RoomStateImpl(
      {required this.id,
      required this.name,
      required this.cover,
      required this.content,
      required this.sendAt,
      required this.unreads});

  @override
  final int id;
  @override
  final String name;
  @override
  final String cover;
  @override
  final String content;
  @override
  final String sendAt;
  @override
  final int unreads;

  @override
  String toString() {
    return 'RoomState(id: $id, name: $name, cover: $cover, content: $content, sendAt: $sendAt, unreads: $unreads)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomStateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.sendAt, sendAt) || other.sendAt == sendAt) &&
            (identical(other.unreads, unreads) || other.unreads == unreads));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, cover, content, sendAt, unreads);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomStateImplCopyWith<_$RoomStateImpl> get copyWith =>
      __$$RoomStateImplCopyWithImpl<_$RoomStateImpl>(this, _$identity);
}

abstract class _RoomState implements RoomState {
  const factory _RoomState(
      {required final int id,
      required final String name,
      required final String cover,
      required final String content,
      required final String sendAt,
      required final int unreads}) = _$RoomStateImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get cover;
  @override
  String get content;
  @override
  String get sendAt;
  @override
  int get unreads;
  @override
  @JsonKey(ignore: true)
  _$$RoomStateImplCopyWith<_$RoomStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$JwtToken {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get expireAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JwtTokenCopyWith<JwtToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JwtTokenCopyWith<$Res> {
  factory $JwtTokenCopyWith(JwtToken value, $Res Function(JwtToken) then) =
      _$JwtTokenCopyWithImpl<$Res, JwtToken>;
  @useResult
  $Res call(
      {String accessToken,
      String refreshToken,
      @DateTimeConverter() DateTime expireAt});
}

/// @nodoc
class _$JwtTokenCopyWithImpl<$Res, $Val extends JwtToken>
    implements $JwtTokenCopyWith<$Res> {
  _$JwtTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? expireAt = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expireAt: null == expireAt
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JwtTokenImplCopyWith<$Res>
    implements $JwtTokenCopyWith<$Res> {
  factory _$$JwtTokenImplCopyWith(
          _$JwtTokenImpl value, $Res Function(_$JwtTokenImpl) then) =
      __$$JwtTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accessToken,
      String refreshToken,
      @DateTimeConverter() DateTime expireAt});
}

/// @nodoc
class __$$JwtTokenImplCopyWithImpl<$Res>
    extends _$JwtTokenCopyWithImpl<$Res, _$JwtTokenImpl>
    implements _$$JwtTokenImplCopyWith<$Res> {
  __$$JwtTokenImplCopyWithImpl(
      _$JwtTokenImpl _value, $Res Function(_$JwtTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? expireAt = null,
  }) {
    return _then(_$JwtTokenImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expireAt: null == expireAt
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$JwtTokenImpl implements _JwtToken {
  const _$JwtTokenImpl(
      {required this.accessToken,
      required this.refreshToken,
      @DateTimeConverter() required this.expireAt});

  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  @DateTimeConverter()
  final DateTime expireAt;

  @override
  String toString() {
    return 'JwtToken(accessToken: $accessToken, refreshToken: $refreshToken, expireAt: $expireAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JwtTokenImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.expireAt, expireAt) ||
                other.expireAt == expireAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, refreshToken, expireAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JwtTokenImplCopyWith<_$JwtTokenImpl> get copyWith =>
      __$$JwtTokenImplCopyWithImpl<_$JwtTokenImpl>(this, _$identity);
}

abstract class _JwtToken implements JwtToken {
  const factory _JwtToken(
      {required final String accessToken,
      required final String refreshToken,
      @DateTimeConverter() required final DateTime expireAt}) = _$JwtTokenImpl;

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  @DateTimeConverter()
  DateTime get expireAt;
  @override
  @JsonKey(ignore: true)
  _$$JwtTokenImplCopyWith<_$JwtTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserCandidate {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;
  bool get fixed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCandidateCopyWith<UserCandidate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCandidateCopyWith<$Res> {
  factory $UserCandidateCopyWith(
          UserCandidate value, $Res Function(UserCandidate) then) =
      _$UserCandidateCopyWithImpl<$Res, UserCandidate>;
  @useResult
  $Res call({int id, String name, String avatar, bool selected, bool fixed});
}

/// @nodoc
class _$UserCandidateCopyWithImpl<$Res, $Val extends UserCandidate>
    implements $UserCandidateCopyWith<$Res> {
  _$UserCandidateCopyWithImpl(this._value, this._then);

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
    Object? selected = null,
    Object? fixed = null,
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
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      fixed: null == fixed
          ? _value.fixed
          : fixed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserCandidateImplCopyWith<$Res>
    implements $UserCandidateCopyWith<$Res> {
  factory _$$UserCandidateImplCopyWith(
          _$UserCandidateImpl value, $Res Function(_$UserCandidateImpl) then) =
      __$$UserCandidateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String avatar, bool selected, bool fixed});
}

/// @nodoc
class __$$UserCandidateImplCopyWithImpl<$Res>
    extends _$UserCandidateCopyWithImpl<$Res, _$UserCandidateImpl>
    implements _$$UserCandidateImplCopyWith<$Res> {
  __$$UserCandidateImplCopyWithImpl(
      _$UserCandidateImpl _value, $Res Function(_$UserCandidateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatar = null,
    Object? selected = null,
    Object? fixed = null,
  }) {
    return _then(_$UserCandidateImpl(
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
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      fixed: null == fixed
          ? _value.fixed
          : fixed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UserCandidateImpl implements _UserCandidate {
  const _$UserCandidateImpl(
      {required this.id,
      required this.name,
      required this.avatar,
      required this.selected,
      required this.fixed});

  @override
  final int id;
  @override
  final String name;
  @override
  final String avatar;
  @override
  final bool selected;
  @override
  final bool fixed;

  @override
  String toString() {
    return 'UserCandidate(id: $id, name: $name, avatar: $avatar, selected: $selected, fixed: $fixed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCandidateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.fixed, fixed) || other.fixed == fixed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, avatar, selected, fixed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCandidateImplCopyWith<_$UserCandidateImpl> get copyWith =>
      __$$UserCandidateImplCopyWithImpl<_$UserCandidateImpl>(this, _$identity);
}

abstract class _UserCandidate implements UserCandidate {
  const factory _UserCandidate(
      {required final int id,
      required final String name,
      required final String avatar,
      required final bool selected,
      required final bool fixed}) = _$UserCandidateImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get avatar;
  @override
  bool get selected;
  @override
  bool get fixed;
  @override
  @JsonKey(ignore: true)
  _$$UserCandidateImplCopyWith<_$UserCandidateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
