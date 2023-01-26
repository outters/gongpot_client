import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:gongpot/main.dart';
import 'package:gongpot/models/party/gp_party_model.dart';
import 'package:gongpot/providers/auth_provider.dart';
import 'package:gongpot/utils/config.dart';
import 'package:gongpot/utils/test_repository.dart';
import 'dart:collection';

class FindPartyProvider extends ChangeNotifier {
  final int limitTime = 10;
  int currentTimer = 0;

  Timer? timeCounter;

  Future<bool> findParty() async {
    bool result = false;

    currentTimer = limitTime;
    timeCounter = Timer.periodic(const Duration(seconds: 1), (_) {
      lgr.d(currentTimer);
      if (currentTimer == 0) {
        timeCounter!.cancel();
        return;
      }

      currentTimer--;
      notifyListeners();
    });

    await Future.delayed(Duration(seconds: Random().nextInt(11))).then((value) {
      result = TestRepository().parties.any((element) => element.memberIds.length < 4);

      timeCounter!.cancel();
    });
    return result;
  }

  void stopFindingParty() {
    timeCounter!.cancel();
    currentTimer = 0;
    notifyListeners();
  }

  Future<String> joinParty() async {
    await Future.delayed(const Duration(seconds: 1));

    GpParty party = TestRepository().parties.firstWhere((element) {
      final List<String> members = element.memberIds;
      return members.length < 4 && !members.contains(AuthProvider.kakaoUser.id.toString());
    });
    final int index = TestRepository().parties.indexWhere((element) => element.index == party.index);

    final List<String> partyMembers = party.memberIds.toList();
    partyMembers.add(AuthProvider.kakaoUser.id.toString());

    party = party.copyWith(memberIds: partyMembers);
    TestRepository().parties.replaceRange(index, index + 1, [party]);

    return party.index.toString();
  }

  Future<String> createParty() async {
    await Future.delayed(const Duration(seconds: 2));
    GpParty party = GpParty.mock();
    final String myId = AuthProvider.kakaoUser.id.toString();
    party = party.copyWith(adminId: myId, memberIds: [myId]);
    TestRepository().parties.add(party);

        return party.index.toString();

  }
}
