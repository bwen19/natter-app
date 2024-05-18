import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:natter/common/constants/constants.dart';
import 'package:natter/common/models/models.dart';
import 'package:natter/common/providers/providers.dart';

final roomProvider = Provider.autoDispose.family<RoomInfo, int>(
  (ref, id) => ref.watch(chatProvider.select(
    (v) => v.rooms.firstWhere((x) => x.id == id),
  )),
);

final messagesProvider = Provider.autoDispose.family<List<MessageInfo>, int>(
  (ref, id) {
    final messages = ref.watch(roomProvider(id).select((v) => v.messages));
    return messages.reversed.toList();
  },
);

final membersProvider = Provider.autoDispose.family<List<MemberInfo>, int>(
  (ref, id) {
    return ref.watch(roomProvider(id).select((v) => v.members));
  },
);

final rankProvider = Provider.autoDispose.family<MemberRank, int>((ref, id) {
  final members = ref.watch(membersProvider(id));
  final userId = ref.watch(authUserProvider.select((v) => v?.id ?? 0));
  final idx = members.indexWhere((v) => v.id == userId);
  return idx == -1 ? MemberRank.member : members[idx].rank;
});
