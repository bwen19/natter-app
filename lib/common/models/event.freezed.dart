// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientEvent _$ClientEventFromJson(Map<String, dynamic> json) {
  switch (json['action']) {
    case 'initialize':
      return CliInitialize.fromJson(json);
    case 'new-message':
      return CliNewMessage.fromJson(json);
    case 'new-room':
      return CliNewRoom.fromJson(json);
    case 'update-room':
      return CliUpdateRoom.fromJson(json);
    case 'delete-room':
      return CliDeleteRoom.fromJson(json);
    case 'leave-room':
      return CliLeaveRoom.fromJson(json);
    case 'add-members':
      return CliAddMembers.fromJson(json);
    case 'delete-members':
      return CliDeleteMembers.fromJson(json);
    case 'add-friend':
      return CliAddFriend.fromJson(json);
    case 'accept-friend':
      return CliAcceptFriend.fromJson(json);
    case 'refuse-friend':
      return CliRefuseFriend.fromJson(json);
    case 'delete-friend':
      return CliDeleteFriend.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'action', 'ClientEvent',
          'Invalid union type "${json['action']}"!');
  }
}

/// @nodoc
mixin _$ClientEvent {
  Object get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InitializeRequest data) initialize,
    required TResult Function(NewMessageRequest data) newMessage,
    required TResult Function(NewRoomRequest data) newRoom,
    required TResult Function(UpdateRoomRequest data) updateRoom,
    required TResult Function(DeleteRoomRequest data) deleteRoom,
    required TResult Function(LeaveRoomRequest data) leaveRoom,
    required TResult Function(AddMembersRequest data) addMembers,
    required TResult Function(DeleteMembersRequest data) deleteMembers,
    required TResult Function(AddFriendRequest data) addFriend,
    required TResult Function(AcceptFriendRequest data) acceptFriend,
    required TResult Function(RefuseFriendRequest data) refuseFriend,
    required TResult Function(DeleteFriendRequest data) deleteFriend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InitializeRequest data)? initialize,
    TResult? Function(NewMessageRequest data)? newMessage,
    TResult? Function(NewRoomRequest data)? newRoom,
    TResult? Function(UpdateRoomRequest data)? updateRoom,
    TResult? Function(DeleteRoomRequest data)? deleteRoom,
    TResult? Function(LeaveRoomRequest data)? leaveRoom,
    TResult? Function(AddMembersRequest data)? addMembers,
    TResult? Function(DeleteMembersRequest data)? deleteMembers,
    TResult? Function(AddFriendRequest data)? addFriend,
    TResult? Function(AcceptFriendRequest data)? acceptFriend,
    TResult? Function(RefuseFriendRequest data)? refuseFriend,
    TResult? Function(DeleteFriendRequest data)? deleteFriend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InitializeRequest data)? initialize,
    TResult Function(NewMessageRequest data)? newMessage,
    TResult Function(NewRoomRequest data)? newRoom,
    TResult Function(UpdateRoomRequest data)? updateRoom,
    TResult Function(DeleteRoomRequest data)? deleteRoom,
    TResult Function(LeaveRoomRequest data)? leaveRoom,
    TResult Function(AddMembersRequest data)? addMembers,
    TResult Function(DeleteMembersRequest data)? deleteMembers,
    TResult Function(AddFriendRequest data)? addFriend,
    TResult Function(AcceptFriendRequest data)? acceptFriend,
    TResult Function(RefuseFriendRequest data)? refuseFriend,
    TResult Function(DeleteFriendRequest data)? deleteFriend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CliInitialize value) initialize,
    required TResult Function(CliNewMessage value) newMessage,
    required TResult Function(CliNewRoom value) newRoom,
    required TResult Function(CliUpdateRoom value) updateRoom,
    required TResult Function(CliDeleteRoom value) deleteRoom,
    required TResult Function(CliLeaveRoom value) leaveRoom,
    required TResult Function(CliAddMembers value) addMembers,
    required TResult Function(CliDeleteMembers value) deleteMembers,
    required TResult Function(CliAddFriend value) addFriend,
    required TResult Function(CliAcceptFriend value) acceptFriend,
    required TResult Function(CliRefuseFriend value) refuseFriend,
    required TResult Function(CliDeleteFriend value) deleteFriend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CliInitialize value)? initialize,
    TResult? Function(CliNewMessage value)? newMessage,
    TResult? Function(CliNewRoom value)? newRoom,
    TResult? Function(CliUpdateRoom value)? updateRoom,
    TResult? Function(CliDeleteRoom value)? deleteRoom,
    TResult? Function(CliLeaveRoom value)? leaveRoom,
    TResult? Function(CliAddMembers value)? addMembers,
    TResult? Function(CliDeleteMembers value)? deleteMembers,
    TResult? Function(CliAddFriend value)? addFriend,
    TResult? Function(CliAcceptFriend value)? acceptFriend,
    TResult? Function(CliRefuseFriend value)? refuseFriend,
    TResult? Function(CliDeleteFriend value)? deleteFriend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CliInitialize value)? initialize,
    TResult Function(CliNewMessage value)? newMessage,
    TResult Function(CliNewRoom value)? newRoom,
    TResult Function(CliUpdateRoom value)? updateRoom,
    TResult Function(CliDeleteRoom value)? deleteRoom,
    TResult Function(CliLeaveRoom value)? leaveRoom,
    TResult Function(CliAddMembers value)? addMembers,
    TResult Function(CliDeleteMembers value)? deleteMembers,
    TResult Function(CliAddFriend value)? addFriend,
    TResult Function(CliAcceptFriend value)? acceptFriend,
    TResult Function(CliRefuseFriend value)? refuseFriend,
    TResult Function(CliDeleteFriend value)? deleteFriend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$CliInitializeImpl implements CliInitialize {
  const _$CliInitializeImpl(this.data, {final String? $type})
      : $type = $type ?? 'initialize';

  factory _$CliInitializeImpl.fromJson(Map<String, dynamic> json) =>
      _$$CliInitializeImplFromJson(json);

  @override
  final InitializeRequest data;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'ClientEvent.initialize(data: $data)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InitializeRequest data) initialize,
    required TResult Function(NewMessageRequest data) newMessage,
    required TResult Function(NewRoomRequest data) newRoom,
    required TResult Function(UpdateRoomRequest data) updateRoom,
    required TResult Function(DeleteRoomRequest data) deleteRoom,
    required TResult Function(LeaveRoomRequest data) leaveRoom,
    required TResult Function(AddMembersRequest data) addMembers,
    required TResult Function(DeleteMembersRequest data) deleteMembers,
    required TResult Function(AddFriendRequest data) addFriend,
    required TResult Function(AcceptFriendRequest data) acceptFriend,
    required TResult Function(RefuseFriendRequest data) refuseFriend,
    required TResult Function(DeleteFriendRequest data) deleteFriend,
  }) {
    return initialize(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InitializeRequest data)? initialize,
    TResult? Function(NewMessageRequest data)? newMessage,
    TResult? Function(NewRoomRequest data)? newRoom,
    TResult? Function(UpdateRoomRequest data)? updateRoom,
    TResult? Function(DeleteRoomRequest data)? deleteRoom,
    TResult? Function(LeaveRoomRequest data)? leaveRoom,
    TResult? Function(AddMembersRequest data)? addMembers,
    TResult? Function(DeleteMembersRequest data)? deleteMembers,
    TResult? Function(AddFriendRequest data)? addFriend,
    TResult? Function(AcceptFriendRequest data)? acceptFriend,
    TResult? Function(RefuseFriendRequest data)? refuseFriend,
    TResult? Function(DeleteFriendRequest data)? deleteFriend,
  }) {
    return initialize?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InitializeRequest data)? initialize,
    TResult Function(NewMessageRequest data)? newMessage,
    TResult Function(NewRoomRequest data)? newRoom,
    TResult Function(UpdateRoomRequest data)? updateRoom,
    TResult Function(DeleteRoomRequest data)? deleteRoom,
    TResult Function(LeaveRoomRequest data)? leaveRoom,
    TResult Function(AddMembersRequest data)? addMembers,
    TResult Function(DeleteMembersRequest data)? deleteMembers,
    TResult Function(AddFriendRequest data)? addFriend,
    TResult Function(AcceptFriendRequest data)? acceptFriend,
    TResult Function(RefuseFriendRequest data)? refuseFriend,
    TResult Function(DeleteFriendRequest data)? deleteFriend,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CliInitialize value) initialize,
    required TResult Function(CliNewMessage value) newMessage,
    required TResult Function(CliNewRoom value) newRoom,
    required TResult Function(CliUpdateRoom value) updateRoom,
    required TResult Function(CliDeleteRoom value) deleteRoom,
    required TResult Function(CliLeaveRoom value) leaveRoom,
    required TResult Function(CliAddMembers value) addMembers,
    required TResult Function(CliDeleteMembers value) deleteMembers,
    required TResult Function(CliAddFriend value) addFriend,
    required TResult Function(CliAcceptFriend value) acceptFriend,
    required TResult Function(CliRefuseFriend value) refuseFriend,
    required TResult Function(CliDeleteFriend value) deleteFriend,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CliInitialize value)? initialize,
    TResult? Function(CliNewMessage value)? newMessage,
    TResult? Function(CliNewRoom value)? newRoom,
    TResult? Function(CliUpdateRoom value)? updateRoom,
    TResult? Function(CliDeleteRoom value)? deleteRoom,
    TResult? Function(CliLeaveRoom value)? leaveRoom,
    TResult? Function(CliAddMembers value)? addMembers,
    TResult? Function(CliDeleteMembers value)? deleteMembers,
    TResult? Function(CliAddFriend value)? addFriend,
    TResult? Function(CliAcceptFriend value)? acceptFriend,
    TResult? Function(CliRefuseFriend value)? refuseFriend,
    TResult? Function(CliDeleteFriend value)? deleteFriend,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CliInitialize value)? initialize,
    TResult Function(CliNewMessage value)? newMessage,
    TResult Function(CliNewRoom value)? newRoom,
    TResult Function(CliUpdateRoom value)? updateRoom,
    TResult Function(CliDeleteRoom value)? deleteRoom,
    TResult Function(CliLeaveRoom value)? leaveRoom,
    TResult Function(CliAddMembers value)? addMembers,
    TResult Function(CliDeleteMembers value)? deleteMembers,
    TResult Function(CliAddFriend value)? addFriend,
    TResult Function(CliAcceptFriend value)? acceptFriend,
    TResult Function(CliRefuseFriend value)? refuseFriend,
    TResult Function(CliDeleteFriend value)? deleteFriend,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CliInitializeImplToJson(
      this,
    );
  }
}

abstract class CliInitialize implements ClientEvent {
  const factory CliInitialize(final InitializeRequest data) =
      _$CliInitializeImpl;

  factory CliInitialize.fromJson(Map<String, dynamic> json) =
      _$CliInitializeImpl.fromJson;

  @override
  InitializeRequest get data;
}

/// @nodoc
@JsonSerializable()
class _$CliNewMessageImpl implements CliNewMessage {
  const _$CliNewMessageImpl(this.data, {final String? $type})
      : $type = $type ?? 'new-message';

  factory _$CliNewMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$CliNewMessageImplFromJson(json);

