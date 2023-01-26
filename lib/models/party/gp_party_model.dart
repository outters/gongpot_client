import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gongpot/models/enums.dart';
import 'package:gongpot/models/member/gp_member_model.dart';
part 'gp_party_model.freezed.dart';
part 'gp_party_model.g.dart';

@freezed
class GpParty with _$GpParty {
  factory GpParty({
    required int index,
    OttType? type,
    String? name,
    @Default([]) List<GpMember> memberIds,
    String? adminId,
    String? imageUrl,
    required DateTime ceratedAt,
    required DateTime updatedAt,
  }) = _GpParty;

  factory GpParty.fromJson(Map<String, dynamic> json) => _$GpPartyFromJson(json);

  factory GpParty.empty(int index) => GpParty(
        index: index,
        ceratedAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

  factory GpParty.mock() => GpParty(
        index: Random().nextInt(10000),
        ceratedAt: DateTime.now(),
        updatedAt: DateTime.now(),
        name: 'Test Party',
        type: OttType.netflix,
        memberIds: [],
        adminId: '',
        imageUrl: null,
      );
}
