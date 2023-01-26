import 'package:flutter/material.dart';
import 'package:gongpot/models/party/gp_party_model.dart';
import 'package:gongpot/utils/test_repository.dart';

class PartyProvider extends ChangeNotifier {
  GpParty? party;

  factory PartyProvider() {
    return PartyProvider();
  }

  PartyProvider.init(String? partyIndex) {
    if (partyIndex == null) return;
    party = TestRepository().parties.firstWhere((element) => element.index.toString() == partyIndex);
  }
}
