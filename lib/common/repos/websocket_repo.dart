import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:natter/common/constants/constants.dart';
import 'package:natter/common/models/models.dart';
import 'package:natter/common/repos/repos.dart';

final channelProvider = FutureProvider.autoDispose((ref) async {
  final accessToken = await ref.read(privateClientProvider).getAccessToken();

  final channel = WebSocketChannel.connect(
    Uri.parse(kWsUrl),
    protocols: [kSubProtocol, accessToken],
  );
  await channel.ready;

  ref.onDispose(() {
    channel.sink.close();
  });

  return channel;
});

class WebSocketRepo {
  WebSocketRepo(this.ref);
  final Ref ref;

  Future<void> _send(Map<String, dynamic> jsonData) async {
    final chan = await ref.read(channelProvider.future);
    chan.sink.add(jsonEncode(jsonData));
  }

  Future<void> initialize() async {
    const req = InitializeRequest();
    await _send(const CliInitialize(req).toJson());
  }

  Future<void> sendMessage(NewMessageRequest req) async {
    await _send(CliNewMessage(req).toJson());
  }

  Future<void> newRoom(NewRoomRequest req) async {
    await _send(CliNewRoom(req).toJson());
  }

  Future<void> updateRoom(UpdateRoomRequest req) async {
    await _send(CliUpdateRoom(req).toJson());
  }

  Future<void> deleteRoom(int roomId) async {
    final req = DeleteRoomRequest(roomId: roomId);
    await _send(CliDeleteRoom(req).toJson());
  }

  Future<void> leaveRoom(int roomId) async {
    final req = LeaveRoomRequest(roomId: roomId);
    await _send(CliLeaveRoom(req).toJson());
  }

  Future<void> addMembers(AddMembersRequest req) async {
    await _send(CliAddMembers(req).toJson());
  }

  Future<void> deleteMembers(DeleteMembersRequest req) async {
    await _send(CliDeleteMembers(req).toJson());
  }

  Future<void> addFriend(int friendId) async {
    final req = AddFriendRequest(friendId: friendId);
    await _send(CliAddFriend(req).toJson());
  }

  Future<void> acceptFriend(int friendId) async {
    final req = AcceptFriendRequest(friendId: friendId);
    await _send(CliAcceptFriend(req).toJson());
  }

  Future<void> refuseFriend(int friendId) async {
    final req = RefuseFriendRequest(friendId: friendId);
    await _send(CliRefuseFriend(req).toJson());
  }

  Future<void> deleteFriend(int friendId) async {
    final req = DeleteFriendRequest(friendId: friendId);
    await _send(CliDeleteFriend(req).toJson());
  }
}
