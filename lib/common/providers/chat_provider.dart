import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:natter/common/constants/constants.dart';
import 'package:natter/common/models/models.dart';
import 'package:natter/common/repos/repos.dart';

final webSocketProvider = Provider.autoDispose(WebSocketRepo.new);

final chatProvider = NotifierProvider.autoDispose<ChatStateNotifier, ChatState>(
  ChatStateNotifier.new,
);

class ChatStateNotifier extends AutoDisposeNotifier<ChatState> {
  @override
  ChatState build() {
    connect();
    return const ChatState(
      rooms: [],
      friends: [],
      totalUnreads: 0,
      numNewFriends: 0,
      currRoomId: 0,
      currFriendId: 0,
    );
  }

  Future<void> connect() async {
    final channel = await ref.watch(channelProvider.future);
    channel.stream.listen((event) {
      Map<String, dynamic> jsonData = jsonDecode(event);
      final msg = ServerEvent.fromJson(jsonData);
      switch (msg) {
        case SrvErrMessage(:final data):
          _errMessage(data);
        case SrvInitialize(:final data):
          _initialize(data);
        case SrvNewMessage(:final data):
          _newMessage(data);
        case SrvNewRoom(:final data):
          _newRoom(data);
        case SrvChangeCover(:final data):
          _changeCover(data);
        case SrvUpdateRoom(:final data):
          _updateRoom(data);
        case SrvDeleteRoom(:final data):
          _deleteRoom(data);
        case SrvAddMembers(:final data):
          _addMembers(data);
        case SrvDeleteMembers(:final data):
          _deleteMembers(data);
        case SrvAddFriend(:final data):
          _addFriend(data);
        case SrvAcceptFriend(:final data):
          _acceptFriend(data);
        case SrvRefuseFriend(:final data):
          _refuseFriend(data);
        case SrvDeleteFriend(:final data):
          _deleteFriend(data);
      }
    });

    // send initilize message to the server
    Future.delayed(
      const Duration(milliseconds: 300),
      () => ref.read(webSocketProvider).initialize(),
    );
  }

  void enterChatRoom(int roomId) {
    final idx = state.rooms.indexWhere((v) => v.id == roomId);
    if (idx == -1) {
      return;
    }

    var unreads = state.rooms[idx].unreads;
    if (unreads == 0) {
      state = state.copyWith(currRoomId: roomId);
      return;
    }

    final newRooms = [
      for (final room in state.rooms)
        if (room.id == roomId) room.copyWith(unreads: 0) else room,
    ];

    state = state.copyWith(
      rooms: newRooms,
      totalUnreads: state.totalUnreads - unreads,
      currRoomId: roomId,
    );
  }

  void leaveChatRoom() {
    state = state.copyWith(currRoomId: 0);
  }

  void viewFriendInfo(int friendId) {
    final idx = state.friends.indexWhere((v) => v.id == friendId);
    if (idx == -1) {
      return;
    }
    state = state.copyWith(currFriendId: friendId);
  }

  void leaveFriendInfo() {
    state = state.copyWith(currFriendId: 0);
  }

  void _errMessage(String msg) {}

  void _initialize(InitializeResponse rsp) {
    int num = 0;
    for (final friend in rsp.friends) {
      if (friend.status == FriendStatus.adding && friend.first) num += 1;
    }

    state = state.copyWith(
      rooms: rsp.rooms,
      friends: rsp.friends,
      numNewFriends: num,
    );
  }

  void _newMessage(NewMessageResponse rsp) {
    final roomId = rsp.message.roomId;

    final idx = state.rooms.indexWhere((v) => v.id == roomId);
    if (idx == -1) return;

    var mRoom = state.rooms[idx].copyWith();
    final messages = [...mRoom.messages, rsp.message];

    var totalUnreads = state.totalUnreads;
    if (state.currRoomId == roomId) {
      mRoom = mRoom.copyWith(messages: messages);
    } else {
      mRoom = mRoom.copyWith(messages: messages, unreads: mRoom.unreads + 1);
      totalUnreads += 1;
    }

    final newRooms = [
      mRoom,
      for (final room in state.rooms)
        if (room.id != roomId) room,
    ];

    state = state.copyWith(
      rooms: newRooms,
      totalUnreads: totalUnreads,
    );
  }

  void _newRoom(NewRoomResponse rsp) {
    final newRooms = [rsp.room, ...state.rooms];
    state = state.copyWith(rooms: newRooms);
  }

