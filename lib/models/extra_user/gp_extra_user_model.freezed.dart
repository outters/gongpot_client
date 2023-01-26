// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gp_extra_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GpExtraUser _$GpExtraUserFromJson(Map<String, dynamic> json) {
  return _GpExtraUser.fromJson(json);
}

/// @nodoc
mixin _$GpExtraUser {
  String get profileName => throw _privateConstructorUsedError;
  String get profileImage => throw _privateConstructorUsedError;
  List<String> get joinedParties => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GpExtraUserCopyWith<GpExtraUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GpExtraUserCopyWith<$Res> {
  factory $GpExtraUserCopyWith(
          GpExtraUser value, $Res Function(GpExtraUser) then) =
      _$GpExtraUserCopyWithImpl<$Res>;
  $Res call(
      {String profileName, String profileImage, List<String> joinedParties});
}

/// @nodoc
class _$GpExtraUserCopyWithImpl<$Res> implements $GpExtraUserCopyWith<$Res> {
  _$GpExtraUserCopyWithImpl(this._value, this._then);

  final GpExtraUser _value;
  // ignore: unused_field
  final $Res Function(GpExtraUser) _then;

  @override
  $Res call({
    Object? profileName = freezed,
    Object? profileImage = freezed,
    Object? joinedParties = freezed,
  }) {
    return _then(_value.copyWith(
      profileName: profileName == freezed
          ? _value.profileName
          : profileName // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      joinedParties: joinedParties == freezed
          ? _value.joinedParties
          : joinedParties // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_GpExtraUserCopyWith<$Res>
    implements $GpExtraUserCopyWith<$Res> {
  factory _$$_GpExtraUserCopyWith(
          _$_GpExtraUser value, $Res Function(_$_GpExtraUser) then) =
      __$$_GpExtraUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String profileName, String profileImage, List<String> joinedParties});
}

/// @nodoc
class __$$_GpExtraUserCopyWithImpl<$Res> extends _$GpExtraUserCopyWithImpl<$Res>
    implements _$$_GpExtraUserCopyWith<$Res> {
  __$$_GpExtraUserCopyWithImpl(
      _$_GpExtraUser _value, $Res Function(_$_GpExtraUser) _then)
      : super(_value, (v) => _then(v as _$_GpExtraUser));

  @override
  _$_GpExtraUser get _value => super._value as _$_GpExtraUser;

  @override
  $Res call({
    Object? profileName = freezed,
    Object? profileImage = freezed,
    Object? joinedParties = freezed,
  }) {
    return _then(_$_GpExtraUser(
      profileName: profileName == freezed
          ? _value.profileName
          : profileName // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      joinedParties: joinedParties == freezed
          ? _value._joinedParties
          : joinedParties // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GpExtraUser implements _GpExtraUser {
  _$_GpExtraUser(
      {this.profileName = '',
      this.profileImage = '',
      final List<String> joinedParties = const []})
      : _joinedParties = joinedParties;

  factory _$_GpExtraUser.fromJson(Map<String, dynamic> json) =>
      _$$_GpExtraUserFromJson(json);

  @override
  @JsonKey()
  final String profileName;
  @override
  @JsonKey()
  final String profileImage;
  final List<String> _joinedParties;
  @override
  @JsonKey()
  List<String> get joinedParties {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_joinedParties);
  }

  @override
  String toString() {
    return 'GpExtraUser(profileName: $profileName, profileImage: $profileImage, joinedParties: $joinedParties)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GpExtraUser &&
            const DeepCollectionEquality()
                .equals(other.profileName, profileName) &&
            const DeepCollectionEquality()
                .equals(other.profileImage, profileImage) &&
            const DeepCollectionEquality()
                .equals(other._joinedParties, _joinedParties));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(profileName),
      const DeepCollectionEquality().hash(profileImage),
      const DeepCollectionEquality().hash(_joinedParties));

  @JsonKey(ignore: true)
  @override
  _$$_GpExtraUserCopyWith<_$_GpExtraUser> get copyWith =>
      __$$_GpExtraUserCopyWithImpl<_$_GpExtraUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GpExtraUserToJson(
      this,
    );
  }
}

abstract class _GpExtraUser implements GpExtraUser {
  factory _GpExtraUser(
      {final String profileName,
      final String profileImage,
      final List<String> joinedParties}) = _$_GpExtraUser;

  factory _GpExtraUser.fromJson(Map<String, dynamic> json) =
      _$_GpExtraUser.fromJson;

  @override
  String get profileName;
  @override
  String get profileImage;
  @override
  List<String> get joinedParties;
  @override
  @JsonKey(ignore: true)
  _$$_GpExtraUserCopyWith<_$_GpExtraUser> get copyWith =>
      throw _privateConstructorUsedError;
}