  @override
  final NewMessageRequest data;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'ClientEvent.newMessage(data: $data)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InitializeRequest data) initialize,
    required TResult Function(NewMessageRequest data) newMessage,
    required TResult Function(NewRoomRequest data) newRoom,
    required TResult Function(UpdateRoomRequest data) updateRoom,
    required TResult Function(DeleteRoomRequest data) deleteRoom,
    required TResult Function(LeaveRoomRequest data) leaveRoom,
    required TResult Function(AddMembersRequest data) addMembers,
    required TResult Function(DeleteMembersRequest data) deleteMembers,
    required TResult Function(AddFriendRequest data) addFriend,
    required TResult Function(AcceptFriendRequest data) acceptFriend,
    required TResult Function(RefuseFriendRequest data) refuseFriend,
    required TResult Function(DeleteFriendRequest data) deleteFriend,
  }) {
    return newMessage(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InitializeRequest data)? initialize,
    TResult? Function(NewMessageRequest data)? newMessage,
    TResult? Function(NewRoomRequest data)? newRoom,
    TResult? Function(UpdateRoomRequest data)? updateRoom,
    TResult? Function(DeleteRoomRequest data)? deleteRoom,
    TResult? Function(LeaveRoomRequest data)? leaveRoom,
    TResult? Function(AddMembersRequest data)? addMembers,
    TResult? Function(DeleteMembersRequest data)? deleteMembers,
    TResult? Function(AddFriendRequest data)? addFriend,
    TResult? Function(AcceptFriendRequest data)? acceptFriend,
    TResult? Function(RefuseFriendRequest data)? refuseFriend,
    TResult? Function(DeleteFriendRequest data)? deleteFriend,
  }) {
    return newMessage?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InitializeRequest data)? initialize,
    TResult Function(NewMessageRequest data)? newMessage,
    TResult Function(NewRoomRequest data)? newRoom,
    TResult Function(UpdateRoomRequest data)? updateRoom,
    TResult Function(DeleteRoomRequest data)? deleteRoom,
    TResult Function(LeaveRoomRequest data)? leaveRoom,
    TResult Function(AddMembersRequest data)? addMembers,
    TResult Function(DeleteMembersRequest data)? deleteMembers,
    TResult Function(AddFriendRequest data)? addFriend,
    TResult Function(AcceptFriendRequest data)? acceptFriend,
    TResult Function(RefuseFriendRequest data)? refuseFriend,
    TResult Function(DeleteFriendRequest data)? deleteFriend,
    required TResult orElse(),
  }) {
    if (newMessage != null) {
      return newMessage(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CliInitialize value) initialize,
    required TResult Function(CliNewMessage value) newMessage,
    required TResult Function(CliNewRoom value) newRoom,
    required TResult Function(CliUpdateRoom value) updateRoom,
    required TResult Function(CliDeleteRoom value) deleteRoom,
    required TResult Function(CliLeaveRoom value) leaveRoom,
    required TResult Function(CliAddMembers value) addMembers,
    required TResult Function(CliDeleteMembers value) deleteMembers,
    required TResult Function(CliAddFriend value) addFriend,
    required TResult Function(CliAcceptFriend value) acceptFriend,
    required TResult Function(CliRefuseFriend value) refuseFriend,
    required TResult Function(CliDeleteFriend value) deleteFriend,
  }) {
    return newMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CliInitialize value)? initialize,
    TResult? Function(CliNewMessage value)? newMessage,
    TResult? Function(CliNewRoom value)? newRoom,
    TResult? Function(CliUpdateRoom value)? updateRoom,
    TResult? Function(CliDeleteRoom value)? deleteRoom,
    TResult? Function(CliLeaveRoom value)? leaveRoom,
    TResult? Function(CliAddMembers value)? addMembers,
    TResult? Function(CliDeleteMembers value)? deleteMembers,
    TResult? Function(CliAddFriend value)? addFriend,
    TResult? Function(CliAcceptFriend value)? acceptFriend,
    TResult? Function(CliRefuseFriend value)? refuseFriend,
    TResult? Function(CliDeleteFriend value)? deleteFriend,
  }) {
    return newMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CliInitialize value)? initialize,
    TResult Function(CliNewMessage value)? newMessage,
    TResult Function(CliNewRoom value)? newRoom,
    TResult Function(CliUpdateRoom value)? updateRoom,
    TResult Function(CliDeleteRoom value)? deleteRoom,
    TResult Function(CliLeaveRoom value)? leaveRoom,
    TResult Function(CliAddMembers value)? addMembers,
    TResult Function(CliDeleteMembers value)? deleteMembers,
    TResult Function(CliAddFriend value)? addFriend,
    TResult Function(CliAcceptFriend value)? acceptFriend,
    TResult Function(CliRefuseFriend value)? refuseFriend,
    TResult Function(CliDeleteFriend value)? deleteFriend,
    required TResult orElse(),
  }) {
    if (newMessage != null) {
      return newMessage(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CliNewMessageImplToJson(
      this,
    );
  }
}

abstract class CliNewMessage implements ClientEvent {
  const factory CliNewMessage(final NewMessageRequest data) =
      _$CliNewMessageImpl;

  factory CliNewMessage.fromJson(Map<String, dynamic> json) =
      _$CliNewMessageImpl.fromJson;

  @override
  NewMessageRequest get data;
}

/// @nodoc
@JsonSerializable()
class _$CliNewRoomImpl implements CliNewRoom {
  const _$CliNewRoomImpl(this.data, {final String? $type})
      : $type = $type ?? 'new-room';

  factory _$CliNewRoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$CliNewRoomImplFromJson(json);

  @override
  final NewRoomRequest data;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'ClientEvent.newRoom(data: $data)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InitializeRequest data) initialize,
    required TResult Function(NewMessageRequest data) newMessage,
    required TResult Function(NewRoomRequest data) newRoom,
    required TResult Function(UpdateRoomRequest data) updateRoom,
    required TResult Function(DeleteRoomRequest data) deleteRoom,
    required TResult Function(LeaveRoomRequest data) leaveRoom,
    required TResult Function(AddMembersRequest data) addMembers,
    required TResult Function(DeleteMembersRequest data) deleteMembers,
    required TResult Function(AddFriendRequest data) addFriend,
    required TResult Function(AcceptFriendRequest data) acceptFriend,
    required TResult Function(RefuseFriendRequest data) refuseFriend,
    required TResult Function(DeleteFriendRequest data) deleteFriend,
  }) {
    return newRoom(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InitializeRequest data)? initialize,
    TResult? Function(NewMessageRequest data)? newMessage,
    TResult? Function(NewRoomRequest data)? newRoom,
    TResult? Function(UpdateRoomRequest data)? updateRoom,
    TResult? Function(DeleteRoomRequest data)? deleteRoom,
    TResult? Function(LeaveRoomRequest data)? leaveRoom,
    TResult? Function(AddMembersRequest data)? addMembers,
    TResult? Function(DeleteMembersRequest data)? deleteMembers,
    TResult? Function(AddFriendRequest data)? addFriend,
    TResult? Function(AcceptFriendRequest data)? acceptFriend,
    TResult? Function(RefuseFriendRequest data)? refuseFriend,
    TResult? Function(DeleteFriendRequest data)? deleteFriend,
  }) {
    return newRoom?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InitializeRequest data)? initialize,
    TResult Function(NewMessageRequest data)? newMessage,
    TResult Function(NewRoomRequest data)? newRoom,
    TResult Function(UpdateRoomRequest data)? updateRoom,
    TResult Function(DeleteRoomRequest data)? deleteRoom,
    TResult Function(LeaveRoomRequest data)? leaveRoom,
    TResult Function(AddMembersRequest data)? addMembers,
    TResult Function(DeleteMembersRequest data)? deleteMembers,
    TResult Function(AddFriendRequest data)? addFriend,
    TResult Function(AcceptFriendRequest data)? acceptFriend,
    TResult Function(RefuseFriendRequest data)? refuseFriend,
    TResult Function(DeleteFriendRequest data)? deleteFriend,
    required TResult orElse(),
  }) {
    if (newRoom != null) {
      return newRoom(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CliInitialize value) initialize,
    required TResult Function(CliNewMessage value) newMessage,
    required TResult Function(CliNewRoom value) newRoom,
    required TResult Function(CliUpdateRoom value) updateRoom,
    required TResult Function(CliDeleteRoom value) deleteRoom,
    required TResult Function(CliLeaveRoom value) leaveRoom,
    required TResult Function(CliAddMembers value) addMembers,
    required TResult Function(CliDeleteMembers value) deleteMembers,
    required TResult Function(CliAddFriend value) addFriend,
    required TResult Function(CliAcceptFriend value) acceptFriend,
    required TResult Function(CliRefuseFriend value) refuseFriend,
    required TResult Function(CliDeleteFriend value) deleteFriend,
  }) {
    return newRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CliInitialize value)? initialize,
    TResult? Function(CliNewMessage value)? newMessage,
    TResult? Function(CliNewRoom value)? newRoom,
    TResult? Function(CliUpdateRoom value)? updateRoom,
    TResult? Function(CliDeleteRoom value)? deleteRoom,
    TResult? Function(CliLeaveRoom value)? leaveRoom,
    TResult? Function(CliAddMembers value)? addMembers,
    TResult? Function(CliDeleteMembers value)? deleteMembers,
    TResult? Function(CliAddFriend value)? addFriend,
    TResult? Function(CliAcceptFriend value)? acceptFriend,
    TResult? Function(CliRefuseFriend value)? refuseFriend,
    TResult? Function(CliDeleteFriend value)? deleteFriend,
  }) {
    return newRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CliInitialize value)? initialize,
    TResult Function(CliNewMessage value)? newMessage,
    TResult Function(CliNewRoom value)? newRoom,
    TResult Function(CliUpdateRoom value)? updateRoom,
    TResult Function(CliDeleteRoom value)? deleteRoom,
    TResult Function(CliLeaveRoom value)? leaveRoom,
    TResult Function(CliAddMembers value)? addMembers,
    TResult Function(CliDeleteMembers value)? deleteMembers,
    TResult Function(CliAddFriend value)? addFriend,
    TResult Function(CliAcceptFriend value)? acceptFriend,
    TResult Function(CliRefuseFriend value)? refuseFriend,
    TResult Function(CliDeleteFriend value)? deleteFriend,
    required TResult orElse(),
  }) {
    if (newRoom != null) {
      return newRoom(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CliNewRoomImplToJson(
      this,
    );
  }
}

abstract class CliNewRoom implements ClientEvent {
  const factory CliNewRoom(final NewRoomRequest data) = _$CliNewRoomImpl;

  factory CliNewRoom.fromJson(Map<String, dynamic> json) =
      _$CliNewRoomImpl.fromJson;

  @override
  NewRoomRequest get data;
}

/// @nodoc
@JsonSerializable()
class _$CliUpdateRoomImpl implements CliUpdateRoom {
  const _$CliUpdateRoomImpl(this.data, {final String? $type})
      : $type = $type ?? 'update-room';

  factory _$CliUpdateRoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$CliUpdateRoomImplFromJson(json);

  @override
  final UpdateRoomRequest data;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'ClientEvent.updateRoom(data: $data)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InitializeRequest data) initialize,
    required TResult Function(NewMessageRequest data) newMessage,
    required TResult Function(NewRoomRequest data) newRoom,
    required TResult Function(UpdateRoomRequest data) updateRoom,
    required TResult Function(DeleteRoomRequest data) deleteRoom,
    required TResult Function(LeaveRoomRequest data) leaveRoom,
    required TResult Function(AddMembersRequest data) addMembers,
    required TResult Function(DeleteMembersRequest data) deleteMembers,
    required TResult Function(AddFriendRequest data) addFriend,
    required TResult Function(AcceptFriendRequest data) acceptFriend,
    required TResult Function(RefuseFriendRequest data) refuseFriend,
    required TResult Function(DeleteFriendRequest data) deleteFriend,
  }) {
    return updateRoom(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InitializeRequest data)? initialize,
    TResult? Function(NewMessageRequest data)? newMessage,
    TResult? Function(NewRoomRequest data)? newRoom,
    TResult? Function(UpdateRoomRequest data)? updateRoom,
    TResult? Function(DeleteRoomRequest data)? deleteRoom,
    TResult? Function(LeaveRoomRequest data)? leaveRoom,
    TResult? Function(AddMembersRequest data)? addMembers,
    TResult? Function(DeleteMembersRequest data)? deleteMembers,
    TResult? Function(AddFriendRequest data)? addFriend,
    TResult? Function(AcceptFriendRequest data)? acceptFriend,
    TResult? Function(RefuseFriendRequest data)? refuseFriend,
    TResult? Function(DeleteFriendRequest data)? deleteFriend,
  }) {
    return updateRoom?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InitializeRequest data)? initialize,
    TResult Function(NewMessageRequest data)? newMessage,
    TResult Function(NewRoomRequest data)? newRoom,
    TResult Function(UpdateRoomRequest data)? updateRoom,
    TResult Function(DeleteRoomRequest data)? deleteRoom,
    TResult Function(LeaveRoomRequest data)? leaveRoom,
    TResult Function(AddMembersRequest data)? addMembers,
    TResult Function(DeleteMembersRequest data)? deleteMembers,
    TResult Function(AddFriendRequest data)? addFriend,
    TResult Function(AcceptFriendRequest data)? acceptFriend,
    TResult Function(RefuseFriendRequest data)? refuseFriend,
    TResult Function(DeleteFriendRequest data)? deleteFriend,
    required TResult orElse(),
  }) {
    if (updateRoom != null) {
      return updateRoom(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CliInitialize value) initialize,
    required TResult Function(CliNewMessage value) newMessage,
    required TResult Function(CliNewRoom value) newRoom,
    required TResult Function(CliUpdateRoom value) updateRoom,
    required TResult Function(CliDeleteRoom value) deleteRoom,
    required TResult Function(CliLeaveRoom value) leaveRoom,
    required TResult Function(CliAddMembers value) addMembers,
    required TResult Function(CliDeleteMembers value) deleteMembers,
    required TResult Function(CliAddFriend value) addFriend,
    required TResult Function(CliAcceptFriend value) acceptFriend,
    required TResult Function(CliRefuseFriend value) refuseFriend,
    required TResult Function(CliDeleteFriend value) deleteFriend,
  }) {
    return updateRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CliInitialize value)? initialize,
    TResult? Function(CliNewMessage value)? newMessage,
    TResult? Function(CliNewRoom value)? newRoom,
    TResult? Function(CliUpdateRoom value)? updateRoom,
    TResult? Function(CliDeleteRoom value)? deleteRoom,
    TResult? Function(CliLeaveRoom value)? leaveRoom,
    TResult? Function(CliAddMembers value)? addMembers,
    TResult? Function(CliDeleteMembers value)? deleteMembers,
    TResult? Function(CliAddFriend value)? addFriend,
    TResult? Function(CliAcceptFriend value)? acceptFriend,
    TResult? Function(CliRefuseFriend value)? refuseFriend,
    TResult? Function(CliDeleteFriend value)? deleteFriend,
  }) {
    return updateRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CliInitialize value)? initialize,
    TResult Function(CliNewMessage value)? newMessage,
    TResult Function(CliNewRoom value)? newRoom,
    TResult Function(CliUpdateRoom value)? updateRoom,
    TResult Function(CliDeleteRoom value)? deleteRoom,
    TResult Function(CliLeaveRoom value)? leaveRoom,
    TResult Function(CliAddMembers value)? addMembers,
    TResult Function(CliDeleteMembers value)? deleteMembers,
    TResult Function(CliAddFriend value)? addFriend,
    TResult Function(CliAcceptFriend value)? acceptFriend,
    TResult Function(CliRefuseFriend value)? refuseFriend,
    TResult Function(CliDeleteFriend value)? deleteFriend,
    required TResult orElse(),
  }) {
    if (updateRoom != null) {
      return updateRoom(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CliUpdateRoomImplToJson(
      this,
    );
  }
}

abstract class CliUpdateRoom implements ClientEvent {
  const factory CliUpdateRoom(final UpdateRoomRequest data) =
      _$CliUpdateRoomImpl;

  factory CliUpdateRoom.fromJson(Map<String, dynamic> json) =
      _$CliUpdateRoomImpl.fromJson;

  @override
  UpdateRoomRequest get data;
}

/// @nodoc
@JsonSerializable()
class _$CliDeleteRoomImpl implements CliDeleteRoom {
  const _$CliDeleteRoomImpl(this.data, {final String? $type})
      : $type = $type ?? 'delete-room';

  factory _$CliDeleteRoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$CliDeleteRoomImplFromJson(json);

  @override
  final DeleteRoomRequest data;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'ClientEvent.deleteRoom(data: $data)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InitializeRequest data) initialize,
    required TResult Function(NewMessageRequest data) newMessage,
    required TResult Function(NewRoomRequest data) newRoom,
    required TResult Function(UpdateRoomRequest data) updateRoom,
    required TResult Function(DeleteRoomRequest data) deleteRoom,
    required TResult Function(LeaveRoomRequest data) leaveRoom,
    required TResult Function(AddMembersRequest data) addMembers,
    required TResult Function(DeleteMembersRequest data) deleteMembers,
    required TResult Function(AddFriendRequest data) addFriend,
    required TResult Function(AcceptFriendRequest data) acceptFriend,
    required TResult Function(RefuseFriendRequest data) refuseFriend,
    required TResult Function(DeleteFriendRequest data) deleteFriend,
  }) {
    return deleteRoom(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InitializeRequest data)? initialize,
    TResult? Function(NewMessageRequest data)? newMessage,
    TResult? Function(NewRoomRequest data)? newRoom,
    TResult? Function(UpdateRoomRequest data)? updateRoom,
    TResult? Function(DeleteRoomRequest data)? deleteRoom,
    TResult? Function(LeaveRoomRequest data)? leaveRoom,
    TResult? Function(AddMembersRequest data)? addMembers,
    TResult? Function(DeleteMembersRequest data)? deleteMembers,
    TResult? Function(AddFriendRequest data)? addFriend,
    TResult? Function(AcceptFriendRequest data)? acceptFriend,
    TResult? Function(RefuseFriendRequest data)? refuseFriend,
    TResult? Function(DeleteFriendRequest data)? deleteFriend,
  }) {
    return deleteRoom?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InitializeRequest data)? initialize,
    TResult Function(NewMessageRequest data)? newMessage,
    TResult Function(NewRoomRequest data)? newRoom,
    TResult Function(UpdateRoomRequest data)? updateRoom,
    TResult Function(DeleteRoomRequest data)? deleteRoom,
    TResult Function(LeaveRoomRequest data)? leaveRoom,
    TResult Function(AddMembersRequest data)? addMembers,
    TResult Function(DeleteMembersRequest data)? deleteMembers,
    TResult Function(AddFriendRequest data)? addFriend,
    TResult Function(AcceptFriendRequest data)? acceptFriend,
    TResult Function(RefuseFriendRequest data)? refuseFriend,
    TResult Function(DeleteFriendRequest data)? deleteFriend,
    required TResult orElse(),
  }) {
    if (deleteRoom != null) {
      return deleteRoom(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CliInitialize value) initialize,
    required TResult Function(CliNewMessage value) newMessage,
    required TResult Function(CliNewRoom value) newRoom,
    required TResult Function(CliUpdateRoom value) updateRoom,
    required TResult Function(CliDeleteRoom value) deleteRoom,
    required TResult Function(CliLeaveRoom value) leaveRoom,
    required TResult Function(CliAddMembers value) addMembers,
    required TResult Function(CliDeleteMembers value) deleteMembers,
    required TResult Function(CliAddFriend value) addFriend,
    required TResult Function(CliAcceptFriend value) acceptFriend,
    required TResult Function(CliRefuseFriend value) refuseFriend,
    required TResult Function(CliDeleteFriend value) deleteFriend,
  }) {
    return deleteRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CliInitialize value)? initialize,
    TResult? Function(CliNewMessage value)? newMessage,
    TResult? Function(CliNewRoom value)? newRoom,
    TResult? Function(CliUpdateRoom value)? updateRoom,
    TResult? Function(CliDeleteRoom value)? deleteRoom,
    TResult? Function(CliLeaveRoom value)? leaveRoom,
    TResult? Function(CliAddMembers value)? addMembers,
    TResult? Function(CliDeleteMembers value)? deleteMembers,
    TResult? Function(CliAddFriend value)? addFriend,
    TResult? Function(CliAcceptFriend value)? acceptFriend,
    TResult? Function(CliRefuseFriend value)? refuseFriend,
    TResult? Function(CliDeleteFriend value)? deleteFriend,
  }) {
    return deleteRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CliInitialize value)? initialize,
    TResult Function(CliNewMessage value)? newMessage,
    TResult Function(CliNewRoom value)? newRoom,
    TResult Function(CliUpdateRoom value)? updateRoom,
    TResult Function(CliDeleteRoom value)? deleteRoom,
    TResult Function(CliLeaveRoom value)? leaveRoom,
    TResult Function(CliAddMembers value)? addMembers,
    TResult Function(CliDeleteMembers value)? deleteMembers,
    TResult Function(CliAddFriend value)? addFriend,
    TResult Function(CliAcceptFriend value)? acceptFriend,
    TResult Function(CliRefuseFriend value)? refuseFriend,
    TResult Function(CliDeleteFriend value)? deleteFriend,
    required TResult orElse(),
  }) {
    if (deleteRoom != null) {
      return deleteRoom(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CliDeleteRoomImplToJson(
      this,
    );
  }
}

abstract class CliDeleteRoom implements ClientEvent {
  const factory CliDeleteRoom(final DeleteRoomRequest data) =
      _$CliDeleteRoomImpl;

  factory CliDeleteRoom.fromJson(Map<String, dynamic> json) =
      _$CliDeleteRoomImpl.fromJson;

  @override
  DeleteRoomRequest get data;
}

/// @nodoc
@JsonSerializable()
class _$CliLeaveRoomImpl implements CliLeaveRoom {
  const _$CliLeaveRoomImpl(this.data, {final String? $type})
      : $type = $type ?? 'leave-room';

  factory _$CliLeaveRoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$CliLeaveRoomImplFromJson(json);

  @override
  final LeaveRoomRequest data;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'ClientEvent.leaveRoom(data: $data)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InitializeRequest data) initialize,
    required TResult Function(NewMessageRequest data) newMessage,
    required TResult Function(NewRoomRequest data) newRoom,
    required TResult Function(UpdateRoomRequest data) updateRoom,
    required TResult Function(DeleteRoomRequest data) deleteRoom,
    required TResult Function(LeaveRoomRequest data) leaveRoom,
    required TResult Function(AddMembersRequest data) addMembers,
    required TResult Function(DeleteMembersRequest data) deleteMembers,
    required TResult Function(AddFriendRequest data) addFriend,
    required TResult Function(AcceptFriendRequest data) acceptFriend,
    required TResult Function(RefuseFriendRequest data) refuseFriend,
    required TResult Function(DeleteFriendRequest data) deleteFriend,
  }) {
    return leaveRoom(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InitializeRequest data)? initialize,
    TResult? Function(NewMessageRequest data)? newMessage,
    TResult? Function(NewRoomRequest data)? newRoom,
    TResult? Function(UpdateRoomRequest data)? updateRoom,
    TResult? Function(DeleteRoomRequest data)? deleteRoom,
    TResult? Function(LeaveRoomRequest data)? leaveRoom,
    TResult? Function(AddMembersRequest data)? addMembers,
    TResult? Function(DeleteMembersRequest data)? deleteMembers,
    TResult? Function(AddFriendRequest data)? addFriend,
    TResult? Function(AcceptFriendRequest data)? acceptFriend,
    TResult? Function(RefuseFriendRequest data)? refuseFriend,
    TResult? Function(DeleteFriendRequest data)? deleteFriend,
  }) {
    return leaveRoom?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InitializeRequest data)? initialize,
    TResult Function(NewMessageRequest data)? newMessage,
    TResult Function(NewRoomRequest data)? newRoom,
    TResult Function(UpdateRoomRequest data)? updateRoom,
    TResult Function(DeleteRoomRequest data)? deleteRoom,
    TResult Function(LeaveRoomRequest data)? leaveRoom,
    TResult Function(AddMembersRequest data)? addMembers,
    TResult Function(DeleteMembersRequest data)? deleteMembers,
    TResult Function(AddFriendRequest data)? addFriend,
    TResult Function(AcceptFriendRequest data)? acceptFriend,
    TResult Function(RefuseFriendRequest data)? refuseFriend,
    TResult Function(DeleteFriendRequest data)? deleteFriend,
    required TResult orElse(),
  }) {
    if (leaveRoom != null) {
      return leaveRoom(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CliInitialize value) initialize,
    required TResult Function(CliNewMessage value) newMessage,
    required TResult Function(CliNewRoom value) newRoom,
    required TResult Function(CliUpdateRoom value) updateRoom,
    required TResult Function(CliDeleteRoom value) deleteRoom,
    required TResult Function(CliLeaveRoom value) leaveRoom,
    required TResult Function(CliAddMembers value) addMembers,
    required TResult Function(CliDeleteMembers value) deleteMembers,
    required TResult Function(CliAddFriend value) addFriend,
    required TResult Function(CliAcceptFriend value) acceptFriend,
    required TResult Function(CliRefuseFriend value) refuseFriend,
    required TResult Function(CliDeleteFriend value) deleteFriend,
  }) {
    return leaveRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CliInitialize value)? initialize,
    TResult? Function(CliNewMessage value)? newMessage,
    TResult? Function(CliNewRoom value)? newRoom,
    TResult? Function(CliUpdateRoom value)? updateRoom,
    TResult? Function(CliDeleteRoom value)? deleteRoom,
    TResult? Function(CliLeaveRoom value)? leaveRoom,
    TResult? Function(CliAddMembers value)? addMembers,
    TResult? Function(CliDeleteMembers value)? deleteMembers,
    TResult? Function(CliAddFriend value)? addFriend,
    TResult? Function(CliAcceptFriend value)? acceptFriend,
    TResult? Function(CliRefuseFriend value)? refuseFriend,
    TResult? Function(CliDeleteFriend value)? deleteFriend,
  }) {
    return leaveRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CliInitialize value)? initialize,
    TResult Function(CliNewMessage value)? newMessage,
    TResult Function(CliNewRoom value)? newRoom,
    TResult Function(CliUpdateRoom value)? updateRoom,
    TResult Function(CliDeleteRoom value)? deleteRoom,
    TResult Function(CliLeaveRoom value)? leaveRoom,
    TResult Function(CliAddMembers value)? addMembers,
    TResult Function(CliDeleteMembers value)? deleteMembers,
    TResult Function(CliAddFriend value)? addFriend,
    TResult Function(CliAcceptFriend value)? acceptFriend,
    TResult Function(CliRefuseFriend value)? refuseFriend,
    TResult Function(CliDeleteFriend value)? deleteFriend,
    required TResult orElse(),
  }) {
    if (leaveRoom != null) {
      return leaveRoom(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CliLeaveRoomImplToJson(
      this,
    );
  }
}

abstract class CliLeaveRoom implements ClientEvent {
  const factory CliLeaveRoom(final LeaveRoomRequest data) = _$CliLeaveRoomImpl;

  factory CliLeaveRoom.fromJson(Map<String, dynamic> json) =
      _$CliLeaveRoomImpl.fromJson;

  @override
  LeaveRoomRequest get data;
}

/// @nodoc
@JsonSerializable()
class _$CliAddMembersImpl implements CliAddMembers {
  const _$CliAddMembersImpl(this.data, {final String? $type})
      : $type = $type ?? 'add-members';

  factory _$CliAddMembersImpl.fromJson(Map<String, dynamic> json) =>
      _$$CliAddMembersImplFromJson(json);

  @override
  final AddMembersRequest data;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'ClientEvent.addMembers(data: $data)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InitializeRequest data) initialize,
    required TResult Function(NewMessageRequest data) newMessage,
    required TResult Function(NewRoomRequest data) newRoom,
    required TResult Function(UpdateRoomRequest data) updateRoom,
    required TResult Function(DeleteRoomRequest data) deleteRoom,
    required TResult Function(LeaveRoomRequest data) leaveRoom,
    required TResult Function(AddMembersRequest data) addMembers,
    required TResult Function(DeleteMembersRequest data) deleteMembers,
    required TResult Function(AddFriendRequest data) addFriend,
    required TResult Function(AcceptFriendRequest data) acceptFriend,
    required TResult Function(RefuseFriendRequest data) refuseFriend,
    required TResult Function(DeleteFriendRequest data) deleteFriend,
  }) {
    return addMembers(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InitializeRequest data)? initialize,
    TResult? Function(NewMessageRequest data)? newMessage,
    TResult? Function(NewRoomRequest data)? newRoom,
    TResult? Function(UpdateRoomRequest data)? updateRoom,
    TResult? Function(DeleteRoomRequest data)? deleteRoom,
    TResult? Function(LeaveRoomRequest data)? leaveRoom,
    TResult? Function(AddMembersRequest data)? addMembers,
    TResult? Function(DeleteMembersRequest data)? deleteMembers,
    TResult? Function(AddFriendRequest data)? addFriend,
    TResult? Function(AcceptFriendRequest data)? acceptFriend,
    TResult? Function(RefuseFriendRequest data)? refuseFriend,
    TResult? Function(DeleteFriendRequest data)? deleteFriend,
  }) {
    return addMembers?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InitializeRequest data)? initialize,
    TResult Function(NewMessageRequest data)? newMessage,
    TResult Function(NewRoomRequest data)? newRoom,
    TResult Function(UpdateRoomRequest data)? updateRoom,
    TResult Function(DeleteRoomRequest data)? deleteRoom,
    TResult Function(LeaveRoomRequest data)? leaveRoom,
    TResult Function(AddMembersRequest data)? addMembers,
    TResult Function(DeleteMembersRequest data)? deleteMembers,
    TResult Function(AddFriendRequest data)? addFriend,
    TResult Function(AcceptFriendRequest data)? acceptFriend,
    TResult Function(RefuseFriendRequest data)? refuseFriend,
    TResult Function(DeleteFriendRequest data)? deleteFriend,
    required TResult orElse(),
  }) {
    if (addMembers != null) {
      return addMembers(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CliInitialize value) initialize,
    required TResult Function(CliNewMessage value) newMessage,
    required TResult Function(CliNewRoom value) newRoom,
    required TResult Function(CliUpdateRoom value) updateRoom,
    required TResult Function(CliDeleteRoom value) deleteRoom,
    required TResult Function(CliLeaveRoom value) leaveRoom,
    required TResult Function(CliAddMembers value) addMembers,
    required TResult Function(CliDeleteMembers value) deleteMembers,
    required TResult Function(CliAddFriend value) addFriend,
    required TResult Function(CliAcceptFriend value) acceptFriend,
    required TResult Function(CliRefuseFriend value) refuseFriend,
    required TResult Function(CliDeleteFriend value) deleteFriend,
  }) {
    return addMembers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CliInitialize value)? initialize,
    TResult? Function(CliNewMessage value)? newMessage,
    TResult? Function(CliNewRoom value)? newRoom,
    TResult? Function(CliUpdateRoom value)? updateRoom,
    TResult? Function(CliDeleteRoom value)? deleteRoom,
    TResult? Function(CliLeaveRoom value)? leaveRoom,
    TResult? Function(CliAddMembers value)? addMembers,
    TResult? Function(CliDeleteMembers value)? deleteMembers,
    TResult? Function(CliAddFriend value)? addFriend,
    TResult? Function(CliAcceptFriend value)? acceptFriend,
    TResult? Function(CliRefuseFriend value)? refuseFriend,
    TResult? Function(CliDeleteFriend value)? deleteFriend,
  }) {
    return addMembers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CliInitialize value)? initialize,
    TResult Function(CliNewMessage value)? newMessage,
    TResult Function(CliNewRoom value)? newRoom,
    TResult Function(CliUpdateRoom value)? updateRoom,
    TResult Function(CliDeleteRoom value)? deleteRoom,
    TResult Function(CliLeaveRoom value)? leaveRoom,
    TResult Function(CliAddMembers value)? addMembers,
    TResult Function(CliDeleteMembers value)? deleteMembers,
    TResult Function(CliAddFriend value)? addFriend,
    TResult Function(CliAcceptFriend value)? acceptFriend,
    TResult Function(CliRefuseFriend value)? refuseFriend,
    TResult Function(CliDeleteFriend value)? deleteFriend,
    required TResult orElse(),
  }) {
    if (addMembers != null) {
      return addMembers(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CliAddMembersImplToJson(
      this,
    );
  }
}

abstract class CliAddMembers implements ClientEvent {
  const factory CliAddMembers(final AddMembersRequest data) =
      _$CliAddMembersImpl;

  factory CliAddMembers.fromJson(Map<String, dynamic> json) =
      _$CliAddMembersImpl.fromJson;

  @override
  AddMembersRequest get data;
}

/// @nodoc
@JsonSerializable()
class _$CliDeleteMembersImpl implements CliDeleteMembers {
  const _$CliDeleteMembersImpl(this.data, {final String? $type})
      : $type = $type ?? 'delete-members';

  factory _$CliDeleteMembersImpl.fromJson(Map<String, dynamic> json) =>
      _$$CliDeleteMembersImplFromJson(json);

  @override
  final DeleteMembersRequest data;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'ClientEvent.deleteMembers(data: $data)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InitializeRequest data) initialize,
    required TResult Function(NewMessageRequest data) newMessage,
    required TResult Function(NewRoomRequest data) newRoom,
    required TResult Function(UpdateRoomRequest data) updateRoom,
    required TResult Function(DeleteRoomRequest data) deleteRoom,
    required TResult Function(LeaveRoomRequest data) leaveRoom,
    required TResult Function(AddMembersRequest data) addMembers,
    required TResult Function(DeleteMembersRequest data) deleteMembers,
    required TResult Function(AddFriendRequest data) addFriend,
    required TResult Function(AcceptFriendRequest data) acceptFriend,
    required TResult Function(RefuseFriendRequest data) refuseFriend,
    required TResult Function(DeleteFriendRequest data) deleteFriend,
  }) {
    return deleteMembers(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InitializeRequest data)? initialize,
    TResult? Function(NewMessageRequest data)? newMessage,
    TResult? Function(NewRoomRequest data)? newRoom,
    TResult? Function(UpdateRoomRequest data)? updateRoom,
    TResult? Function(DeleteRoomRequest data)? deleteRoom,
    TResult? Function(LeaveRoomRequest data)? leaveRoom,
    TResult? Function(AddMembersRequest data)? addMembers,
    TResult? Function(DeleteMembersRequest data)? deleteMembers,
    TResult? Function(AddFriendRequest data)? addFriend,
    TResult? Function(AcceptFriendRequest data)? acceptFriend,
    TResult? Function(RefuseFriendRequest data)? refuseFriend,
    TResult? Function(DeleteFriendRequest data)? deleteFriend,
  }) {
    return deleteMembers?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InitializeRequest data)? initialize,
    TResult Function(NewMessageRequest data)? newMessage,
    TResult Function(NewRoomRequest data)? newRoom,
    TResult Function(UpdateRoomRequest data)? updateRoom,
    TResult Function(DeleteRoomRequest data)? deleteRoom,
    TResult Function(LeaveRoomRequest data)? leaveRoom,
    TResult Function(AddMembersRequest data)? addMembers,
    TResult Function(DeleteMembersRequest data)? deleteMembers,
    TResult Function(AddFriendRequest data)? addFriend,
    TResult Function(AcceptFriendRequest data)? acceptFriend,
    TResult Function(RefuseFriendRequest data)? refuseFriend,
    TResult Function(DeleteFriendRequest data)? deleteFriend,
    required TResult orElse(),
  }) {
    if (deleteMembers != null) {
      return deleteMembers(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CliInitialize value) initialize,
    required TResult Function(CliNewMessage value) newMessage,
    required TResult Function(CliNewRoom value) newRoom,
    required TResult Function(CliUpdateRoom value) updateRoom,
    required TResult Function(CliDeleteRoom value) deleteRoom,
    required TResult Function(CliLeaveRoom value) leaveRoom,
    required TResult Function(CliAddMembers value) addMembers,
    required TResult Function(CliDeleteMembers value) deleteMembers,
    required TResult Function(CliAddFriend value) addFriend,
    required TResult Function(CliAcceptFriend value) acceptFriend,
    required TResult Function(CliRefuseFriend value) refuseFriend,
    required TResult Function(CliDeleteFriend value) deleteFriend,
  }) {
    return deleteMembers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CliInitialize value)? initialize,
    TResult? Function(CliNewMessage value)? newMessage,
    TResult? Function(CliNewRoom value)? newRoom,
    TResult? Function(CliUpdateRoom value)? updateRoom,
    TResult? Function(CliDeleteRoom value)? deleteRoom,
    TResult? Function(CliLeaveRoom value)? leaveRoom,
    TResult? Function(CliAddMembers value)? addMembers,
    TResult? Function(CliDeleteMembers value)? deleteMembers,
    TResult? Function(CliAddFriend value)? addFriend,
    TResult? Function(CliAcceptFriend value)? acceptFriend,
    TResult? Function(CliRefuseFriend value)? refuseFriend,
    TResult? Function(CliDeleteFriend value)? deleteFriend,
  }) {
    return deleteMembers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CliInitialize value)? initialize,
    TResult Function(CliNewMessage value)? newMessage,
    TResult Function(CliNewRoom value)? newRoom,
    TResult Function(CliUpdateRoom value)? updateRoom,
    TResult Function(CliDeleteRoom value)? deleteRoom,
    TResult Function(CliLeaveRoom value)? leaveRoom,
    TResult Function(CliAddMembers value)? addMembers,
    TResult Function(CliDeleteMembers value)? deleteMembers,
    TResult Function(CliAddFriend value)? addFriend,
    TResult Function(CliAcceptFriend value)? acceptFriend,
    TResult Function(CliRefuseFriend value)? refuseFriend,
    TResult Function(CliDeleteFriend value)? deleteFriend,
    required TResult orElse(),
  }) {
    if (deleteMembers != null) {
      return deleteMembers(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CliDeleteMembersImplToJson(
      this,
    );
  }
}

abstract class CliDeleteMembers implements ClientEvent {
  const factory CliDeleteMembers(final DeleteMembersRequest data) =
      _$CliDeleteMembersImpl;

  factory CliDeleteMembers.fromJson(Map<String, dynamic> json) =
      _$CliDeleteMembersImpl.fromJson;

  @override
  DeleteMembersRequest get data;
}

/// @nodoc
@JsonSerializable()
class _$CliAddFriendImpl implements CliAddFriend {
  const _$CliAddFriendImpl(this.data, {final String? $type})
      : $type = $type ?? 'add-friend';

  factory _$CliAddFriendImpl.fromJson(Map<String, dynamic> json) =>
      _$$CliAddFriendImplFromJson(json);

  @override
  final AddFriendRequest data;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'ClientEvent.addFriend(data: $data)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InitializeRequest data) initialize,
    required TResult Function(NewMessageRequest data) newMessage,
    required TResult Function(NewRoomRequest data) newRoom,
    required TResult Function(UpdateRoomRequest data) updateRoom,
    required TResult Function(DeleteRoomRequest data) deleteRoom,
    required TResult Function(LeaveRoomRequest data) leaveRoom,
    required TResult Function(AddMembersRequest data) addMembers,
    required TResult Function(DeleteMembersRequest data) deleteMembers,
    required TResult Function(AddFriendRequest data) addFriend,
    required TResult Function(AcceptFriendRequest data) acceptFriend,
    required TResult Function(RefuseFriendRequest data) refuseFriend,
    required TResult Function(DeleteFriendRequest data) deleteFriend,
  }) {
    return addFriend(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InitializeRequest data)? initialize,
    TResult? Function(NewMessageRequest data)? newMessage,
    TResult? Function(NewRoomRequest data)? newRoom,
    TResult? Function(UpdateRoomRequest data)? updateRoom,
    TResult? Function(DeleteRoomRequest data)? deleteRoom,
    TResult? Function(LeaveRoomRequest data)? leaveRoom,
    TResult? Function(AddMembersRequest data)? addMembers,
    TResult? Function(DeleteMembersRequest data)? deleteMembers,
    TResult? Function(AddFriendRequest data)? addFriend,
    TResult? Function(AcceptFriendRequest data)? acceptFriend,
    TResult? Function(RefuseFriendRequest data)? refuseFriend,
    TResult? Function(DeleteFriendRequest data)? deleteFriend,
  }) {
    return addFriend?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InitializeRequest data)? initialize,
    TResult Function(NewMessageRequest data)? newMessage,
    TResult Function(NewRoomRequest data)? newRoom,
    TResult Function(UpdateRoomRequest data)? updateRoom,
    TResult Function(DeleteRoomRequest data)? deleteRoom,
    TResult Function(LeaveRoomRequest data)? leaveRoom,
    TResult Function(AddMembersRequest data)? addMembers,
    TResult Function(DeleteMembersRequest data)? deleteMembers,
    TResult Function(AddFriendRequest data)? addFriend,
    TResult Function(AcceptFriendRequest data)? acceptFriend,
    TResult Function(RefuseFriendRequest data)? refuseFriend,
    TResult Function(DeleteFriendRequest data)? deleteFriend,
    required TResult orElse(),
  }) {
    if (addFriend != null) {
      return addFriend(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CliInitialize value) initialize,
    required TResult Function(CliNewMessage value) newMessage,
    required TResult Function(CliNewRoom value) newRoom,
    required TResult Function(CliUpdateRoom value) updateRoom,
    required TResult Function(CliDeleteRoom value) deleteRoom,
    required TResult Function(CliLeaveRoom value) leaveRoom,
    required TResult Function(CliAddMembers value) addMembers,
    required TResult Function(CliDeleteMembers value) deleteMembers,
    required TResult Function(CliAddFriend value) addFriend,
    required TResult Function(CliAcceptFriend value) acceptFriend,
    required TResult Function(CliRefuseFriend value) refuseFriend,
    required TResult Function(CliDeleteFriend value) deleteFriend,
  }) {
    return addFriend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CliInitialize value)? initialize,
    TResult? Function(CliNewMessage value)? newMessage,
    TResult? Function(CliNewRoom value)? newRoom,
    TResult? Function(CliUpdateRoom value)? updateRoom,
    TResult? Function(CliDeleteRoom value)? deleteRoom,
    TResult? Function(CliLeaveRoom value)? leaveRoom,
    TResult? Function(CliAddMembers value)? addMembers,
    TResult? Function(CliDeleteMembers value)? deleteMembers,
    TResult? Function(CliAddFriend value)? addFriend,
    TResult? Function(CliAcceptFriend value)? acceptFriend,
    TResult? Function(CliRefuseFriend value)? refuseFriend,
    TResult? Function(CliDeleteFriend value)? deleteFriend,
  }) {
    return addFriend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CliInitialize value)? initialize,
    TResult Function(CliNewMessage value)? newMessage,
    TResult Function(CliNewRoom value)? newRoom,
    TResult Function(CliUpdateRoom value)? updateRoom,
    TResult Function(CliDeleteRoom value)? deleteRoom,
    TResult Function(CliLeaveRoom value)? leaveRoom,
    TResult Function(CliAddMembers value)? addMembers,
    TResult Function(CliDeleteMembers value)? deleteMembers,
    TResult Function(CliAddFriend value)? addFriend,
    TResult Function(CliAcceptFriend value)? acceptFriend,
    TResult Function(CliRefuseFriend value)? refuseFriend,
    TResult Function(CliDeleteFriend value)? deleteFriend,
    required TResult orElse(),
  }) {
    if (addFriend != null) {
      return addFriend(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CliAddFriendImplToJson(
      this,
    );
  }
}

abstract class CliAddFriend implements ClientEvent {
  const factory CliAddFriend(final AddFriendRequest data) = _$CliAddFriendImpl;

  factory CliAddFriend.fromJson(Map<String, dynamic> json) =
      _$CliAddFriendImpl.fromJson;

  @override
  AddFriendRequest get data;
}

/// @nodoc
@JsonSerializable()
class _$CliAcceptFriendImpl implements CliAcceptFriend {
  const _$CliAcceptFriendImpl(this.data, {final String? $type})
      : $type = $type ?? 'accept-friend';

  factory _$CliAcceptFriendImpl.fromJson(Map<String, dynamic> json) =>
      _$$CliAcceptFriendImplFromJson(json);

  @override
  final AcceptFriendRequest data;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'ClientEvent.acceptFriend(data: $data)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InitializeRequest data) initialize,
    required TResult Function(NewMessageRequest data) newMessage,
    required TResult Function(NewRoomRequest data) newRoom,
    required TResult Function(UpdateRoomRequest data) updateRoom,
    required TResult Function(DeleteRoomRequest data) deleteRoom,
    required TResult Function(LeaveRoomRequest data) leaveRoom,
    required TResult Function(AddMembersRequest data) addMembers,
    required TResult Function(DeleteMembersRequest data) deleteMembers,
    required TResult Function(AddFriendRequest data) addFriend,
    required TResult Function(AcceptFriendRequest data) acceptFriend,
    required TResult Function(RefuseFriendRequest data) refuseFriend,
    required TResult Function(DeleteFriendRequest data) deleteFriend,
  }) {
    return acceptFriend(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InitializeRequest data)? initialize,
    TResult? Function(NewMessageRequest data)? newMessage,
    TResult? Function(NewRoomRequest data)? newRoom,
    TResult? Function(UpdateRoomRequest data)? updateRoom,
    TResult? Function(DeleteRoomRequest data)? deleteRoom,
    TResult? Function(LeaveRoomRequest data)? leaveRoom,
    TResult? Function(AddMembersRequest data)? addMembers,
    TResult? Function(DeleteMembersRequest data)? deleteMembers,
    TResult? Function(AddFriendRequest data)? addFriend,
    TResult? Function(AcceptFriendRequest data)? acceptFriend,
    TResult? Function(RefuseFriendRequest data)? refuseFriend,
    TResult? Function(DeleteFriendRequest data)? deleteFriend,
  }) {
    return acceptFriend?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InitializeRequest data)? initialize,
    TResult Function(NewMessageRequest data)? newMessage,
    TResult Function(NewRoomRequest data)? newRoom,
    TResult Function(UpdateRoomRequest data)? updateRoom,
    TResult Function(DeleteRoomRequest data)? deleteRoom,
    TResult Function(LeaveRoomRequest data)? leaveRoom,
    TResult Function(AddMembersRequest data)? addMembers,
    TResult Function(DeleteMembersRequest data)? deleteMembers,
    TResult Function(AddFriendRequest data)? addFriend,
    TResult Function(AcceptFriendRequest data)? acceptFriend,
    TResult Function(RefuseFriendRequest data)? refuseFriend,
    TResult Function(DeleteFriendRequest data)? deleteFriend,
    required TResult orElse(),
  }) {
    if (acceptFriend != null) {
      return acceptFriend(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CliInitialize value) initialize,
    required TResult Function(CliNewMessage value) newMessage,
    required TResult Function(CliNewRoom value) newRoom,
    required TResult Function(CliUpdateRoom value) updateRoom,
    required TResult Function(CliDeleteRoom value) deleteRoom,
    required TResult Function(CliLeaveRoom value) leaveRoom,
    required TResult Function(CliAddMembers value) addMembers,
    required TResult Function(CliDeleteMembers value) deleteMembers,
    required TResult Function(CliAddFriend value) addFriend,
    required TResult Function(CliAcceptFriend value) acceptFriend,
    required TResult Function(CliRefuseFriend value) refuseFriend,
    required TResult Function(CliDeleteFriend value) deleteFriend,
  }) {
    return acceptFriend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CliInitialize value)? initialize,
    TResult? Function(CliNewMessage value)? newMessage,
    TResult? Function(CliNewRoom value)? newRoom,
    TResult? Function(CliUpdateRoom value)? updateRoom,
    TResult? Function(CliDeleteRoom value)? deleteRoom,
    TResult? Function(CliLeaveRoom value)? leaveRoom,
    TResult? Function(CliAddMembers value)? addMembers,
    TResult? Function(CliDeleteMembers value)? deleteMembers,
    TResult? Function(CliAddFriend value)? addFriend,
    TResult? Function(CliAcceptFriend value)? acceptFriend,
    TResult? Function(CliRefuseFriend value)? refuseFriend,
    TResult? Function(CliDeleteFriend value)? deleteFriend,
  }) {
    return acceptFriend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CliInitialize value)? initialize,
    TResult Function(CliNewMessage value)? newMessage,
    TResult Function(CliNewRoom value)? newRoom,
    TResult Function(CliUpdateRoom value)? updateRoom,
    TResult Function(CliDeleteRoom value)? deleteRoom,
    TResult Function(CliLeaveRoom value)? leaveRoom,
    TResult Function(CliAddMembers value)? addMembers,
    TResult Function(CliDeleteMembers value)? deleteMembers,
    TResult Function(CliAddFriend value)? addFriend,
    TResult Function(CliAcceptFriend value)? acceptFriend,
    TResult Function(CliRefuseFriend value)? refuseFriend,
    TResult Function(CliDeleteFriend value)? deleteFriend,
    required TResult orElse(),
  }) {
    if (acceptFriend != null) {
      return acceptFriend(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CliAcceptFriendImplToJson(
      this,
    );
  }
}

abstract class CliAcceptFriend implements ClientEvent {
  const factory CliAcceptFriend(final AcceptFriendRequest data) =
      _$CliAcceptFriendImpl;

  factory CliAcceptFriend.fromJson(Map<String, dynamic> json) =
      _$CliAcceptFriendImpl.fromJson;

  @override
  AcceptFriendRequest get data;
}

/// @nodoc
@JsonSerializable()
class _$CliRefuseFriendImpl implements CliRefuseFriend {
  const _$CliRefuseFriendImpl(this.data, {final String? $type})
      : $type = $type ?? 'refuse-friend';

  factory _$CliRefuseFriendImpl.fromJson(Map<String, dynamic> json) =>
      _$$CliRefuseFriendImplFromJson(json);

  @override
  final RefuseFriendRequest data;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'ClientEvent.refuseFriend(data: $data)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InitializeRequest data) initialize,
    required TResult Function(NewMessageRequest data) newMessage,
    required TResult Function(NewRoomRequest data) newRoom,
    required TResult Function(UpdateRoomRequest data) updateRoom,
    required TResult Function(DeleteRoomRequest data) deleteRoom,
    required TResult Function(LeaveRoomRequest data) leaveRoom,
    required TResult Function(AddMembersRequest data) addMembers,
    required TResult Function(DeleteMembersRequest data) deleteMembers,
    required TResult Function(AddFriendRequest data) addFriend,
    required TResult Function(AcceptFriendRequest data) acceptFriend,
    required TResult Function(RefuseFriendRequest data) refuseFriend,
    required TResult Function(DeleteFriendRequest data) deleteFriend,
  }) {
    return refuseFriend(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InitializeRequest data)? initialize,
    TResult? Function(NewMessageRequest data)? newMessage,
    TResult? Function(NewRoomRequest data)? newRoom,
    TResult? Function(UpdateRoomRequest data)? updateRoom,
    TResult? Function(DeleteRoomRequest data)? deleteRoom,
    TResult? Function(LeaveRoomRequest data)? leaveRoom,
    TResult? Function(AddMembersRequest data)? addMembers,
    TResult? Function(DeleteMembersRequest data)? deleteMembers,
    TResult? Function(AddFriendRequest data)? addFriend,
    TResult? Function(AcceptFriendRequest data)? acceptFriend,
    TResult? Function(RefuseFriendRequest data)? refuseFriend,
    TResult? Function(DeleteFriendRequest data)? deleteFriend,
  }) {
    return refuseFriend?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InitializeRequest data)? initialize,
    TResult Function(NewMessageRequest data)? newMessage,
    TResult Function(NewRoomRequest data)? newRoom,
    TResult Function(UpdateRoomRequest data)? updateRoom,
    TResult Function(DeleteRoomRequest data)? deleteRoom,
    TResult Function(LeaveRoomRequest data)? leaveRoom,
    TResult Function(AddMembersRequest data)? addMembers,
    TResult Function(DeleteMembersRequest data)? deleteMembers,
    TResult Function(AddFriendRequest data)? addFriend,
    TResult Function(AcceptFriendRequest data)? acceptFriend,
    TResult Function(RefuseFriendRequest data)? refuseFriend,
    TResult Function(DeleteFriendRequest data)? deleteFriend,
    required TResult orElse(),
  }) {
    if (refuseFriend != null) {
      return refuseFriend(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CliInitialize value) initialize,
    required TResult Function(CliNewMessage value) newMessage,
    required TResult Function(CliNewRoom value) newRoom,
    required TResult Function(CliUpdateRoom value) updateRoom,
    required TResult Function(CliDeleteRoom value) deleteRoom,
    required TResult Function(CliLeaveRoom value) leaveRoom,
    required TResult Function(CliAddMembers value) addMembers,
    required TResult Function(CliDeleteMembers value) deleteMembers,
    required TResult Function(CliAddFriend value) addFriend,
    required TResult Function(CliAcceptFriend value) acceptFriend,
    required TResult Function(CliRefuseFriend value) refuseFriend,
    required TResult Function(CliDeleteFriend value) deleteFriend,
  }) {
    return refuseFriend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CliInitialize value)? initialize,
    TResult? Function(CliNewMessage value)? newMessage,
    TResult? Function(CliNewRoom value)? newRoom,
    TResult? Function(CliUpdateRoom value)? updateRoom,
    TResult? Function(CliDeleteRoom value)? deleteRoom,
    TResult? Function(CliLeaveRoom value)? leaveRoom,
    TResult? Function(CliAddMembers value)? addMembers,
    TResult? Function(CliDeleteMembers value)? deleteMembers,
    TResult? Function(CliAddFriend value)? addFriend,
    TResult? Function(CliAcceptFriend value)? acceptFriend,
    TResult? Function(CliRefuseFriend value)? refuseFriend,
    TResult? Function(CliDeleteFriend value)? deleteFriend,
  }) {
    return refuseFriend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CliInitialize value)? initialize,
    TResult Function(CliNewMessage value)? newMessage,
    TResult Function(CliNewRoom value)? newRoom,
    TResult Function(CliUpdateRoom value)? updateRoom,
    TResult Function(CliDeleteRoom value)? deleteRoom,
    TResult Function(CliLeaveRoom value)? leaveRoom,
    TResult Function(CliAddMembers value)? addMembers,
    TResult Function(CliDeleteMembers value)? deleteMembers,
    TResult Function(CliAddFriend value)? addFriend,
    TResult Function(CliAcceptFriend value)? acceptFriend,
    TResult Function(CliRefuseFriend value)? refuseFriend,
    TResult Function(CliDeleteFriend value)? deleteFriend,
    required TResult orElse(),
  }) {
    if (refuseFriend != null) {
      return refuseFriend(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CliRefuseFriendImplToJson(
      this,
    );
  }
}

abstract class CliRefuseFriend implements ClientEvent {
  const factory CliRefuseFriend(final RefuseFriendRequest data) =
      _$CliRefuseFriendImpl;

  factory CliRefuseFriend.fromJson(Map<String, dynamic> json) =
      _$CliRefuseFriendImpl.fromJson;

  @override
  RefuseFriendRequest get data;
}

/// @nodoc
@JsonSerializable()
class _$CliDeleteFriendImpl implements CliDeleteFriend {
  const _$CliDeleteFriendImpl(this.data, {final String? $type})
      : $type = $type ?? 'delete-friend';

  factory _$CliDeleteFriendImpl.fromJson(Map<String, dynamic> json) =>
      _$$CliDeleteFriendImplFromJson(json);

  @override
  final DeleteFriendRequest data;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'ClientEvent.deleteFriend(data: $data)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InitializeRequest data) initialize,
    required TResult Function(NewMessageRequest data) newMessage,
    required TResult Function(NewRoomRequest data) newRoom,
    required TResult Function(UpdateRoomRequest data) updateRoom,
    required TResult Function(DeleteRoomRequest data) deleteRoom,
    required TResult Function(LeaveRoomRequest data) leaveRoom,
    required TResult Function(AddMembersRequest data) addMembers,
    required TResult Function(DeleteMembersRequest data) deleteMembers,
    required TResult Function(AddFriendRequest data) addFriend,
    required TResult Function(AcceptFriendRequest data) acceptFriend,
    required TResult Function(RefuseFriendRequest data) refuseFriend,
    required TResult Function(DeleteFriendRequest data) deleteFriend,
  }) {
    return deleteFriend(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InitializeRequest data)? initialize,
    TResult? Function(NewMessageRequest data)? newMessage,
    TResult? Function(NewRoomRequest data)? newRoom,
    TResult? Function(UpdateRoomRequest data)? updateRoom,
    TResult? Function(DeleteRoomRequest data)? deleteRoom,
    TResult? Function(LeaveRoomRequest data)? leaveRoom,
    TResult? Function(AddMembersRequest data)? addMembers,
    TResult? Function(DeleteMembersRequest data)? deleteMembers,
    TResult? Function(AddFriendRequest data)? addFriend,
    TResult? Function(AcceptFriendRequest data)? acceptFriend,
    TResult? Function(RefuseFriendRequest data)? refuseFriend,
    TResult? Function(DeleteFriendRequest data)? deleteFriend,
  }) {
    return deleteFriend?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InitializeRequest data)? initialize,
    TResult Function(NewMessageRequest data)? newMessage,
    TResult Function(NewRoomRequest data)? newRoom,
    TResult Function(UpdateRoomRequest data)? updateRoom,
    TResult Function(DeleteRoomRequest data)? deleteRoom,
    TResult Function(LeaveRoomRequest data)? leaveRoom,
    TResult Function(AddMembersRequest data)? addMembers,
    TResult Function(DeleteMembersRequest data)? deleteMembers,
    TResult Function(AddFriendRequest data)? addFriend,
    TResult Function(AcceptFriendRequest data)? acceptFriend,
    TResult Function(RefuseFriendRequest data)? refuseFriend,
    TResult Function(DeleteFriendRequest data)? deleteFriend,
    required TResult orElse(),
  }) {
    if (deleteFriend != null) {
      return deleteFriend(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CliInitialize value) initialize,
    required TResult Function(CliNewMessage value) newMessage,
    required TResult Function(CliNewRoom value) newRoom,
    required TResult Function(CliUpdateRoom value) updateRoom,
    required TResult Function(CliDeleteRoom value) deleteRoom,
    required TResult Function(CliLeaveRoom value) leaveRoom,
    required TResult Function(CliAddMembers value) addMembers,
    required TResult Function(CliDeleteMembers value) deleteMembers,
    required TResult Function(CliAddFriend value) addFriend,
    required TResult Function(CliAcceptFriend value) acceptFriend,
    required TResult Function(CliRefuseFriend value) refuseFriend,
    required TResult Function(CliDeleteFriend value) deleteFriend,
  }) {
    return deleteFriend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CliInitialize value)? initialize,
    TResult? Function(CliNewMessage value)? newMessage,
    TResult? Function(CliNewRoom value)? newRoom,
    TResult? Function(CliUpdateRoom value)? updateRoom,
    TResult? Function(CliDeleteRoom value)? deleteRoom,
    TResult? Function(CliLeaveRoom value)? leaveRoom,
    TResult? Function(CliAddMembers value)? addMembers,
    TResult? Function(CliDeleteMembers value)? deleteMembers,
    TResult? Function(CliAddFriend value)? addFriend,
    TResult? Function(CliAcceptFriend value)? acceptFriend,
    TResult? Function(CliRefuseFriend value)? refuseFriend,
    TResult? Function(CliDeleteFriend value)? deleteFriend,
  }) {
    return deleteFriend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CliInitialize value)? initialize,
    TResult Function(CliNewMessage value)? newMessage,
    TResult Function(CliNewRoom value)? newRoom,
    TResult Function(CliUpdateRoom value)? updateRoom,
    TResult Function(CliDeleteRoom value)? deleteRoom,
    TResult Function(CliLeaveRoom value)? leaveRoom,
    TResult Function(CliAddMembers value)? addMembers,
    TResult Function(CliDeleteMembers value)? deleteMembers,
    TResult Function(CliAddFriend value)? addFriend,
    TResult Function(CliAcceptFriend value)? acceptFriend,
    TResult Function(CliRefuseFriend value)? refuseFriend,
    TResult Function(CliDeleteFriend value)? deleteFriend,
    required TResult orElse(),
  }) {
    if (deleteFriend != null) {
      return deleteFriend(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CliDeleteFriendImplToJson(
      this,
    );
  }
}

abstract class CliDeleteFriend implements ClientEvent {
  const factory CliDeleteFriend(final DeleteFriendRequest data) =
      _$CliDeleteFriendImpl;

  factory CliDeleteFriend.fromJson(Map<String, dynamic> json) =
      _$CliDeleteFriendImpl.fromJson;

  @override
  DeleteFriendRequest get data;
}

ServerEvent _$ServerEventFromJson(Map<String, dynamic> json) {
  switch (json['action']) {
    case 'err-message':
      return SrvErrMessage.fromJson(json);
    case 'initialize':
      return SrvInitialize.fromJson(json);
    case 'new-message':
      return SrvNewMessage.fromJson(json);
    case 'new-room':
      return SrvNewRoom.fromJson(json);
    case 'change-cover':
      return SrvChangeCover.fromJson(json);
    case 'update-room':
      return SrvUpdateRoom.fromJson(json);
    case 'delete-room':
      return SrvDeleteRoom.fromJson(json);
    case 'add-members':
      return SrvAddMembers.fromJson(json);
    case 'delete-members':
      return SrvDeleteMembers.fromJson(json);
    case 'add-friend':
      return SrvAddFriend.fromJson(json);
    case 'accept-friend':
      return SrvAcceptFriend.fromJson(json);
    case 'refuse-friend':
      return SrvRefuseFriend.fromJson(json);
    case 'delete-friend':
      return SrvDeleteFriend.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'action', 'ServerEvent',
          'Invalid union type "${json['action']}"!');
  }
}

