// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gp_party_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GpParty _$$_GpPartyFromJson(Map<String, dynamic> json) => _$_GpParty(
      index: json['index'] as int,
      type: $enumDecodeNullable(_$OttTypeEnumMap, json['type']),
      name: json['name'] as String?,
      memberids: (json['memberids'] as List<dynamic>?)
              ?.map((e) => GpMember.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      adminId: json['adminId'] as String?,
      imageUrl: json['imageUrl'] as String?,
      ceratedAt: DateTime.parse(json['ceratedAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_GpPartyToJson(_$_GpParty instance) =>
    <String, dynamic>{
      'index': instance.index,
      'type': _$OttTypeEnumMap[instance.type],
      'name': instance.name,
      'memberids': instance.memberids,
      'adminId': instance.adminId,
      'imageUrl': instance.imageUrl,
      'ceratedAt': instance.ceratedAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$OttTypeEnumMap = {
  OttType.netflix: 'netflix',
};
