import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'gp_member_model.freezed.dart';
part 'gp_member_model.g.dart';

@freezed
class GpMember with _$GpMember {
  factory GpMember({
    required String id,
    String? name,
  }) = _GpMember;

  factory GpMember.fromJson(Map<String, dynamic> json) => _$GpMemberFromJson(json);

  factory GpMember.empty(int index) => GpMember(
        id: Random().nextInt(1000).toString().padLeft(5, '0'),
      );
}
