// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gp_party_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GpParty _$GpPartyFromJson(Map<String, dynamic> json) {
  return _GpParty.fromJson(json);
}

/// @nodoc
mixin _$GpParty {
  int get index => throw _privateConstructorUsedError;
  OttType? get type => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<GpMember> get memberids => throw _privateConstructorUsedError;
  String? get adminId => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  DateTime get ceratedAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GpPartyCopyWith<GpParty> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GpPartyCopyWith<$Res> {
  factory $GpPartyCopyWith(GpParty value, $Res Function(GpParty) then) =
      _$GpPartyCopyWithImpl<$Res>;
  $Res call(
      {int index,
      OttType? type,
      String? name,
      List<GpMember> memberids,
      String? adminId,
      String? imageUrl,
      DateTime ceratedAt,
      DateTime updatedAt});
}

/// @nodoc
class _$GpPartyCopyWithImpl<$Res> implements $GpPartyCopyWith<$Res> {
  _$GpPartyCopyWithImpl(this._value, this._then);

  final GpParty _value;
  // ignore: unused_field
  final $Res Function(GpParty) _then;

  @override
  $Res call({
    Object? index = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? memberids = freezed,
    Object? adminId = freezed,
    Object? imageUrl = freezed,
    Object? ceratedAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OttType?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      memberids: memberids == freezed
          ? _value.memberids
          : memberids // ignore: cast_nullable_to_non_nullable
              as List<GpMember>,
      adminId: adminId == freezed
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ceratedAt: ceratedAt == freezed
          ? _value.ceratedAt
          : ceratedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_GpPartyCopyWith<$Res> implements $GpPartyCopyWith<$Res> {
  factory _$$_GpPartyCopyWith(
          _$_GpParty value, $Res Function(_$_GpParty) then) =
      __$$_GpPartyCopyWithImpl<$Res>;
  @override
  $Res call(
      {int index,
      OttType? type,
      String? name,
      List<GpMember> memberids,
      String? adminId,
      String? imageUrl,
      DateTime ceratedAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$_GpPartyCopyWithImpl<$Res> extends _$GpPartyCopyWithImpl<$Res>
    implements _$$_GpPartyCopyWith<$Res> {
  __$$_GpPartyCopyWithImpl(_$_GpParty _value, $Res Function(_$_GpParty) _then)
      : super(_value, (v) => _then(v as _$_GpParty));

  @override
  _$_GpParty get _value => super._value as _$_GpParty;

  @override
  $Res call({
    Object? index = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? memberids = freezed,
    Object? adminId = freezed,
    Object? imageUrl = freezed,
    Object? ceratedAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_GpParty(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OttType?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      memberids: memberids == freezed
          ? _value._memberids
          : memberids // ignore: cast_nullable_to_non_nullable
              as List<GpMember>,
      adminId: adminId == freezed
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ceratedAt: ceratedAt == freezed
          ? _value.ceratedAt
          : ceratedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GpParty implements _GpParty {
  _$_GpParty(
      {required this.index,
      this.type,
      this.name,
      final List<GpMember> memberids = const [],
      this.adminId,
      this.imageUrl,
      required this.ceratedAt,
      required this.updatedAt})
      : _memberids = memberids;

  factory _$_GpParty.fromJson(Map<String, dynamic> json) =>
      _$$_GpPartyFromJson(json);

  @override
  final int index;
  @override
  final OttType? type;
  @override
  final String? name;
  final List<GpMember> _memberids;
  @override
  @JsonKey()
  List<GpMember> get memberids {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memberids);
  }

  @override
  final String? adminId;
  @override
  final String? imageUrl;
  @override
  final DateTime ceratedAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'GpParty(index: $index, type: $type, name: $name, memberids: $memberids, adminId: $adminId, imageUrl: $imageUrl, ceratedAt: $ceratedAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GpParty &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other._memberids, _memberids) &&
            const DeepCollectionEquality().equals(other.adminId, adminId) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.ceratedAt, ceratedAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_memberids),
      const DeepCollectionEquality().hash(adminId),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(ceratedAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_GpPartyCopyWith<_$_GpParty> get copyWith =>
      __$$_GpPartyCopyWithImpl<_$_GpParty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GpPartyToJson(
      this,
    );
  }
}

abstract class _GpParty implements GpParty {
  factory _GpParty(
      {required final int index,
      final OttType? type,
      final String? name,
      final List<GpMember> memberids,
      final String? adminId,
      final String? imageUrl,
      required final DateTime ceratedAt,
      required final DateTime updatedAt}) = _$_GpParty;

  factory _GpParty.fromJson(Map<String, dynamic> json) = _$_GpParty.fromJson;

  @override
  int get index;
  @override
  OttType? get type;
  @override
  String? get name;
  @override
  List<GpMember> get memberids;
  @override
  String? get adminId;
  @override
  String? get imageUrl;
  @override
  DateTime get ceratedAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_GpPartyCopyWith<_$_GpParty> get copyWith =>
      throw _privateConstructorUsedError;
}
