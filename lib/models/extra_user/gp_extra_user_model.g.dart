// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gp_extra_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GpExtraUser _$$_GpExtraUserFromJson(Map<String, dynamic> json) =>
    _$_GpExtraUser(
      profileName: json['profileName'] as String? ?? '',
      profileImage: json['profileImage'] as String? ?? '',
      joinedParties: (json['joinedParties'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_GpExtraUserToJson(_$_GpExtraUser instance) =>
    <String, dynamic>{
      'profileName': instance.profileName,
      'profileImage': instance.profileImage,
      'joinedParties': instance.joinedParties,
    };