/// @nodoc
mixin _$ServerEvent {
  Object get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) errMessage,
    required TResult Function(InitializeResponse data) initialize,
    required TResult Function(NewMessageResponse data) newMessage,
    required TResult Function(NewRoomResponse data) newRoom,
    required TResult Function(ChangeCoverResponse data) changeCover,
    required TResult Function(UpdateRoomResponse data) updateRoom,
    required TResult Function(DeleteRoomResponse data) deleteRoom,
    required TResult Function(AddMembersResponse data) addMembers,
    required TResult Function(DeleteMembersResponse data) deleteMembers,
    required TResult Function(AddFriendResponse data) addFriend,
    required TResult Function(AcceptFriendResponse data) acceptFriend,
    required TResult Function(RefuseFriendResponse data) refuseFriend,
    required TResult Function(DeleteFriendResponse data) deleteFriend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? errMessage,
    TResult? Function(InitializeResponse data)? initialize,
    TResult? Function(NewMessageResponse data)? newMessage,
    TResult? Function(NewRoomResponse data)? newRoom,
    TResult? Function(ChangeCoverResponse data)? changeCover,
    TResult? Function(UpdateRoomResponse data)? updateRoom,
    TResult? Function(DeleteRoomResponse data)? deleteRoom,
    TResult? Function(AddMembersResponse data)? addMembers,
    TResult? Function(DeleteMembersResponse data)? deleteMembers,
    TResult? Function(AddFriendResponse data)? addFriend,
    TResult? Function(AcceptFriendResponse data)? acceptFriend,
    TResult? Function(RefuseFriendResponse data)? refuseFriend,
    TResult? Function(DeleteFriendResponse data)? deleteFriend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? errMessage,
    TResult Function(InitializeResponse data)? initialize,
    TResult Function(NewMessageResponse data)? newMessage,
    TResult Function(NewRoomResponse data)? newRoom,
    TResult Function(ChangeCoverResponse data)? changeCover,
    TResult Function(UpdateRoomResponse data)? updateRoom,
    TResult Function(DeleteRoomResponse data)? deleteRoom,
    TResult Function(AddMembersResponse data)? addMembers,
    TResult Function(DeleteMembersResponse data)? deleteMembers,
    TResult Function(AddFriendResponse data)? addFriend,
    TResult Function(AcceptFriendResponse data)? acceptFriend,
    TResult Function(RefuseFriendResponse data)? refuseFriend,
    TResult Function(DeleteFriendResponse data)? deleteFriend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SrvErrMessage value) errMessage,
    required TResult Function(SrvInitialize value) initialize,
    required TResult Function(SrvNewMessage value) newMessage,
    required TResult Function(SrvNewRoom value) newRoom,
    required TResult Function(SrvChangeCover value) changeCover,
    required TResult Function(SrvUpdateRoom value) updateRoom,
    required TResult Function(SrvDeleteRoom value) deleteRoom,
    required TResult Function(SrvAddMembers value) addMembers,
    required TResult Function(SrvDeleteMembers value) deleteMembers,
    required TResult Function(SrvAddFriend value) addFriend,
    required TResult Function(SrvAcceptFriend value) acceptFriend,
    required TResult Function(SrvRefuseFriend value) refuseFriend,
    required TResult Function(SrvDeleteFriend value) deleteFriend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SrvErrMessage value)? errMessage,
    TResult? Function(SrvInitialize value)? initialize,
    TResult? Function(SrvNewMessage value)? newMessage,
    TResult? Function(SrvNewRoom value)? newRoom,
    TResult? Function(SrvChangeCover value)? changeCover,
    TResult? Function(SrvUpdateRoom value)? updateRoom,
    TResult? Function(SrvDeleteRoom value)? deleteRoom,
    TResult? Function(SrvAddMembers value)? addMembers,
    TResult? Function(SrvDeleteMembers value)? deleteMembers,
    TResult? Function(SrvAddFriend value)? addFriend,
    TResult? Function(SrvAcceptFriend value)? acceptFriend,
    TResult? Function(SrvRefuseFriend value)? refuseFriend,
    TResult? Function(SrvDeleteFriend value)? deleteFriend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SrvErrMessage value)? errMessage,
    TResult Function(SrvInitialize value)? initialize,
    TResult Function(SrvNewMessage value)? newMessage,
    TResult Function(SrvNewRoom value)? newRoom,
    TResult Function(SrvChangeCover value)? changeCover,
    TResult Function(SrvUpdateRoom value)? updateRoom,
    TResult Function(SrvDeleteRoom value)? deleteRoom,
    TResult Function(SrvAddMembers value)? addMembers,
    TResult Function(SrvDeleteMembers value)? deleteMembers,
    TResult Function(SrvAddFriend value)? addFriend,
    TResult Function(SrvAcceptFriend value)? acceptFriend,
    TResult Function(SrvRefuseFriend value)? refuseFriend,
    TResult Function(SrvDeleteFriend value)? deleteFriend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$SrvErrMessageImpl implements SrvErrMessage {
  const _$SrvErrMessageImpl(this.data, {final String? $type})
      : $type = $type ?? 'err-message';

  factory _$SrvErrMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$SrvErrMessageImplFromJson(json);

  @override
  final String data;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'ServerEvent.errMessage(data: $data)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) errMessage,
    required TResult Function(InitializeResponse data) initialize,
    required TResult Function(NewMessageResponse data) newMessage,
    required TResult Function(NewRoomResponse data) newRoom,
    required TResult Function(ChangeCoverResponse data) changeCover,
    required TResult Function(UpdateRoomResponse data) updateRoom,
    required TResult Function(DeleteRoomResponse data) deleteRoom,
    required TResult Function(AddMembersResponse data) addMembers,
    required TResult Function(DeleteMembersResponse data) deleteMembers,
    required TResult Function(AddFriendResponse data) addFriend,
    required TResult Function(AcceptFriendResponse data) acceptFriend,
    required TResult Function(RefuseFriendResponse data) refuseFriend,
    required TResult Function(DeleteFriendResponse data) deleteFriend,
  }) {
    return errMessage(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? errMessage,
    TResult? Function(InitializeResponse data)? initialize,
    TResult? Function(NewMessageResponse data)? newMessage,
    TResult? Function(NewRoomResponse data)? newRoom,
    TResult? Function(ChangeCoverResponse data)? changeCover,
    TResult? Function(UpdateRoomResponse data)? updateRoom,
    TResult? Function(DeleteRoomResponse data)? deleteRoom,
    TResult? Function(AddMembersResponse data)? addMembers,
    TResult? Function(DeleteMembersResponse data)? deleteMembers,
    TResult? Function(AddFriendResponse data)? addFriend,
    TResult? Function(AcceptFriendResponse data)? acceptFriend,
    TResult? Function(RefuseFriendResponse data)? refuseFriend,
    TResult? Function(DeleteFriendResponse data)? deleteFriend,
  }) {
    return errMessage?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? errMessage,
    TResult Function(InitializeResponse data)? initialize,
    TResult Function(NewMessageResponse data)? newMessage,
    TResult Function(NewRoomResponse data)? newRoom,
    TResult Function(ChangeCoverResponse data)? changeCover,
    TResult Function(UpdateRoomResponse data)? updateRoom,
    TResult Function(DeleteRoomResponse data)? deleteRoom,
    TResult Function(AddMembersResponse data)? addMembers,
    TResult Function(DeleteMembersResponse data)? deleteMembers,
    TResult Function(AddFriendResponse data)? addFriend,
    TResult Function(AcceptFriendResponse data)? acceptFriend,
    TResult Function(RefuseFriendResponse data)? refuseFriend,
    TResult Function(DeleteFriendResponse data)? deleteFriend,
    required TResult orElse(),
  }) {
    if (errMessage != null) {
      return errMessage(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SrvErrMessage value) errMessage,
    required TResult Function(SrvInitialize value) initialize,
    required TResult Function(SrvNewMessage value) newMessage,
    required TResult Function(SrvNewRoom value) newRoom,
    required TResult Function(SrvChangeCover value) changeCover,
    required TResult Function(SrvUpdateRoom value) updateRoom,
    required TResult Function(SrvDeleteRoom value) deleteRoom,
    required TResult Function(SrvAddMembers value) addMembers,
    required TResult Function(SrvDeleteMembers value) deleteMembers,
    required TResult Function(SrvAddFriend value) addFriend,
    required TResult Function(SrvAcceptFriend value) acceptFriend,
    required TResult Function(SrvRefuseFriend value) refuseFriend,
    required TResult Function(SrvDeleteFriend value) deleteFriend,
  }) {
    return errMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SrvErrMessage value)? errMessage,
    TResult? Function(SrvInitialize value)? initialize,
    TResult? Function(SrvNewMessage value)? newMessage,
    TResult? Function(SrvNewRoom value)? newRoom,
    TResult? Function(SrvChangeCover value)? changeCover,
    TResult? Function(SrvUpdateRoom value)? updateRoom,
    TResult? Function(SrvDeleteRoom value)? deleteRoom,
    TResult? Function(SrvAddMembers value)? addMembers,
    TResult? Function(SrvDeleteMembers value)? deleteMembers,
    TResult? Function(SrvAddFriend value)? addFriend,
    TResult? Function(SrvAcceptFriend value)? acceptFriend,
    TResult? Function(SrvRefuseFriend value)? refuseFriend,
    TResult? Function(SrvDeleteFriend value)? deleteFriend,
  }) {
    return errMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SrvErrMessage value)? errMessage,
    TResult Function(SrvInitialize value)? initialize,
    TResult Function(SrvNewMessage value)? newMessage,
    TResult Function(SrvNewRoom value)? newRoom,
    TResult Function(SrvChangeCover value)? changeCover,
    TResult Function(SrvUpdateRoom value)? updateRoom,
    TResult Function(SrvDeleteRoom value)? deleteRoom,
    TResult Function(SrvAddMembers value)? addMembers,
    TResult Function(SrvDeleteMembers value)? deleteMembers,
    TResult Function(SrvAddFriend value)? addFriend,
    TResult Function(SrvAcceptFriend value)? acceptFriend,
    TResult Function(SrvRefuseFriend value)? refuseFriend,
    TResult Function(SrvDeleteFriend value)? deleteFriend,
    required TResult orElse(),
  }) {
    if (errMessage != null) {
      return errMessage(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SrvErrMessageImplToJson(
      this,
    );
  }
}

abstract class SrvErrMessage implements ServerEvent {
  const factory SrvErrMessage(final String data) = _$SrvErrMessageImpl;

  factory SrvErrMessage.fromJson(Map<String, dynamic> json) =
      _$SrvErrMessageImpl.fromJson;

  @override
  String get data;
}

/// @nodoc
@JsonSerializable()
class _$SrvInitializeImpl implements SrvInitialize {
  const _$SrvInitializeImpl(this.data, {final String? $type})
      : $type = $type ?? 'initialize';

  factory _$SrvInitializeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SrvInitializeImplFromJson(json);

  @override
  final InitializeResponse data;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'ServerEvent.initialize(data: $data)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) errMessage,
    required TResult Function(InitializeResponse data) initialize,
    required TResult Function(NewMessageResponse data) newMessage,
    required TResult Function(NewRoomResponse data) newRoom,
    required TResult Function(ChangeCoverResponse data) changeCover,
    required TResult Function(UpdateRoomResponse data) updateRoom,
    required TResult Function(DeleteRoomResponse data) deleteRoom,
    required TResult Function(AddMembersResponse data) addMembers,
    required TResult Function(DeleteMembersResponse data) deleteMembers,
    required TResult Function(AddFriendResponse data) addFriend,
    required TResult Function(AcceptFriendResponse data) acceptFriend,
    required TResult Function(RefuseFriendResponse data) refuseFriend,
    required TResult Function(DeleteFriendResponse data) deleteFriend,
  }) {
    return initialize(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? errMessage,
    TResult? Function(InitializeResponse data)? initialize,
    TResult? Function(NewMessageResponse data)? newMessage,
    TResult? Function(NewRoomResponse data)? newRoom,
    TResult? Function(ChangeCoverResponse data)? changeCover,
    TResult? Function(UpdateRoomResponse data)? updateRoom,
    TResult? Function(DeleteRoomResponse data)? deleteRoom,
    TResult? Function(AddMembersResponse data)? addMembers,
    TResult? Function(DeleteMembersResponse data)? deleteMembers,
    TResult? Function(AddFriendResponse data)? addFriend,
    TResult? Function(AcceptFriendResponse data)? acceptFriend,
    TResult? Function(RefuseFriendResponse data)? refuseFriend,
    TResult? Function(DeleteFriendResponse data)? deleteFriend,
  }) {
    return initialize?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? errMessage,
    TResult Function(InitializeResponse data)? initialize,
    TResult Function(NewMessageResponse data)? newMessage,
    TResult Function(NewRoomResponse data)? newRoom,
    TResult Function(ChangeCoverResponse data)? changeCover,
    TResult Function(UpdateRoomResponse data)? updateRoom,
    TResult Function(DeleteRoomResponse data)? deleteRoom,
    TResult Function(AddMembersResponse data)? addMembers,
    TResult Function(DeleteMembersResponse data)? deleteMembers,
    TResult Function(AddFriendResponse data)? addFriend,
    TResult Function(AcceptFriendResponse data)? acceptFriend,
    TResult Function(RefuseFriendResponse data)? refuseFriend,
    TResult Function(DeleteFriendResponse data)? deleteFriend,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SrvErrMessage value) errMessage,
    required TResult Function(SrvInitialize value) initialize,
    required TResult Function(SrvNewMessage value) newMessage,
    required TResult Function(SrvNewRoom value) newRoom,
    required TResult Function(SrvChangeCover value) changeCover,
    required TResult Function(SrvUpdateRoom value) updateRoom,
    required TResult Function(SrvDeleteRoom value) deleteRoom,
    required TResult Function(SrvAddMembers value) addMembers,
    required TResult Function(SrvDeleteMembers value) deleteMembers,
    required TResult Function(SrvAddFriend value) addFriend,
    required TResult Function(SrvAcceptFriend value) acceptFriend,
    required TResult Function(SrvRefuseFriend value) refuseFriend,
    required TResult Function(SrvDeleteFriend value) deleteFriend,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SrvErrMessage value)? errMessage,
    TResult? Function(SrvInitialize value)? initialize,
    TResult? Function(SrvNewMessage value)? newMessage,
    TResult? Function(SrvNewRoom value)? newRoom,
    TResult? Function(SrvChangeCover value)? changeCover,
    TResult? Function(SrvUpdateRoom value)? updateRoom,
    TResult? Function(SrvDeleteRoom value)? deleteRoom,
    TResult? Function(SrvAddMembers value)? addMembers,
    TResult? Function(SrvDeleteMembers value)? deleteMembers,
    TResult? Function(SrvAddFriend value)? addFriend,
    TResult? Function(SrvAcceptFriend value)? acceptFriend,
    TResult? Function(SrvRefuseFriend value)? refuseFriend,
    TResult? Function(SrvDeleteFriend value)? deleteFriend,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SrvErrMessage value)? errMessage,
    TResult Function(SrvInitialize value)? initialize,
    TResult Function(SrvNewMessage value)? newMessage,
    TResult Function(SrvNewRoom value)? newRoom,
    TResult Function(SrvChangeCover value)? changeCover,
    TResult Function(SrvUpdateRoom value)? updateRoom,
    TResult Function(SrvDeleteRoom value)? deleteRoom,
    TResult Function(SrvAddMembers value)? addMembers,
    TResult Function(SrvDeleteMembers value)? deleteMembers,
    TResult Function(SrvAddFriend value)? addFriend,
    TResult Function(SrvAcceptFriend value)? acceptFriend,
    TResult Function(SrvRefuseFriend value)? refuseFriend,
    TResult Function(SrvDeleteFriend value)? deleteFriend,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SrvInitializeImplToJson(
      this,
    );
  }
}

