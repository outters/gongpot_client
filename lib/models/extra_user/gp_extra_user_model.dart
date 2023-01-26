import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gongpot/models/enums.dart';
part 'gp_extra_user_model.freezed.dart';
part 'gp_extra_user_model.g.dart';

@freezed
class GpExtraUser with _$GpExtraUser {
  factory GpExtraUser({
    @Default('') String profileName,
    @Default('') String profileImage,
    @Default([]) List<String> joinedParties,
  }) = _GpExtraUser;

  factory GpExtraUser.fromJson(Map<String, dynamic> json) => _$GpExtraUserFromJson(json);
}