  void _changeCover(ChangeCoverResponse rsp) {
    final idx = state.rooms.indexWhere((v) => v.id == rsp.roomId);
    if (idx == -1) return;

    final newRooms = [
      for (final room in state.rooms)
        if (room.id == rsp.roomId) room.copyWith(cover: rsp.cover) else room,
    ];
    state = state.copyWith(rooms: newRooms);
  }

  void _updateRoom(UpdateRoomResponse rsp) {
    final idx = state.rooms.indexWhere((v) => v.id == rsp.roomId);
    if (idx == -1) return;

    final newRooms = [
      for (final room in state.rooms)
        if (room.id == rsp.roomId) room.copyWith(name: rsp.name) else room,
    ];
    state = state.copyWith(rooms: newRooms);
  }

  void _deleteRoom(DeleteRoomResponse rsp) {
    final idx = state.rooms.indexWhere((v) => v.id == rsp.roomId);
    if (idx == -1) return;

    final num = state.rooms[idx].unreads;
    final newRooms = [
      for (final room in state.rooms)
        if (room.id != rsp.roomId) room,
    ];

    state = state.copyWith(
      rooms: newRooms,
      totalUnreads: state.totalUnreads - num,
      currRoomId: state.currRoomId == rsp.roomId ? -1 : state.currRoomId,
    );
  }

  void _addMembers(AddMembersResponse rsp) {
    final idx = state.rooms.indexWhere((v) => v.id == rsp.roomId);
    if (idx == -1) return;

    final newMembers = [...state.rooms[idx].members, ...rsp.members];
    final newRooms = [
      for (final room in state.rooms)
        if (room.id == rsp.roomId) room.copyWith(members: newMembers) else room,
    ];
    state = state.copyWith(rooms: newRooms);
  }

  void _deleteMembers(DeleteMembersResponse rsp) {
    final idx = state.rooms.indexWhere((v) => v.id == rsp.roomId);
    if (idx == -1) return;

    final newMembers = [
      for (final member in state.rooms[idx].members)
        if (!rsp.membersId.contains(member.id)) member,
    ];
    final newRooms = [
      for (final room in state.rooms)
        if (room.id == rsp.roomId) room.copyWith(members: newMembers) else room,
    ];
    state = state.copyWith(rooms: newRooms);
  }

  void _addFriend(AddFriendResponse rsp) {
    final newFriends = [...state.friends, rsp.friend];
    final num = rsp.friend.first ? 1 : 0;

    state = state.copyWith(
      friends: newFriends,
      numNewFriends: state.numNewFriends + num,
    );
  }

  void _acceptFriend(AcceptFriendResponse rsp) {
    final friendId = rsp.friend.id;

    final idx = state.friends.indexWhere((v) => v.id == friendId);
    if (idx == -1) {
      final newFriends = [...state.friends, rsp.friend];
      state = state.copyWith(friends: newFriends);
    } else {
      final num = rsp.friend.first ? 1 : 0;
      final newFriends = [
        for (final friend in state.friends)
          if (friend.id == friendId) rsp.friend else friend,
      ];
      state = state.copyWith(
        friends: newFriends,
        numNewFriends: state.numNewFriends - num,
      );
    }
    final newRooms = [rsp.room, ...state.rooms];
    state = state.copyWith(rooms: newRooms);
  }

  void _refuseFriend(RefuseFriendResponse rsp) {
    final idx = state.friends.indexWhere((v) => v.id == rsp.friendId);
    if (idx == -1) return;

    final num = state.friends[idx].first ? 1 : 0;
    final newFriends = [
      for (final friend in state.friends)
        if (friend.id != rsp.friendId) friend,
    ];

    state = state.copyWith(
      friends: newFriends,
      numNewFriends: state.numNewFriends - num,
    );
  }

  void _deleteFriend(DeleteFriendResponse rsp) {
    final idx = state.friends.indexWhere((v) => v.id == rsp.friendId);
    if (idx != -1) {
      final newFriends = [
        for (final friend in state.friends)
          if (friend.id != rsp.friendId) friend,
      ];
      state = state.copyWith(
        friends: newFriends,
        currFriendId:
            state.currFriendId == rsp.friendId ? -1 : state.currFriendId,
      );
    }

    final ridx = state.rooms.indexWhere((v) => v.id == rsp.roomId);
    if (ridx != -1) {
      final num = state.rooms[ridx].unreads;
      final newRooms = [
        for (final room in state.rooms)
          if (room.id != rsp.roomId) room,
      ];

      state = state.copyWith(
        rooms: newRooms,
        totalUnreads: state.totalUnreads - num,
      );
    }
  }
}
