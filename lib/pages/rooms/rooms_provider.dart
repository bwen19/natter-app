import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:natter/common/models/models.dart';
import 'package:natter/common/providers/providers.dart';

final candidatesProvider =
    AutoDisposeNotifierProvider<_CandidatesNotifier, List<UserCandidate>>(
        _CandidatesNotifier.new);

class _CandidatesNotifier extends AutoDisposeNotifier<List<UserCandidate>> {
  @override
  List<UserCandidate> build() {
    final friends = ref.watch(friendsProvider);
    return [
      for (final friend in friends)
        UserCandidate(
          id: friend.id,
          name: friend.nickname,
          avatar: friend.avatar,
          selected: false,
          fixed: false,
        ),
    ];
  }

  void onSelect(int id) {
    state = [
      for (final user in state)
        if (user.id == id) user.copyWith(selected: !user.selected) else user,
    ];
  }
}

final membersIdProvider = Provider.autoDispose((ref) {
  final candidates = ref.watch(candidatesProvider);
  return [
    for (final candidate in candidates)
      if (candidate.selected) candidate.id,
  ];
});

final numMembersProvider = Provider.autoDispose((ref) {
  final membersId = ref.watch(membersIdProvider);
  return membersId.length;
});
