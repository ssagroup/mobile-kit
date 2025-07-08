// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthInfo _$AuthInfoFromJson(Map<String, dynamic> json) {
  return _AuthInfo.fromJson(json);
}

/// @nodoc
mixin _$AuthInfo {
  String get accessToken => throw _privateConstructorUsedError;
  int get expireInSeconds => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this AuthInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthInfoCopyWith<AuthInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthInfoCopyWith<$Res> {
  factory $AuthInfoCopyWith(AuthInfo value, $Res Function(AuthInfo) then) =
      _$AuthInfoCopyWithImpl<$Res, AuthInfo>;
  @useResult
  $Res call({String accessToken, int expireInSeconds, String refreshToken});
}

/// @nodoc
class _$AuthInfoCopyWithImpl<$Res, $Val extends AuthInfo>
    implements $AuthInfoCopyWith<$Res> {
  _$AuthInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? expireInSeconds = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      expireInSeconds: null == expireInSeconds
          ? _value.expireInSeconds
          : expireInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthInfoImplCopyWith<$Res>
    implements $AuthInfoCopyWith<$Res> {
  factory _$$AuthInfoImplCopyWith(
          _$AuthInfoImpl value, $Res Function(_$AuthInfoImpl) then) =
      __$$AuthInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, int expireInSeconds, String refreshToken});
}

/// @nodoc
class __$$AuthInfoImplCopyWithImpl<$Res>
    extends _$AuthInfoCopyWithImpl<$Res, _$AuthInfoImpl>
    implements _$$AuthInfoImplCopyWith<$Res> {
  __$$AuthInfoImplCopyWithImpl(
      _$AuthInfoImpl _value, $Res Function(_$AuthInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? expireInSeconds = null,
    Object? refreshToken = null,
  }) {
    return _then(_$AuthInfoImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      expireInSeconds: null == expireInSeconds
          ? _value.expireInSeconds
          : expireInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthInfoImpl implements _AuthInfo {
  const _$AuthInfoImpl(
      {required this.accessToken,
      required this.expireInSeconds,
      required this.refreshToken});

  factory _$AuthInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthInfoImplFromJson(json);

  @override
  final String accessToken;
  @override
  final int expireInSeconds;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'AuthInfo(accessToken: $accessToken, expireInSeconds: $expireInSeconds, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthInfoImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.expireInSeconds, expireInSeconds) ||
                other.expireInSeconds == expireInSeconds) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, expireInSeconds, refreshToken);

  /// Create a copy of AuthInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthInfoImplCopyWith<_$AuthInfoImpl> get copyWith =>
      __$$AuthInfoImplCopyWithImpl<_$AuthInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthInfoImplToJson(
      this,
    );
  }
}

abstract class _AuthInfo implements AuthInfo {
  const factory _AuthInfo(
      {required final String accessToken,
      required final int expireInSeconds,
      required final String refreshToken}) = _$AuthInfoImpl;

  factory _AuthInfo.fromJson(Map<String, dynamic> json) =
      _$AuthInfoImpl.fromJson;

  @override
  String get accessToken;
  @override
  int get expireInSeconds;
  @override
  String get refreshToken;

  /// Create a copy of AuthInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthInfoImplCopyWith<_$AuthInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