abstract class SrvInitialize implements ServerEvent {
  const factory SrvInitialize(final InitializeResponse data) =
      _$SrvInitializeImpl;

  factory SrvInitialize.fromJson(Map<String, dynamic> json) =
      _$SrvInitializeImpl.fromJson;

  @override
  InitializeResponse get data;
}

/// @nodoc
@JsonSerializable()
class _$SrvNewMessageImpl implements SrvNewMessage {
  const _$SrvNewMessageImpl(this.data, {final String? $type})
      : $type = $type ?? 'new-message';

  factory _$SrvNewMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$SrvNewMessageImplFromJson(json);

  @override
  final NewMessageResponse data;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'ServerEvent.newMessage(data: $data)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) errMessage,
    required TResult Function(InitializeResponse data) initialize,
    required TResult Function(NewMessageResponse data) newMessage,
    required TResult Function(NewRoomResponse data) newRoom,
    required TResult Function(ChangeCoverResponse data) changeCover,
    required TResult Function(UpdateRoomResponse data) updateRoom,
    required TResult Function(DeleteRoomResponse data) deleteRoom,
    required TResult Function(AddMembersResponse data) addMembers,
    required TResult Function(DeleteMembersResponse data) deleteMembers,
    required TResult Function(AddFriendResponse data) addFriend,
    required TResult Function(AcceptFriendResponse data) acceptFriend,
    required TResult Function(RefuseFriendResponse data) refuseFriend,
    required TResult Function(DeleteFriendResponse data) deleteFriend,
  }) {
    return newMessage(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? errMessage,
    TResult? Function(InitializeResponse data)? initialize,
    TResult? Function(NewMessageResponse data)? newMessage,
    TResult? Function(NewRoomResponse data)? newRoom,
    TResult? Function(ChangeCoverResponse data)? changeCover,
    TResult? Function(UpdateRoomResponse data)? updateRoom,
    TResult? Function(DeleteRoomResponse data)? deleteRoom,
    TResult? Function(AddMembersResponse data)? addMembers,
    TResult? Function(DeleteMembersResponse data)? deleteMembers,
    TResult? Function(AddFriendResponse data)? addFriend,
    TResult? Function(AcceptFriendResponse data)? acceptFriend,
    TResult? Function(RefuseFriendResponse data)? refuseFriend,
    TResult? Function(DeleteFriendResponse data)? deleteFriend,
  }) {
    return newMessage?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? errMessage,
    TResult Function(InitializeResponse data)? initialize,
    TResult Function(NewMessageResponse data)? newMessage,
    TResult Function(NewRoomResponse data)? newRoom,
    TResult Function(ChangeCoverResponse data)? changeCover,
    TResult Function(UpdateRoomResponse data)? updateRoom,
    TResult Function(DeleteRoomResponse data)? deleteRoom,
    TResult Function(AddMembersResponse data)? addMembers,
    TResult Function(DeleteMembersResponse data)? deleteMembers,
    TResult Function(AddFriendResponse data)? addFriend,
    TResult Function(AcceptFriendResponse data)? acceptFriend,
    TResult Function(RefuseFriendResponse data)? refuseFriend,
    TResult Function(DeleteFriendResponse data)? deleteFriend,
    required TResult orElse(),
  }) {
    if (newMessage != null) {
      return newMessage(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SrvErrMessage value) errMessage,
    required TResult Function(SrvInitialize value) initialize,
    required TResult Function(SrvNewMessage value) newMessage,
    required TResult Function(SrvNewRoom value) newRoom,
    required TResult Function(SrvChangeCover value) changeCover,
    required TResult Function(SrvUpdateRoom value) updateRoom,
    required TResult Function(SrvDeleteRoom value) deleteRoom,
    required TResult Function(SrvAddMembers value) addMembers,
    required TResult Function(SrvDeleteMembers value) deleteMembers,
    required TResult Function(SrvAddFriend value) addFriend,
    required TResult Function(SrvAcceptFriend value) acceptFriend,
    required TResult Function(SrvRefuseFriend value) refuseFriend,
    required TResult Function(SrvDeleteFriend value) deleteFriend,
  }) {
    return newMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SrvErrMessage value)? errMessage,
    TResult? Function(SrvInitialize value)? initialize,
    TResult? Function(SrvNewMessage value)? newMessage,
    TResult? Function(SrvNewRoom value)? newRoom,
    TResult? Function(SrvChangeCover value)? changeCover,
    TResult? Function(SrvUpdateRoom value)? updateRoom,
    TResult? Function(SrvDeleteRoom value)? deleteRoom,
    TResult? Function(SrvAddMembers value)? addMembers,
    TResult? Function(SrvDeleteMembers value)? deleteMembers,
    TResult? Function(SrvAddFriend value)? addFriend,
    TResult? Function(SrvAcceptFriend value)? acceptFriend,
    TResult? Function(SrvRefuseFriend value)? refuseFriend,
    TResult? Function(SrvDeleteFriend value)? deleteFriend,
  }) {
    return newMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SrvErrMessage value)? errMessage,
    TResult Function(SrvInitialize value)? initialize,
    TResult Function(SrvNewMessage value)? newMessage,
    TResult Function(SrvNewRoom value)? newRoom,
    TResult Function(SrvChangeCover value)? changeCover,
    TResult Function(SrvUpdateRoom value)? updateRoom,
    TResult Function(SrvDeleteRoom value)? deleteRoom,
    TResult Function(SrvAddMembers value)? addMembers,
    TResult Function(SrvDeleteMembers value)? deleteMembers,
    TResult Function(SrvAddFriend value)? addFriend,
    TResult Function(SrvAcceptFriend value)? acceptFriend,
    TResult Function(SrvRefuseFriend value)? refuseFriend,
    TResult Function(SrvDeleteFriend value)? deleteFriend,
    required TResult orElse(),
  }) {
    if (newMessage != null) {
      return newMessage(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SrvNewMessageImplToJson(
      this,
    );
  }
}

abstract class SrvNewMessage implements ServerEvent {
  const factory SrvNewMessage(final NewMessageResponse data) =
      _$SrvNewMessageImpl;

  factory SrvNewMessage.fromJson(Map<String, dynamic> json) =
      _$SrvNewMessageImpl.fromJson;

  @override
  NewMessageResponse get data;
}

/// @nodoc
@JsonSerializable()
class _$SrvNewRoomImpl implements SrvNewRoom {
  const _$SrvNewRoomImpl(this.data, {final String? $type})
      : $type = $type ?? 'new-room';

  factory _$SrvNewRoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$SrvNewRoomImplFromJson(json);

  @override
  final NewRoomResponse data;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'ServerEvent.newRoom(data: $data)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) errMessage,
    required TResult Function(InitializeResponse data) initialize,
    required TResult Function(NewMessageResponse data) newMessage,
    required TResult Function(NewRoomResponse data) newRoom,
    required TResult Function(ChangeCoverResponse data) changeCover,
    required TResult Function(UpdateRoomResponse data) updateRoom,
    required TResult Function(DeleteRoomResponse data) deleteRoom,
    required TResult Function(AddMembersResponse data) addMembers,
    required TResult Function(DeleteMembersResponse data) deleteMembers,
    required TResult Function(AddFriendResponse data) addFriend,
    required TResult Function(AcceptFriendResponse data) acceptFriend,
    required TResult Function(RefuseFriendResponse data) refuseFriend,
    required TResult Function(DeleteFriendResponse data) deleteFriend,
  }) {
    return newRoom(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? errMessage,
    TResult? Function(InitializeResponse data)? initialize,
    TResult? Function(NewMessageResponse data)? newMessage,
    TResult? Function(NewRoomResponse data)? newRoom,
    TResult? Function(ChangeCoverResponse data)? changeCover,
    TResult? Function(UpdateRoomResponse data)? updateRoom,
    TResult? Function(DeleteRoomResponse data)? deleteRoom,
    TResult? Function(AddMembersResponse data)? addMembers,
    TResult? Function(DeleteMembersResponse data)? deleteMembers,
    TResult? Function(AddFriendResponse data)? addFriend,
    TResult? Function(AcceptFriendResponse data)? acceptFriend,
    TResult? Function(RefuseFriendResponse data)? refuseFriend,
    TResult? Function(DeleteFriendResponse data)? deleteFriend,
  }) {
    return newRoom?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? errMessage,
    TResult Function(InitializeResponse data)? initialize,
    TResult Function(NewMessageResponse data)? newMessage,
    TResult Function(NewRoomResponse data)? newRoom,
    TResult Function(ChangeCoverResponse data)? changeCover,
    TResult Function(UpdateRoomResponse data)? updateRoom,
    TResult Function(DeleteRoomResponse data)? deleteRoom,
    TResult Function(AddMembersResponse data)? addMembers,
    TResult Function(DeleteMembersResponse data)? deleteMembers,
    TResult Function(AddFriendResponse data)? addFriend,
    TResult Function(AcceptFriendResponse data)? acceptFriend,
    TResult Function(RefuseFriendResponse data)? refuseFriend,
    TResult Function(DeleteFriendResponse data)? deleteFriend,
    required TResult orElse(),
  }) {
    if (newRoom != null) {
      return newRoom(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SrvErrMessage value) errMessage,
    required TResult Function(SrvInitialize value) initialize,
    required TResult Function(SrvNewMessage value) newMessage,
    required TResult Function(SrvNewRoom value) newRoom,
    required TResult Function(SrvChangeCover value) changeCover,
    required TResult Function(SrvUpdateRoom value) updateRoom,
    required TResult Function(SrvDeleteRoom value) deleteRoom,
    required TResult Function(SrvAddMembers value) addMembers,
    required TResult Function(SrvDeleteMembers value) deleteMembers,
    required TResult Function(SrvAddFriend value) addFriend,
    required TResult Function(SrvAcceptFriend value) acceptFriend,
    required TResult Function(SrvRefuseFriend value) refuseFriend,
    required TResult Function(SrvDeleteFriend value) deleteFriend,
  }) {
    return newRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SrvErrMessage value)? errMessage,
    TResult? Function(SrvInitialize value)? initialize,
    TResult? Function(SrvNewMessage value)? newMessage,
    TResult? Function(SrvNewRoom value)? newRoom,
    TResult? Function(SrvChangeCover value)? changeCover,
    TResult? Function(SrvUpdateRoom value)? updateRoom,
    TResult? Function(SrvDeleteRoom value)? deleteRoom,
    TResult? Function(SrvAddMembers value)? addMembers,
    TResult? Function(SrvDeleteMembers value)? deleteMembers,
    TResult? Function(SrvAddFriend value)? addFriend,
    TResult? Function(SrvAcceptFriend value)? acceptFriend,
    TResult? Function(SrvRefuseFriend value)? refuseFriend,
    TResult? Function(SrvDeleteFriend value)? deleteFriend,
  }) {
    return newRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SrvErrMessage value)? errMessage,
    TResult Function(SrvInitialize value)? initialize,
    TResult Function(SrvNewMessage value)? newMessage,
    TResult Function(SrvNewRoom value)? newRoom,
    TResult Function(SrvChangeCover value)? changeCover,
    TResult Function(SrvUpdateRoom value)? updateRoom,
    TResult Function(SrvDeleteRoom value)? deleteRoom,
    TResult Function(SrvAddMembers value)? addMembers,
    TResult Function(SrvDeleteMembers value)? deleteMembers,
    TResult Function(SrvAddFriend value)? addFriend,
    TResult Function(SrvAcceptFriend value)? acceptFriend,
    TResult Function(SrvRefuseFriend value)? refuseFriend,
    TResult Function(SrvDeleteFriend value)? deleteFriend,
    required TResult orElse(),
  }) {
    if (newRoom != null) {
      return newRoom(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SrvNewRoomImplToJson(
      this,
    );
  }
}

abstract class SrvNewRoom implements ServerEvent {
  const factory SrvNewRoom(final NewRoomResponse data) = _$SrvNewRoomImpl;

  factory SrvNewRoom.fromJson(Map<String, dynamic> json) =
      _$SrvNewRoomImpl.fromJson;

  @override
  NewRoomResponse get data;
}

/// @nodoc
@JsonSerializable()
class _$SrvChangeCoverImpl implements SrvChangeCover {
  const _$SrvChangeCoverImpl(this.data, {final String? $type})
      : $type = $type ?? 'change-cover';

  factory _$SrvChangeCoverImpl.fromJson(Map<String, dynamic> json) =>
      _$$SrvChangeCoverImplFromJson(json);

  @override
  final ChangeCoverResponse data;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'ServerEvent.changeCover(data: $data)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) errMessage,
    required TResult Function(InitializeResponse data) initialize,
    required TResult Function(NewMessageResponse data) newMessage,
    required TResult Function(NewRoomResponse data) newRoom,
    required TResult Function(ChangeCoverResponse data) changeCover,
    required TResult Function(UpdateRoomResponse data) updateRoom,
    required TResult Function(DeleteRoomResponse data) deleteRoom,
    required TResult Function(AddMembersResponse data) addMembers,
    required TResult Function(DeleteMembersResponse data) deleteMembers,
    required TResult Function(AddFriendResponse data) addFriend,
    required TResult Function(AcceptFriendResponse data) acceptFriend,
    required TResult Function(RefuseFriendResponse data) refuseFriend,
    required TResult Function(DeleteFriendResponse data) deleteFriend,
  }) {
    return changeCover(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? errMessage,
    TResult? Function(InitializeResponse data)? initialize,
    TResult? Function(NewMessageResponse data)? newMessage,
    TResult? Function(NewRoomResponse data)? newRoom,
    TResult? Function(ChangeCoverResponse data)? changeCover,
    TResult? Function(UpdateRoomResponse data)? updateRoom,
    TResult? Function(DeleteRoomResponse data)? deleteRoom,
    TResult? Function(AddMembersResponse data)? addMembers,
    TResult? Function(DeleteMembersResponse data)? deleteMembers,
    TResult? Function(AddFriendResponse data)? addFriend,
    TResult? Function(AcceptFriendResponse data)? acceptFriend,
    TResult? Function(RefuseFriendResponse data)? refuseFriend,
    TResult? Function(DeleteFriendResponse data)? deleteFriend,
  }) {
    return changeCover?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? errMessage,
    TResult Function(InitializeResponse data)? initialize,
    TResult Function(NewMessageResponse data)? newMessage,
    TResult Function(NewRoomResponse data)? newRoom,
    TResult Function(ChangeCoverResponse data)? changeCover,
    TResult Function(UpdateRoomResponse data)? updateRoom,
    TResult Function(DeleteRoomResponse data)? deleteRoom,
    TResult Function(AddMembersResponse data)? addMembers,
    TResult Function(DeleteMembersResponse data)? deleteMembers,
    TResult Function(AddFriendResponse data)? addFriend,
    TResult Function(AcceptFriendResponse data)? acceptFriend,
    TResult Function(RefuseFriendResponse data)? refuseFriend,
    TResult Function(DeleteFriendResponse data)? deleteFriend,
    required TResult orElse(),
  }) {
    if (changeCover != null) {
      return changeCover(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SrvErrMessage value) errMessage,
    required TResult Function(SrvInitialize value) initialize,
    required TResult Function(SrvNewMessage value) newMessage,
    required TResult Function(SrvNewRoom value) newRoom,
    required TResult Function(SrvChangeCover value) changeCover,
    required TResult Function(SrvUpdateRoom value) updateRoom,
    required TResult Function(SrvDeleteRoom value) deleteRoom,
    required TResult Function(SrvAddMembers value) addMembers,
    required TResult Function(SrvDeleteMembers value) deleteMembers,
    required TResult Function(SrvAddFriend value) addFriend,
    required TResult Function(SrvAcceptFriend value) acceptFriend,
    required TResult Function(SrvRefuseFriend value) refuseFriend,
    required TResult Function(SrvDeleteFriend value) deleteFriend,
  }) {
    return changeCover(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SrvErrMessage value)? errMessage,
    TResult? Function(SrvInitialize value)? initialize,
    TResult? Function(SrvNewMessage value)? newMessage,
    TResult? Function(SrvNewRoom value)? newRoom,
    TResult? Function(SrvChangeCover value)? changeCover,
    TResult? Function(SrvUpdateRoom value)? updateRoom,
    TResult? Function(SrvDeleteRoom value)? deleteRoom,
    TResult? Function(SrvAddMembers value)? addMembers,
    TResult? Function(SrvDeleteMembers value)? deleteMembers,
    TResult? Function(SrvAddFriend value)? addFriend,
    TResult? Function(SrvAcceptFriend value)? acceptFriend,
    TResult? Function(SrvRefuseFriend value)? refuseFriend,
    TResult? Function(SrvDeleteFriend value)? deleteFriend,
  }) {
    return changeCover?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SrvErrMessage value)? errMessage,
    TResult Function(SrvInitialize value)? initialize,
    TResult Function(SrvNewMessage value)? newMessage,
    TResult Function(SrvNewRoom value)? newRoom,
    TResult Function(SrvChangeCover value)? changeCover,
    TResult Function(SrvUpdateRoom value)? updateRoom,
    TResult Function(SrvDeleteRoom value)? deleteRoom,
    TResult Function(SrvAddMembers value)? addMembers,
    TResult Function(SrvDeleteMembers value)? deleteMembers,
    TResult Function(SrvAddFriend value)? addFriend,
    TResult Function(SrvAcceptFriend value)? acceptFriend,
    TResult Function(SrvRefuseFriend value)? refuseFriend,
    TResult Function(SrvDeleteFriend value)? deleteFriend,
    required TResult orElse(),
  }) {
    if (changeCover != null) {
      return changeCover(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SrvChangeCoverImplToJson(
      this,
    );
  }
}

abstract class SrvChangeCover implements ServerEvent {
  const factory SrvChangeCover(final ChangeCoverResponse data) =
      _$SrvChangeCoverImpl;

  factory SrvChangeCover.fromJson(Map<String, dynamic> json) =
      _$SrvChangeCoverImpl.fromJson;

  @override
  ChangeCoverResponse get data;
}

/// @nodoc
@JsonSerializable()
class _$SrvUpdateRoomImpl implements SrvUpdateRoom {
  const _$SrvUpdateRoomImpl(this.data, {final String? $type})
      : $type = $type ?? 'update-room';

  factory _$SrvUpdateRoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$SrvUpdateRoomImplFromJson(json);

  @override
  final UpdateRoomResponse data;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'ServerEvent.updateRoom(data: $data)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) errMessage,
    required TResult Function(InitializeResponse data) initialize,
    required TResult Function(NewMessageResponse data) newMessage,
    required TResult Function(NewRoomResponse data) newRoom,
    required TResult Function(ChangeCoverResponse data) changeCover,
    required TResult Function(UpdateRoomResponse data) updateRoom,
    required TResult Function(DeleteRoomResponse data) deleteRoom,
    required TResult Function(AddMembersResponse data) addMembers,
    required TResult Function(DeleteMembersResponse data) deleteMembers,
    required TResult Function(AddFriendResponse data) addFriend,
    required TResult Function(AcceptFriendResponse data) acceptFriend,
    required TResult Function(RefuseFriendResponse data) refuseFriend,
    required TResult Function(DeleteFriendResponse data) deleteFriend,
  }) {
    return updateRoom(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? errMessage,
    TResult? Function(InitializeResponse data)? initialize,
    TResult? Function(NewMessageResponse data)? newMessage,
    TResult? Function(NewRoomResponse data)? newRoom,
    TResult? Function(ChangeCoverResponse data)? changeCover,
    TResult? Function(UpdateRoomResponse data)? updateRoom,
    TResult? Function(DeleteRoomResponse data)? deleteRoom,
    TResult? Function(AddMembersResponse data)? addMembers,
    TResult? Function(DeleteMembersResponse data)? deleteMembers,
    TResult? Function(AddFriendResponse data)? addFriend,
    TResult? Function(AcceptFriendResponse data)? acceptFriend,
    TResult? Function(RefuseFriendResponse data)? refuseFriend,
    TResult? Function(DeleteFriendResponse data)? deleteFriend,
  }) {
    return updateRoom?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? errMessage,
    TResult Function(InitializeResponse data)? initialize,
    TResult Function(NewMessageResponse data)? newMessage,
    TResult Function(NewRoomResponse data)? newRoom,
    TResult Function(ChangeCoverResponse data)? changeCover,
    TResult Function(UpdateRoomResponse data)? updateRoom,
    TResult Function(DeleteRoomResponse data)? deleteRoom,
    TResult Function(AddMembersResponse data)? addMembers,
    TResult Function(DeleteMembersResponse data)? deleteMembers,
    TResult Function(AddFriendResponse data)? addFriend,
    TResult Function(AcceptFriendResponse data)? acceptFriend,
    TResult Function(RefuseFriendResponse data)? refuseFriend,
    TResult Function(DeleteFriendResponse data)? deleteFriend,
    required TResult orElse(),
  }) {
    if (updateRoom != null) {
      return updateRoom(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SrvErrMessage value) errMessage,
    required TResult Function(SrvInitialize value) initialize,
    required TResult Function(SrvNewMessage value) newMessage,
    required TResult Function(SrvNewRoom value) newRoom,
    required TResult Function(SrvChangeCover value) changeCover,
    required TResult Function(SrvUpdateRoom value) updateRoom,
    required TResult Function(SrvDeleteRoom value) deleteRoom,
    required TResult Function(SrvAddMembers value) addMembers,
    required TResult Function(SrvDeleteMembers value) deleteMembers,
    required TResult Function(SrvAddFriend value) addFriend,
    required TResult Function(SrvAcceptFriend value) acceptFriend,
    required TResult Function(SrvRefuseFriend value) refuseFriend,
    required TResult Function(SrvDeleteFriend value) deleteFriend,
  }) {
    return updateRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SrvErrMessage value)? errMessage,
    TResult? Function(SrvInitialize value)? initialize,
    TResult? Function(SrvNewMessage value)? newMessage,
    TResult? Function(SrvNewRoom value)? newRoom,
    TResult? Function(SrvChangeCover value)? changeCover,
    TResult? Function(SrvUpdateRoom value)? updateRoom,
    TResult? Function(SrvDeleteRoom value)? deleteRoom,
    TResult? Function(SrvAddMembers value)? addMembers,
    TResult? Function(SrvDeleteMembers value)? deleteMembers,
    TResult? Function(SrvAddFriend value)? addFriend,
    TResult? Function(SrvAcceptFriend value)? acceptFriend,
    TResult? Function(SrvRefuseFriend value)? refuseFriend,
    TResult? Function(SrvDeleteFriend value)? deleteFriend,
  }) {
    return updateRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SrvErrMessage value)? errMessage,
    TResult Function(SrvInitialize value)? initialize,
    TResult Function(SrvNewMessage value)? newMessage,
    TResult Function(SrvNewRoom value)? newRoom,
    TResult Function(SrvChangeCover value)? changeCover,
    TResult Function(SrvUpdateRoom value)? updateRoom,
    TResult Function(SrvDeleteRoom value)? deleteRoom,
    TResult Function(SrvAddMembers value)? addMembers,
    TResult Function(SrvDeleteMembers value)? deleteMembers,
    TResult Function(SrvAddFriend value)? addFriend,
    TResult Function(SrvAcceptFriend value)? acceptFriend,
    TResult Function(SrvRefuseFriend value)? refuseFriend,
    TResult Function(SrvDeleteFriend value)? deleteFriend,
    required TResult orElse(),
  }) {
    if (updateRoom != null) {
      return updateRoom(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SrvUpdateRoomImplToJson(
      this,
    );
  }
}

abstract class SrvUpdateRoom implements ServerEvent {
  const factory SrvUpdateRoom(final UpdateRoomResponse data) =
      _$SrvUpdateRoomImpl;

  factory SrvUpdateRoom.fromJson(Map<String, dynamic> json) =
      _$SrvUpdateRoomImpl.fromJson;

  @override
  UpdateRoomResponse get data;
}

/// @nodoc
@JsonSerializable()
class _$SrvDeleteRoomImpl implements SrvDeleteRoom {
  const _$SrvDeleteRoomImpl(this.data, {final String? $type})
      : $type = $type ?? 'delete-room';

  factory _$SrvDeleteRoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$SrvDeleteRoomImplFromJson(json);

  @override
  final DeleteRoomResponse data;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'ServerEvent.deleteRoom(data: $data)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) errMessage,
    required TResult Function(InitializeResponse data) initialize,
    required TResult Function(NewMessageResponse data) newMessage,
    required TResult Function(NewRoomResponse data) newRoom,
    required TResult Function(ChangeCoverResponse data) changeCover,
    required TResult Function(UpdateRoomResponse data) updateRoom,
    required TResult Function(DeleteRoomResponse data) deleteRoom,
    required TResult Function(AddMembersResponse data) addMembers,
    required TResult Function(DeleteMembersResponse data) deleteMembers,
    required TResult Function(AddFriendResponse data) addFriend,
    required TResult Function(AcceptFriendResponse data) acceptFriend,
    required TResult Function(RefuseFriendResponse data) refuseFriend,
    required TResult Function(DeleteFriendResponse data) deleteFriend,
  }) {
    return deleteRoom(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? errMessage,
    TResult? Function(InitializeResponse data)? initialize,
    TResult? Function(NewMessageResponse data)? newMessage,
    TResult? Function(NewRoomResponse data)? newRoom,
    TResult? Function(ChangeCoverResponse data)? changeCover,
    TResult? Function(UpdateRoomResponse data)? updateRoom,
    TResult? Function(DeleteRoomResponse data)? deleteRoom,
    TResult? Function(AddMembersResponse data)? addMembers,
    TResult? Function(DeleteMembersResponse data)? deleteMembers,
    TResult? Function(AddFriendResponse data)? addFriend,
    TResult? Function(AcceptFriendResponse data)? acceptFriend,
    TResult? Function(RefuseFriendResponse data)? refuseFriend,
    TResult? Function(DeleteFriendResponse data)? deleteFriend,
  }) {
    return deleteRoom?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? errMessage,
    TResult Function(InitializeResponse data)? initialize,
    TResult Function(NewMessageResponse data)? newMessage,
    TResult Function(NewRoomResponse data)? newRoom,
    TResult Function(ChangeCoverResponse data)? changeCover,
    TResult Function(UpdateRoomResponse data)? updateRoom,
    TResult Function(DeleteRoomResponse data)? deleteRoom,
    TResult Function(AddMembersResponse data)? addMembers,
    TResult Function(DeleteMembersResponse data)? deleteMembers,
    TResult Function(AddFriendResponse data)? addFriend,
    TResult Function(AcceptFriendResponse data)? acceptFriend,
    TResult Function(RefuseFriendResponse data)? refuseFriend,
    TResult Function(DeleteFriendResponse data)? deleteFriend,
    required TResult orElse(),
  }) {
    if (deleteRoom != null) {
      return deleteRoom(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SrvErrMessage value) errMessage,
    required TResult Function(SrvInitialize value) initialize,
    required TResult Function(SrvNewMessage value) newMessage,
    required TResult Function(SrvNewRoom value) newRoom,
    required TResult Function(SrvChangeCover value) changeCover,
    required TResult Function(SrvUpdateRoom value) updateRoom,
    required TResult Function(SrvDeleteRoom value) deleteRoom,
    required TResult Function(SrvAddMembers value) addMembers,
    required TResult Function(SrvDeleteMembers value) deleteMembers,
    required TResult Function(SrvAddFriend value) addFriend,
    required TResult Function(SrvAcceptFriend value) acceptFriend,
    required TResult Function(SrvRefuseFriend value) refuseFriend,
    required TResult Function(SrvDeleteFriend value) deleteFriend,
  }) {
    return deleteRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SrvErrMessage value)? errMessage,
    TResult? Function(SrvInitialize value)? initialize,
    TResult? Function(SrvNewMessage value)? newMessage,
    TResult? Function(SrvNewRoom value)? newRoom,
    TResult? Function(SrvChangeCover value)? changeCover,
    TResult? Function(SrvUpdateRoom value)? updateRoom,
    TResult? Function(SrvDeleteRoom value)? deleteRoom,
    TResult? Function(SrvAddMembers value)? addMembers,
    TResult? Function(SrvDeleteMembers value)? deleteMembers,
    TResult? Function(SrvAddFriend value)? addFriend,
    TResult? Function(SrvAcceptFriend value)? acceptFriend,
    TResult? Function(SrvRefuseFriend value)? refuseFriend,
    TResult? Function(SrvDeleteFriend value)? deleteFriend,
  }) {
    return deleteRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SrvErrMessage value)? errMessage,
    TResult Function(SrvInitialize value)? initialize,
    TResult Function(SrvNewMessage value)? newMessage,
    TResult Function(SrvNewRoom value)? newRoom,
    TResult Function(SrvChangeCover value)? changeCover,
    TResult Function(SrvUpdateRoom value)? updateRoom,
    TResult Function(SrvDeleteRoom value)? deleteRoom,
    TResult Function(SrvAddMembers value)? addMembers,
    TResult Function(SrvDeleteMembers value)? deleteMembers,
    TResult Function(SrvAddFriend value)? addFriend,
    TResult Function(SrvAcceptFriend value)? acceptFriend,
    TResult Function(SrvRefuseFriend value)? refuseFriend,
    TResult Function(SrvDeleteFriend value)? deleteFriend,
    required TResult orElse(),
  }) {
    if (deleteRoom != null) {
      return deleteRoom(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SrvDeleteRoomImplToJson(
      this,
    );
  }
}

abstract class SrvDeleteRoom implements ServerEvent {
  const factory SrvDeleteRoom(final DeleteRoomResponse data) =
      _$SrvDeleteRoomImpl;

  factory SrvDeleteRoom.fromJson(Map<String, dynamic> json) =
      _$SrvDeleteRoomImpl.fromJson;

  @override
  DeleteRoomResponse get data;
}

/// @nodoc
@JsonSerializable()
class _$SrvAddMembersImpl implements SrvAddMembers {
  const _$SrvAddMembersImpl(this.data, {final String? $type})
      : $type = $type ?? 'add-members';

  factory _$SrvAddMembersImpl.fromJson(Map<String, dynamic> json) =>
      _$$SrvAddMembersImplFromJson(json);

  @override
  final AddMembersResponse data;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'ServerEvent.addMembers(data: $data)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) errMessage,
    required TResult Function(InitializeResponse data) initialize,
    required TResult Function(NewMessageResponse data) newMessage,
    required TResult Function(NewRoomResponse data) newRoom,
    required TResult Function(ChangeCoverResponse data) changeCover,
    required TResult Function(UpdateRoomResponse data) updateRoom,
    required TResult Function(DeleteRoomResponse data) deleteRoom,
    required TResult Function(AddMembersResponse data) addMembers,
    required TResult Function(DeleteMembersResponse data) deleteMembers,
    required TResult Function(AddFriendResponse data) addFriend,
    required TResult Function(AcceptFriendResponse data) acceptFriend,
    required TResult Function(RefuseFriendResponse data) refuseFriend,
    required TResult Function(DeleteFriendResponse data) deleteFriend,
  }) {
    return addMembers(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? errMessage,
    TResult? Function(InitializeResponse data)? initialize,
    TResult? Function(NewMessageResponse data)? newMessage,
    TResult? Function(NewRoomResponse data)? newRoom,
    TResult? Function(ChangeCoverResponse data)? changeCover,
    TResult? Function(UpdateRoomResponse data)? updateRoom,
    TResult? Function(DeleteRoomResponse data)? deleteRoom,
    TResult? Function(AddMembersResponse data)? addMembers,
    TResult? Function(DeleteMembersResponse data)? deleteMembers,
    TResult? Function(AddFriendResponse data)? addFriend,
    TResult? Function(AcceptFriendResponse data)? acceptFriend,
    TResult? Function(RefuseFriendResponse data)? refuseFriend,
    TResult? Function(DeleteFriendResponse data)? deleteFriend,
  }) {
    return addMembers?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? errMessage,
    TResult Function(InitializeResponse data)? initialize,
    TResult Function(NewMessageResponse data)? newMessage,
    TResult Function(NewRoomResponse data)? newRoom,
    TResult Function(ChangeCoverResponse data)? changeCover,
    TResult Function(UpdateRoomResponse data)? updateRoom,
    TResult Function(DeleteRoomResponse data)? deleteRoom,
    TResult Function(AddMembersResponse data)? addMembers,
    TResult Function(DeleteMembersResponse data)? deleteMembers,
    TResult Function(AddFriendResponse data)? addFriend,
    TResult Function(AcceptFriendResponse data)? acceptFriend,
    TResult Function(RefuseFriendResponse data)? refuseFriend,
    TResult Function(DeleteFriendResponse data)? deleteFriend,
    required TResult orElse(),
  }) {
    if (addMembers != null) {
      return addMembers(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SrvErrMessage value) errMessage,
    required TResult Function(SrvInitialize value) initialize,
    required TResult Function(SrvNewMessage value) newMessage,
    required TResult Function(SrvNewRoom value) newRoom,
    required TResult Function(SrvChangeCover value) changeCover,
    required TResult Function(SrvUpdateRoom value) updateRoom,
    required TResult Function(SrvDeleteRoom value) deleteRoom,
    required TResult Function(SrvAddMembers value) addMembers,
    required TResult Function(SrvDeleteMembers value) deleteMembers,
    required TResult Function(SrvAddFriend value) addFriend,
    required TResult Function(SrvAcceptFriend value) acceptFriend,
    required TResult Function(SrvRefuseFriend value) refuseFriend,
    required TResult Function(SrvDeleteFriend value) deleteFriend,
  }) {
    return addMembers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SrvErrMessage value)? errMessage,
    TResult? Function(SrvInitialize value)? initialize,
    TResult? Function(SrvNewMessage value)? newMessage,
    TResult? Function(SrvNewRoom value)? newRoom,
    TResult? Function(SrvChangeCover value)? changeCover,
    TResult? Function(SrvUpdateRoom value)? updateRoom,
    TResult? Function(SrvDeleteRoom value)? deleteRoom,
    TResult? Function(SrvAddMembers value)? addMembers,
    TResult? Function(SrvDeleteMembers value)? deleteMembers,
    TResult? Function(SrvAddFriend value)? addFriend,
    TResult? Function(SrvAcceptFriend value)? acceptFriend,
    TResult? Function(SrvRefuseFriend value)? refuseFriend,
    TResult? Function(SrvDeleteFriend value)? deleteFriend,
  }) {
    return addMembers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SrvErrMessage value)? errMessage,
    TResult Function(SrvInitialize value)? initialize,
    TResult Function(SrvNewMessage value)? newMessage,
    TResult Function(SrvNewRoom value)? newRoom,
    TResult Function(SrvChangeCover value)? changeCover,
    TResult Function(SrvUpdateRoom value)? updateRoom,
    TResult Function(SrvDeleteRoom value)? deleteRoom,
    TResult Function(SrvAddMembers value)? addMembers,
    TResult Function(SrvDeleteMembers value)? deleteMembers,
    TResult Function(SrvAddFriend value)? addFriend,
    TResult Function(SrvAcceptFriend value)? acceptFriend,
    TResult Function(SrvRefuseFriend value)? refuseFriend,
    TResult Function(SrvDeleteFriend value)? deleteFriend,
    required TResult orElse(),
  }) {
    if (addMembers != null) {
      return addMembers(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SrvAddMembersImplToJson(
      this,
    );
  }
}

abstract class SrvAddMembers implements ServerEvent {
  const factory SrvAddMembers(final AddMembersResponse data) =
      _$SrvAddMembersImpl;

  factory SrvAddMembers.fromJson(Map<String, dynamic> json) =
      _$SrvAddMembersImpl.fromJson;

  @override
  AddMembersResponse get data;
}

/// @nodoc
@JsonSerializable()
class _$SrvDeleteMembersImpl implements SrvDeleteMembers {
  const _$SrvDeleteMembersImpl(this.data, {final String? $type})
      : $type = $type ?? 'delete-members';

  factory _$SrvDeleteMembersImpl.fromJson(Map<String, dynamic> json) =>
      _$$SrvDeleteMembersImplFromJson(json);

  @override
  final DeleteMembersResponse data;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'ServerEvent.deleteMembers(data: $data)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) errMessage,
    required TResult Function(InitializeResponse data) initialize,
    required TResult Function(NewMessageResponse data) newMessage,
    required TResult Function(NewRoomResponse data) newRoom,
    required TResult Function(ChangeCoverResponse data) changeCover,
    required TResult Function(UpdateRoomResponse data) updateRoom,
    required TResult Function(DeleteRoomResponse data) deleteRoom,
    required TResult Function(AddMembersResponse data) addMembers,
    required TResult Function(DeleteMembersResponse data) deleteMembers,
    required TResult Function(AddFriendResponse data) addFriend,
    required TResult Function(AcceptFriendResponse data) acceptFriend,
    required TResult Function(RefuseFriendResponse data) refuseFriend,
    required TResult Function(DeleteFriendResponse data) deleteFriend,
  }) {
    return deleteMembers(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? errMessage,
    TResult? Function(InitializeResponse data)? initialize,
    TResult? Function(NewMessageResponse data)? newMessage,
    TResult? Function(NewRoomResponse data)? newRoom,
    TResult? Function(ChangeCoverResponse data)? changeCover,
    TResult? Function(UpdateRoomResponse data)? updateRoom,
    TResult? Function(DeleteRoomResponse data)? deleteRoom,
    TResult? Function(AddMembersResponse data)? addMembers,
    TResult? Function(DeleteMembersResponse data)? deleteMembers,
    TResult? Function(AddFriendResponse data)? addFriend,
    TResult? Function(AcceptFriendResponse data)? acceptFriend,
    TResult? Function(RefuseFriendResponse data)? refuseFriend,
    TResult? Function(DeleteFriendResponse data)? deleteFriend,
  }) {
    return deleteMembers?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? errMessage,
    TResult Function(InitializeResponse data)? initialize,
    TResult Function(NewMessageResponse data)? newMessage,
    TResult Function(NewRoomResponse data)? newRoom,
    TResult Function(ChangeCoverResponse data)? changeCover,
    TResult Function(UpdateRoomResponse data)? updateRoom,
    TResult Function(DeleteRoomResponse data)? deleteRoom,
    TResult Function(AddMembersResponse data)? addMembers,
    TResult Function(DeleteMembersResponse data)? deleteMembers,
    TResult Function(AddFriendResponse data)? addFriend,
    TResult Function(AcceptFriendResponse data)? acceptFriend,
    TResult Function(RefuseFriendResponse data)? refuseFriend,
    TResult Function(DeleteFriendResponse data)? deleteFriend,
    required TResult orElse(),
  }) {
    if (deleteMembers != null) {
      return deleteMembers(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SrvErrMessage value) errMessage,
    required TResult Function(SrvInitialize value) initialize,
    required TResult Function(SrvNewMessage value) newMessage,
    required TResult Function(SrvNewRoom value) newRoom,
    required TResult Function(SrvChangeCover value) changeCover,
    required TResult Function(SrvUpdateRoom value) updateRoom,
    required TResult Function(SrvDeleteRoom value) deleteRoom,
    required TResult Function(SrvAddMembers value) addMembers,
    required TResult Function(SrvDeleteMembers value) deleteMembers,
    required TResult Function(SrvAddFriend value) addFriend,
    required TResult Function(SrvAcceptFriend value) acceptFriend,
    required TResult Function(SrvRefuseFriend value) refuseFriend,
    required TResult Function(SrvDeleteFriend value) deleteFriend,
  }) {
    return deleteMembers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SrvErrMessage value)? errMessage,
    TResult? Function(SrvInitialize value)? initialize,
    TResult? Function(SrvNewMessage value)? newMessage,
    TResult? Function(SrvNewRoom value)? newRoom,
    TResult? Function(SrvChangeCover value)? changeCover,
    TResult? Function(SrvUpdateRoom value)? updateRoom,
    TResult? Function(SrvDeleteRoom value)? deleteRoom,
    TResult? Function(SrvAddMembers value)? addMembers,
    TResult? Function(SrvDeleteMembers value)? deleteMembers,
    TResult? Function(SrvAddFriend value)? addFriend,
    TResult? Function(SrvAcceptFriend value)? acceptFriend,
    TResult? Function(SrvRefuseFriend value)? refuseFriend,
    TResult? Function(SrvDeleteFriend value)? deleteFriend,
  }) {
    return deleteMembers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SrvErrMessage value)? errMessage,
    TResult Function(SrvInitialize value)? initialize,
    TResult Function(SrvNewMessage value)? newMessage,
    TResult Function(SrvNewRoom value)? newRoom,
    TResult Function(SrvChangeCover value)? changeCover,
    TResult Function(SrvUpdateRoom value)? updateRoom,
    TResult Function(SrvDeleteRoom value)? deleteRoom,
    TResult Function(SrvAddMembers value)? addMembers,
    TResult Function(SrvDeleteMembers value)? deleteMembers,
    TResult Function(SrvAddFriend value)? addFriend,
    TResult Function(SrvAcceptFriend value)? acceptFriend,
    TResult Function(SrvRefuseFriend value)? refuseFriend,
    TResult Function(SrvDeleteFriend value)? deleteFriend,
    required TResult orElse(),
  }) {
    if (deleteMembers != null) {
      return deleteMembers(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SrvDeleteMembersImplToJson(
      this,
    );
  }
}

abstract class SrvDeleteMembers implements ServerEvent {
  const factory SrvDeleteMembers(final DeleteMembersResponse data) =
      _$SrvDeleteMembersImpl;

  factory SrvDeleteMembers.fromJson(Map<String, dynamic> json) =
      _$SrvDeleteMembersImpl.fromJson;

  @override
  DeleteMembersResponse get data;
}

/// @nodoc
@JsonSerializable()
class _$SrvAddFriendImpl implements SrvAddFriend {
  const _$SrvAddFriendImpl(this.data, {final String? $type})
      : $type = $type ?? 'add-friend';

  factory _$SrvAddFriendImpl.fromJson(Map<String, dynamic> json) =>
      _$$SrvAddFriendImplFromJson(json);

  @override
  final AddFriendResponse data;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'ServerEvent.addFriend(data: $data)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) errMessage,
    required TResult Function(InitializeResponse data) initialize,
    required TResult Function(NewMessageResponse data) newMessage,
    required TResult Function(NewRoomResponse data) newRoom,
    required TResult Function(ChangeCoverResponse data) changeCover,
    required TResult Function(UpdateRoomResponse data) updateRoom,
    required TResult Function(DeleteRoomResponse data) deleteRoom,
    required TResult Function(AddMembersResponse data) addMembers,
    required TResult Function(DeleteMembersResponse data) deleteMembers,
    required TResult Function(AddFriendResponse data) addFriend,
    required TResult Function(AcceptFriendResponse data) acceptFriend,
    required TResult Function(RefuseFriendResponse data) refuseFriend,
    required TResult Function(DeleteFriendResponse data) deleteFriend,
  }) {
    return addFriend(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? errMessage,
    TResult? Function(InitializeResponse data)? initialize,
    TResult? Function(NewMessageResponse data)? newMessage,
    TResult? Function(NewRoomResponse data)? newRoom,
    TResult? Function(ChangeCoverResponse data)? changeCover,
    TResult? Function(UpdateRoomResponse data)? updateRoom,
    TResult? Function(DeleteRoomResponse data)? deleteRoom,
    TResult? Function(AddMembersResponse data)? addMembers,
    TResult? Function(DeleteMembersResponse data)? deleteMembers,
    TResult? Function(AddFriendResponse data)? addFriend,
    TResult? Function(AcceptFriendResponse data)? acceptFriend,
    TResult? Function(RefuseFriendResponse data)? refuseFriend,
    TResult? Function(DeleteFriendResponse data)? deleteFriend,
  }) {
    return addFriend?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? errMessage,
    TResult Function(InitializeResponse data)? initialize,
    TResult Function(NewMessageResponse data)? newMessage,
    TResult Function(NewRoomResponse data)? newRoom,
    TResult Function(ChangeCoverResponse data)? changeCover,
    TResult Function(UpdateRoomResponse data)? updateRoom,
    TResult Function(DeleteRoomResponse data)? deleteRoom,
    TResult Function(AddMembersResponse data)? addMembers,
    TResult Function(DeleteMembersResponse data)? deleteMembers,
    TResult Function(AddFriendResponse data)? addFriend,
    TResult Function(AcceptFriendResponse data)? acceptFriend,
    TResult Function(RefuseFriendResponse data)? refuseFriend,
    TResult Function(DeleteFriendResponse data)? deleteFriend,
    required TResult orElse(),
  }) {
    if (addFriend != null) {
      return addFriend(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SrvErrMessage value) errMessage,
    required TResult Function(SrvInitialize value) initialize,
    required TResult Function(SrvNewMessage value) newMessage,
    required TResult Function(SrvNewRoom value) newRoom,
    required TResult Function(SrvChangeCover value) changeCover,
    required TResult Function(SrvUpdateRoom value) updateRoom,
    required TResult Function(SrvDeleteRoom value) deleteRoom,
    required TResult Function(SrvAddMembers value) addMembers,
    required TResult Function(SrvDeleteMembers value) deleteMembers,
    required TResult Function(SrvAddFriend value) addFriend,
    required TResult Function(SrvAcceptFriend value) acceptFriend,
    required TResult Function(SrvRefuseFriend value) refuseFriend,
    required TResult Function(SrvDeleteFriend value) deleteFriend,
  }) {
    return addFriend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SrvErrMessage value)? errMessage,
    TResult? Function(SrvInitialize value)? initialize,
    TResult? Function(SrvNewMessage value)? newMessage,
    TResult? Function(SrvNewRoom value)? newRoom,
    TResult? Function(SrvChangeCover value)? changeCover,
    TResult? Function(SrvUpdateRoom value)? updateRoom,
    TResult? Function(SrvDeleteRoom value)? deleteRoom,
    TResult? Function(SrvAddMembers value)? addMembers,
    TResult? Function(SrvDeleteMembers value)? deleteMembers,
    TResult? Function(SrvAddFriend value)? addFriend,
    TResult? Function(SrvAcceptFriend value)? acceptFriend,
    TResult? Function(SrvRefuseFriend value)? refuseFriend,
    TResult? Function(SrvDeleteFriend value)? deleteFriend,
  }) {
    return addFriend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SrvErrMessage value)? errMessage,
    TResult Function(SrvInitialize value)? initialize,
    TResult Function(SrvNewMessage value)? newMessage,
    TResult Function(SrvNewRoom value)? newRoom,
    TResult Function(SrvChangeCover value)? changeCover,
    TResult Function(SrvUpdateRoom value)? updateRoom,
    TResult Function(SrvDeleteRoom value)? deleteRoom,
    TResult Function(SrvAddMembers value)? addMembers,
    TResult Function(SrvDeleteMembers value)? deleteMembers,
    TResult Function(SrvAddFriend value)? addFriend,
    TResult Function(SrvAcceptFriend value)? acceptFriend,
    TResult Function(SrvRefuseFriend value)? refuseFriend,
    TResult Function(SrvDeleteFriend value)? deleteFriend,
    required TResult orElse(),
  }) {
    if (addFriend != null) {
      return addFriend(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SrvAddFriendImplToJson(
      this,
    );
  }
}

abstract class SrvAddFriend implements ServerEvent {
  const factory SrvAddFriend(final AddFriendResponse data) = _$SrvAddFriendImpl;

  factory SrvAddFriend.fromJson(Map<String, dynamic> json) =
      _$SrvAddFriendImpl.fromJson;

  @override
  AddFriendResponse get data;
}

/// @nodoc
@JsonSerializable()
class _$SrvAcceptFriendImpl implements SrvAcceptFriend {
  const _$SrvAcceptFriendImpl(this.data, {final String? $type})
      : $type = $type ?? 'accept-friend';

  factory _$SrvAcceptFriendImpl.fromJson(Map<String, dynamic> json) =>
      _$$SrvAcceptFriendImplFromJson(json);

  @override
  final AcceptFriendResponse data;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'ServerEvent.acceptFriend(data: $data)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) errMessage,
    required TResult Function(InitializeResponse data) initialize,
    required TResult Function(NewMessageResponse data) newMessage,
    required TResult Function(NewRoomResponse data) newRoom,
    required TResult Function(ChangeCoverResponse data) changeCover,
    required TResult Function(UpdateRoomResponse data) updateRoom,
    required TResult Function(DeleteRoomResponse data) deleteRoom,
    required TResult Function(AddMembersResponse data) addMembers,
    required TResult Function(DeleteMembersResponse data) deleteMembers,
    required TResult Function(AddFriendResponse data) addFriend,
    required TResult Function(AcceptFriendResponse data) acceptFriend,
    required TResult Function(RefuseFriendResponse data) refuseFriend,
    required TResult Function(DeleteFriendResponse data) deleteFriend,
  }) {
    return acceptFriend(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? errMessage,
    TResult? Function(InitializeResponse data)? initialize,
    TResult? Function(NewMessageResponse data)? newMessage,
    TResult? Function(NewRoomResponse data)? newRoom,
    TResult? Function(ChangeCoverResponse data)? changeCover,
    TResult? Function(UpdateRoomResponse data)? updateRoom,
    TResult? Function(DeleteRoomResponse data)? deleteRoom,
    TResult? Function(AddMembersResponse data)? addMembers,
    TResult? Function(DeleteMembersResponse data)? deleteMembers,
    TResult? Function(AddFriendResponse data)? addFriend,
    TResult? Function(AcceptFriendResponse data)? acceptFriend,
    TResult? Function(RefuseFriendResponse data)? refuseFriend,
    TResult? Function(DeleteFriendResponse data)? deleteFriend,
  }) {
    return acceptFriend?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? errMessage,
    TResult Function(InitializeResponse data)? initialize,
    TResult Function(NewMessageResponse data)? newMessage,
    TResult Function(NewRoomResponse data)? newRoom,
    TResult Function(ChangeCoverResponse data)? changeCover,
    TResult Function(UpdateRoomResponse data)? updateRoom,
    TResult Function(DeleteRoomResponse data)? deleteRoom,
    TResult Function(AddMembersResponse data)? addMembers,
    TResult Function(DeleteMembersResponse data)? deleteMembers,
    TResult Function(AddFriendResponse data)? addFriend,
    TResult Function(AcceptFriendResponse data)? acceptFriend,
    TResult Function(RefuseFriendResponse data)? refuseFriend,
    TResult Function(DeleteFriendResponse data)? deleteFriend,
    required TResult orElse(),
  }) {
    if (acceptFriend != null) {
      return acceptFriend(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SrvErrMessage value) errMessage,
    required TResult Function(SrvInitialize value) initialize,
    required TResult Function(SrvNewMessage value) newMessage,
    required TResult Function(SrvNewRoom value) newRoom,
    required TResult Function(SrvChangeCover value) changeCover,
    required TResult Function(SrvUpdateRoom value) updateRoom,
    required TResult Function(SrvDeleteRoom value) deleteRoom,
    required TResult Function(SrvAddMembers value) addMembers,
    required TResult Function(SrvDeleteMembers value) deleteMembers,
    required TResult Function(SrvAddFriend value) addFriend,
    required TResult Function(SrvAcceptFriend value) acceptFriend,
    required TResult Function(SrvRefuseFriend value) refuseFriend,
    required TResult Function(SrvDeleteFriend value) deleteFriend,
  }) {
    return acceptFriend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SrvErrMessage value)? errMessage,
    TResult? Function(SrvInitialize value)? initialize,
    TResult? Function(SrvNewMessage value)? newMessage,
    TResult? Function(SrvNewRoom value)? newRoom,
    TResult? Function(SrvChangeCover value)? changeCover,
    TResult? Function(SrvUpdateRoom value)? updateRoom,
    TResult? Function(SrvDeleteRoom value)? deleteRoom,
    TResult? Function(SrvAddMembers value)? addMembers,
    TResult? Function(SrvDeleteMembers value)? deleteMembers,
    TResult? Function(SrvAddFriend value)? addFriend,
    TResult? Function(SrvAcceptFriend value)? acceptFriend,
    TResult? Function(SrvRefuseFriend value)? refuseFriend,
    TResult? Function(SrvDeleteFriend value)? deleteFriend,
  }) {
    return acceptFriend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SrvErrMessage value)? errMessage,
    TResult Function(SrvInitialize value)? initialize,
    TResult Function(SrvNewMessage value)? newMessage,
    TResult Function(SrvNewRoom value)? newRoom,
    TResult Function(SrvChangeCover value)? changeCover,
    TResult Function(SrvUpdateRoom value)? updateRoom,
    TResult Function(SrvDeleteRoom value)? deleteRoom,
    TResult Function(SrvAddMembers value)? addMembers,
    TResult Function(SrvDeleteMembers value)? deleteMembers,
    TResult Function(SrvAddFriend value)? addFriend,
    TResult Function(SrvAcceptFriend value)? acceptFriend,
    TResult Function(SrvRefuseFriend value)? refuseFriend,
    TResult Function(SrvDeleteFriend value)? deleteFriend,
    required TResult orElse(),
  }) {
    if (acceptFriend != null) {
      return acceptFriend(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SrvAcceptFriendImplToJson(
      this,
    );
  }
}

abstract class SrvAcceptFriend implements ServerEvent {
  const factory SrvAcceptFriend(final AcceptFriendResponse data) =
      _$SrvAcceptFriendImpl;

  factory SrvAcceptFriend.fromJson(Map<String, dynamic> json) =
      _$SrvAcceptFriendImpl.fromJson;

  @override
  AcceptFriendResponse get data;
}

/// @nodoc
@JsonSerializable()
class _$SrvRefuseFriendImpl implements SrvRefuseFriend {
  const _$SrvRefuseFriendImpl(this.data, {final String? $type})
      : $type = $type ?? 'refuse-friend';

  factory _$SrvRefuseFriendImpl.fromJson(Map<String, dynamic> json) =>
      _$$SrvRefuseFriendImplFromJson(json);

  @override
  final RefuseFriendResponse data;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'ServerEvent.refuseFriend(data: $data)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) errMessage,
    required TResult Function(InitializeResponse data) initialize,
    required TResult Function(NewMessageResponse data) newMessage,
    required TResult Function(NewRoomResponse data) newRoom,
    required TResult Function(ChangeCoverResponse data) changeCover,
    required TResult Function(UpdateRoomResponse data) updateRoom,
    required TResult Function(DeleteRoomResponse data) deleteRoom,
    required TResult Function(AddMembersResponse data) addMembers,
    required TResult Function(DeleteMembersResponse data) deleteMembers,
    required TResult Function(AddFriendResponse data) addFriend,
    required TResult Function(AcceptFriendResponse data) acceptFriend,
    required TResult Function(RefuseFriendResponse data) refuseFriend,
    required TResult Function(DeleteFriendResponse data) deleteFriend,
  }) {
    return refuseFriend(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? errMessage,
    TResult? Function(InitializeResponse data)? initialize,
    TResult? Function(NewMessageResponse data)? newMessage,
    TResult? Function(NewRoomResponse data)? newRoom,
    TResult? Function(ChangeCoverResponse data)? changeCover,
    TResult? Function(UpdateRoomResponse data)? updateRoom,
    TResult? Function(DeleteRoomResponse data)? deleteRoom,
    TResult? Function(AddMembersResponse data)? addMembers,
    TResult? Function(DeleteMembersResponse data)? deleteMembers,
    TResult? Function(AddFriendResponse data)? addFriend,
    TResult? Function(AcceptFriendResponse data)? acceptFriend,
    TResult? Function(RefuseFriendResponse data)? refuseFriend,
    TResult? Function(DeleteFriendResponse data)? deleteFriend,
  }) {
    return refuseFriend?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? errMessage,
    TResult Function(InitializeResponse data)? initialize,
    TResult Function(NewMessageResponse data)? newMessage,
    TResult Function(NewRoomResponse data)? newRoom,
    TResult Function(ChangeCoverResponse data)? changeCover,
    TResult Function(UpdateRoomResponse data)? updateRoom,
    TResult Function(DeleteRoomResponse data)? deleteRoom,
    TResult Function(AddMembersResponse data)? addMembers,
    TResult Function(DeleteMembersResponse data)? deleteMembers,
    TResult Function(AddFriendResponse data)? addFriend,
    TResult Function(AcceptFriendResponse data)? acceptFriend,
    TResult Function(RefuseFriendResponse data)? refuseFriend,
    TResult Function(DeleteFriendResponse data)? deleteFriend,
    required TResult orElse(),
  }) {
    if (refuseFriend != null) {
      return refuseFriend(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SrvErrMessage value) errMessage,
    required TResult Function(SrvInitialize value) initialize,
    required TResult Function(SrvNewMessage value) newMessage,
    required TResult Function(SrvNewRoom value) newRoom,
    required TResult Function(SrvChangeCover value) changeCover,
    required TResult Function(SrvUpdateRoom value) updateRoom,
    required TResult Function(SrvDeleteRoom value) deleteRoom,
    required TResult Function(SrvAddMembers value) addMembers,
    required TResult Function(SrvDeleteMembers value) deleteMembers,
    required TResult Function(SrvAddFriend value) addFriend,
    required TResult Function(SrvAcceptFriend value) acceptFriend,
    required TResult Function(SrvRefuseFriend value) refuseFriend,
    required TResult Function(SrvDeleteFriend value) deleteFriend,
  }) {
    return refuseFriend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SrvErrMessage value)? errMessage,
    TResult? Function(SrvInitialize value)? initialize,
    TResult? Function(SrvNewMessage value)? newMessage,
    TResult? Function(SrvNewRoom value)? newRoom,
    TResult? Function(SrvChangeCover value)? changeCover,
    TResult? Function(SrvUpdateRoom value)? updateRoom,
    TResult? Function(SrvDeleteRoom value)? deleteRoom,
    TResult? Function(SrvAddMembers value)? addMembers,
    TResult? Function(SrvDeleteMembers value)? deleteMembers,
    TResult? Function(SrvAddFriend value)? addFriend,
    TResult? Function(SrvAcceptFriend value)? acceptFriend,
    TResult? Function(SrvRefuseFriend value)? refuseFriend,
    TResult? Function(SrvDeleteFriend value)? deleteFriend,
  }) {
    return refuseFriend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SrvErrMessage value)? errMessage,
    TResult Function(SrvInitialize value)? initialize,
    TResult Function(SrvNewMessage value)? newMessage,
    TResult Function(SrvNewRoom value)? newRoom,
    TResult Function(SrvChangeCover value)? changeCover,
    TResult Function(SrvUpdateRoom value)? updateRoom,
    TResult Function(SrvDeleteRoom value)? deleteRoom,
    TResult Function(SrvAddMembers value)? addMembers,
    TResult Function(SrvDeleteMembers value)? deleteMembers,
    TResult Function(SrvAddFriend value)? addFriend,
    TResult Function(SrvAcceptFriend value)? acceptFriend,
    TResult Function(SrvRefuseFriend value)? refuseFriend,
    TResult Function(SrvDeleteFriend value)? deleteFriend,
    required TResult orElse(),
  }) {
    if (refuseFriend != null) {
      return refuseFriend(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SrvRefuseFriendImplToJson(
      this,
    );
  }
}

abstract class SrvRefuseFriend implements ServerEvent {
  const factory SrvRefuseFriend(final RefuseFriendResponse data) =
      _$SrvRefuseFriendImpl;

  factory SrvRefuseFriend.fromJson(Map<String, dynamic> json) =
      _$SrvRefuseFriendImpl.fromJson;

  @override
  RefuseFriendResponse get data;
}

/// @nodoc
@JsonSerializable()
class _$SrvDeleteFriendImpl implements SrvDeleteFriend {
  const _$SrvDeleteFriendImpl(this.data, {final String? $type})
      : $type = $type ?? 'delete-friend';

  factory _$SrvDeleteFriendImpl.fromJson(Map<String, dynamic> json) =>
      _$$SrvDeleteFriendImplFromJson(json);

  @override
  final DeleteFriendResponse data;

  @JsonKey(name: 'action')
  final String $type;

  @override
  String toString() {
    return 'ServerEvent.deleteFriend(data: $data)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) errMessage,
    required TResult Function(InitializeResponse data) initialize,
    required TResult Function(NewMessageResponse data) newMessage,
    required TResult Function(NewRoomResponse data) newRoom,
    required TResult Function(ChangeCoverResponse data) changeCover,
    required TResult Function(UpdateRoomResponse data) updateRoom,
    required TResult Function(DeleteRoomResponse data) deleteRoom,
    required TResult Function(AddMembersResponse data) addMembers,
    required TResult Function(DeleteMembersResponse data) deleteMembers,
    required TResult Function(AddFriendResponse data) addFriend,
    required TResult Function(AcceptFriendResponse data) acceptFriend,
    required TResult Function(RefuseFriendResponse data) refuseFriend,
    required TResult Function(DeleteFriendResponse data) deleteFriend,
  }) {
    return deleteFriend(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? errMessage,
    TResult? Function(InitializeResponse data)? initialize,
    TResult? Function(NewMessageResponse data)? newMessage,
    TResult? Function(NewRoomResponse data)? newRoom,
    TResult? Function(ChangeCoverResponse data)? changeCover,
    TResult? Function(UpdateRoomResponse data)? updateRoom,
    TResult? Function(DeleteRoomResponse data)? deleteRoom,
    TResult? Function(AddMembersResponse data)? addMembers,
    TResult? Function(DeleteMembersResponse data)? deleteMembers,
    TResult? Function(AddFriendResponse data)? addFriend,
    TResult? Function(AcceptFriendResponse data)? acceptFriend,
    TResult? Function(RefuseFriendResponse data)? refuseFriend,
    TResult? Function(DeleteFriendResponse data)? deleteFriend,
  }) {
    return deleteFriend?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? errMessage,
    TResult Function(InitializeResponse data)? initialize,
    TResult Function(NewMessageResponse data)? newMessage,
    TResult Function(NewRoomResponse data)? newRoom,
    TResult Function(ChangeCoverResponse data)? changeCover,
    TResult Function(UpdateRoomResponse data)? updateRoom,
    TResult Function(DeleteRoomResponse data)? deleteRoom,
    TResult Function(AddMembersResponse data)? addMembers,
    TResult Function(DeleteMembersResponse data)? deleteMembers,
    TResult Function(AddFriendResponse data)? addFriend,
    TResult Function(AcceptFriendResponse data)? acceptFriend,
    TResult Function(RefuseFriendResponse data)? refuseFriend,
    TResult Function(DeleteFriendResponse data)? deleteFriend,
    required TResult orElse(),
  }) {
    if (deleteFriend != null) {
      return deleteFriend(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SrvErrMessage value) errMessage,
    required TResult Function(SrvInitialize value) initialize,
    required TResult Function(SrvNewMessage value) newMessage,
    required TResult Function(SrvNewRoom value) newRoom,
    required TResult Function(SrvChangeCover value) changeCover,
    required TResult Function(SrvUpdateRoom value) updateRoom,
    required TResult Function(SrvDeleteRoom value) deleteRoom,
    required TResult Function(SrvAddMembers value) addMembers,
    required TResult Function(SrvDeleteMembers value) deleteMembers,
    required TResult Function(SrvAddFriend value) addFriend,
    required TResult Function(SrvAcceptFriend value) acceptFriend,
    required TResult Function(SrvRefuseFriend value) refuseFriend,
    required TResult Function(SrvDeleteFriend value) deleteFriend,
  }) {
    return deleteFriend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SrvErrMessage value)? errMessage,
    TResult? Function(SrvInitialize value)? initialize,
    TResult? Function(SrvNewMessage value)? newMessage,
    TResult? Function(SrvNewRoom value)? newRoom,
    TResult? Function(SrvChangeCover value)? changeCover,
    TResult? Function(SrvUpdateRoom value)? updateRoom,
    TResult? Function(SrvDeleteRoom value)? deleteRoom,
    TResult? Function(SrvAddMembers value)? addMembers,
    TResult? Function(SrvDeleteMembers value)? deleteMembers,
    TResult? Function(SrvAddFriend value)? addFriend,
    TResult? Function(SrvAcceptFriend value)? acceptFriend,
    TResult? Function(SrvRefuseFriend value)? refuseFriend,
    TResult? Function(SrvDeleteFriend value)? deleteFriend,
  }) {
    return deleteFriend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SrvErrMessage value)? errMessage,
    TResult Function(SrvInitialize value)? initialize,
    TResult Function(SrvNewMessage value)? newMessage,
    TResult Function(SrvNewRoom value)? newRoom,
    TResult Function(SrvChangeCover value)? changeCover,
    TResult Function(SrvUpdateRoom value)? updateRoom,
    TResult Function(SrvDeleteRoom value)? deleteRoom,
    TResult Function(SrvAddMembers value)? addMembers,
    TResult Function(SrvDeleteMembers value)? deleteMembers,
    TResult Function(SrvAddFriend value)? addFriend,
    TResult Function(SrvAcceptFriend value)? acceptFriend,
    TResult Function(SrvRefuseFriend value)? refuseFriend,
    TResult Function(SrvDeleteFriend value)? deleteFriend,
    required TResult orElse(),
  }) {
    if (deleteFriend != null) {
      return deleteFriend(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SrvDeleteFriendImplToJson(
      this,
    );
  }
}

abstract class SrvDeleteFriend implements ServerEvent {
  const factory SrvDeleteFriend(final DeleteFriendResponse data) =
      _$SrvDeleteFriendImpl;

  factory SrvDeleteFriend.fromJson(Map<String, dynamic> json) =
      _$SrvDeleteFriendImpl.fromJson;

  @override
  DeleteFriendResponse get data;
}
