// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gp_member_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GpMember _$GpMemberFromJson(Map<String, dynamic> json) {
  return _GpMember.fromJson(json);
}

/// @nodoc
mixin _$GpMember {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GpMemberCopyWith<GpMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GpMemberCopyWith<$Res> {
  factory $GpMemberCopyWith(GpMember value, $Res Function(GpMember) then) =
      _$GpMemberCopyWithImpl<$Res>;
  $Res call({String id, String? name});
}

/// @nodoc
class _$GpMemberCopyWithImpl<$Res> implements $GpMemberCopyWith<$Res> {
  _$GpMemberCopyWithImpl(this._value, this._then);

  final GpMember _value;
  // ignore: unused_field
  final $Res Function(GpMember) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GpMemberCopyWith<$Res> implements $GpMemberCopyWith<$Res> {
  factory _$$_GpMemberCopyWith(
          _$_GpMember value, $Res Function(_$_GpMember) then) =
      __$$_GpMemberCopyWithImpl<$Res>;
  @override
  $Res call({String id, String? name});
}

/// @nodoc
class __$$_GpMemberCopyWithImpl<$Res> extends _$GpMemberCopyWithImpl<$Res>
    implements _$$_GpMemberCopyWith<$Res> {
  __$$_GpMemberCopyWithImpl(
      _$_GpMember _value, $Res Function(_$_GpMember) _then)
      : super(_value, (v) => _then(v as _$_GpMember));

  @override
  _$_GpMember get _value => super._value as _$_GpMember;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_GpMember(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GpMember implements _GpMember {
  _$_GpMember({required this.id, this.name});

  factory _$_GpMember.fromJson(Map<String, dynamic> json) =>
      _$$_GpMemberFromJson(json);

  @override
  final String id;
  @override
  final String? name;

  @override
  String toString() {
    return 'GpMember(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GpMember &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_GpMemberCopyWith<_$_GpMember> get copyWith =>
      __$$_GpMemberCopyWithImpl<_$_GpMember>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GpMemberToJson(
      this,
    );
  }
}

abstract class _GpMember implements GpMember {
  factory _GpMember({required final String id, final String? name}) =
      _$_GpMember;

  factory _GpMember.fromJson(Map<String, dynamic> json) = _$_GpMember.fromJson;

  @override
  String get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_GpMemberCopyWith<_$_GpMember> get copyWith =>
      throw _privateConstructorUsedError;
}
