import 'package:json_annotation/json_annotation.dart';
import 'package:natter/common/constants/constants.dart';

class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String str) => DateTime.parse(str).toLocal();

  @override
  String toJson(DateTime date) => date.toIso8601String();
}

class HttpImageConverter implements JsonConverter<String, String> {
  const HttpImageConverter();

  @override
  String fromJson(String str) => '$kHttpUrl$str';

  @override
  String toJson(String str) => str;
}

class UserRoleConverter implements JsonConverter<UserRole, String> {
  const UserRoleConverter();

  @override
  UserRole fromJson(String str) => switch (str) {
        'user' => UserRole.user,
        'admin' => UserRole.admin,
        _ => throw Exception('Invalid user role.'),
      };

  @override
  String toJson(UserRole role) => switch (role) {
        UserRole.user => 'user',
        UserRole.admin => 'admin',
      };
}

class MessageKindConverter implements JsonConverter<MessageKind, String> {
  const MessageKindConverter();

  @override
  MessageKind fromJson(String str) => switch (str) {
        'text' => MessageKind.text,
        'image' => MessageKind.image,
        'file' => MessageKind.file,
        _ => throw Exception('Invalid message kind.'),
      };

  @override
  String toJson(MessageKind category) => switch (category) {
        MessageKind.text => 'text',
        MessageKind.image => 'image',
        MessageKind.file => 'file',
      };
}

class MemberRankConverter implements JsonConverter<MemberRank, String> {
  const MemberRankConverter();

  @override
  MemberRank fromJson(String str) => switch (str) {
        'owner' => MemberRank.owner,
        'member' => MemberRank.member,
        _ => throw Exception('Invalid member rank.'),
      };

  @override
  String toJson(MemberRank category) => switch (category) {
        MemberRank.owner => 'owner',
        MemberRank.member => 'member',
      };
}

class RoomCategoryConverter implements JsonConverter<RoomCategory, String> {
  const RoomCategoryConverter();

  @override
  RoomCategory fromJson(String str) => switch (str) {
        'personal' => RoomCategory.personal,
        'private' => RoomCategory.private,
        'public' => RoomCategory.public,
        _ => throw Exception('Invalid room category.'),
      };

  @override
  String toJson(RoomCategory category) => switch (category) {
        RoomCategory.personal => 'personal',
        RoomCategory.private => 'private',
        RoomCategory.public => 'public',
      };
}

class FriendStatusConverter implements JsonConverter<FriendStatus, String> {
  const FriendStatusConverter();

  @override
  FriendStatus fromJson(String str) => switch (str) {
        'adding' => FriendStatus.adding,
        'accepted' => FriendStatus.accepted,
        'deleted' => FriendStatus.deleted,
        _ => throw Exception('Invalid friend status.'),
      };

  @override
  String toJson(FriendStatus category) => switch (category) {
        FriendStatus.adding => 'adding',
        FriendStatus.accepted => 'accepted',
        FriendStatus.deleted => 'deleted',
      };
}
