import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:natter/common/models/models.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@Freezed(
  unionKey: 'action',
  unionValueCase: FreezedUnionCase.kebab,
  copyWith: false,
  equal: false,
)
sealed class ClientEvent with _$ClientEvent {
  const factory ClientEvent.initialize(InitializeRequest data) = CliInitialize;
  const factory ClientEvent.newMessage(NewMessageRequest data) = CliNewMessage;
  const factory ClientEvent.newRoom(NewRoomRequest data) = CliNewRoom;
  const factory ClientEvent.updateRoom(UpdateRoomRequest data) = CliUpdateRoom;
  const factory ClientEvent.deleteRoom(DeleteRoomRequest data) = CliDeleteRoom;
  const factory ClientEvent.leaveRoom(LeaveRoomRequest data) = CliLeaveRoom;
  const factory ClientEvent.addMembers(AddMembersRequest data) = CliAddMembers;
  const factory ClientEvent.deleteMembers(DeleteMembersRequest data) =
      CliDeleteMembers;
  const factory ClientEvent.addFriend(AddFriendRequest data) = CliAddFriend;
  const factory ClientEvent.acceptFriend(AcceptFriendRequest data) =
      CliAcceptFriend;
  const factory ClientEvent.refuseFriend(RefuseFriendRequest data) =
      CliRefuseFriend;
  const factory ClientEvent.deleteFriend(DeleteFriendRequest data) =
      CliDeleteFriend;

  factory ClientEvent.fromJson(Map<String, dynamic> json) =>
      _$ClientEventFromJson(json);
}

@Freezed(
  unionKey: 'action',
  unionValueCase: FreezedUnionCase.kebab,
  copyWith: false,
  equal: false,
)
sealed class ServerEvent with _$ServerEvent {
  const factory ServerEvent.errMessage(String data) = SrvErrMessage;
  const factory ServerEvent.initialize(InitializeResponse data) = SrvInitialize;
  const factory ServerEvent.newMessage(NewMessageResponse data) = SrvNewMessage;
  const factory ServerEvent.newRoom(NewRoomResponse data) = SrvNewRoom;
  const factory ServerEvent.changeCover(ChangeCoverResponse data) =
      SrvChangeCover;
  const factory ServerEvent.updateRoom(UpdateRoomResponse data) = SrvUpdateRoom;
  const factory ServerEvent.deleteRoom(DeleteRoomResponse data) = SrvDeleteRoom;
  const factory ServerEvent.addMembers(AddMembersResponse data) = SrvAddMembers;
  const factory ServerEvent.deleteMembers(DeleteMembersResponse data) =
      SrvDeleteMembers;
  const factory ServerEvent.addFriend(AddFriendResponse data) = SrvAddFriend;
  const factory ServerEvent.acceptFriend(AcceptFriendResponse data) =
      SrvAcceptFriend;
  const factory ServerEvent.refuseFriend(RefuseFriendResponse data) =
      SrvRefuseFriend;
  const factory ServerEvent.deleteFriend(DeleteFriendResponse data) =
      SrvDeleteFriend;

  factory ServerEvent.fromJson(Map<String, dynamic> json) =>
      _$ServerEventFromJson(json);
}
