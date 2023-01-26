import 'dart:math';

import 'package:gongpot/models/party/gp_party_model.dart';
import 'package:gongpot/utils/config.dart';

class TestRepository {
  static final TestRepository _instance = TestRepository.init();

  factory TestRepository() {
    return _instance;
  }

  TestRepository.init() {
    parties = List.generate(
      10,
      (index) => GpParty(
        index: Random().nextInt(10000),
        ceratedAt: DateTime.now().subtract(Duration(days: Random().nextInt(30))),
        updatedAt: DateTime.now(),
        name: 'test party ${index + 1}',
        memberIds: ['test${index + 1}_1', 'test${index + 1}_2', 'test${index + 1}_3'],
        adminId: 'test${index + 1}_1',
      ),
    );
    lgr.d('TestRepository has created!');
  }

  late List<GpParty> parties;
}
