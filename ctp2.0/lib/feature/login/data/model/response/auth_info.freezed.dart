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
class _$AuthInfoImpl extends _AuthInfo {
  const _$AuthInfoImpl(
      {required this.accessToken,
      required this.expireInSeconds,
      required this.refreshToken})
      : super._();

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

abstract class _AuthInfo extends AuthInfo {
  const factory _AuthInfo(
      {required final String accessToken,
      required final int expireInSeconds,
      required final String refreshToken}) = _$AuthInfoImpl;
  const _AuthInfo._() : super._();

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

TokenResponseUser _$TokenResponseUserFromJson(Map<String, dynamic> json) {
  return _TokenResponseUser.fromJson(json);
}

/// @nodoc
mixin _$TokenResponseUser {
  String? get sub => throw _privateConstructorUsedError;
  String get jti => throw _privateConstructorUsedError;
  @JsonKey(name: 'given_name')
  String get givenName => throw _privateConstructorUsedError;
  int? get exp => throw _privateConstructorUsedError;

  /// Serializes this TokenResponseUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenResponseUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenResponseUserCopyWith<TokenResponseUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenResponseUserCopyWith<$Res> {
  factory $TokenResponseUserCopyWith(
          TokenResponseUser value, $Res Function(TokenResponseUser) then) =
      _$TokenResponseUserCopyWithImpl<$Res, TokenResponseUser>;
  @useResult
  $Res call(
      {String? sub,
      String jti,
      @JsonKey(name: 'given_name') String givenName,
      int? exp});
}

/// @nodoc
class _$TokenResponseUserCopyWithImpl<$Res, $Val extends TokenResponseUser>
    implements $TokenResponseUserCopyWith<$Res> {
  _$TokenResponseUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenResponseUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sub = freezed,
    Object? jti = null,
    Object? givenName = null,
    Object? exp = freezed,
  }) {
    return _then(_value.copyWith(
      sub: freezed == sub
          ? _value.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as String?,
      jti: null == jti
          ? _value.jti
          : jti // ignore: cast_nullable_to_non_nullable
              as String,
      givenName: null == givenName
          ? _value.givenName
          : givenName // ignore: cast_nullable_to_non_nullable
              as String,
      exp: freezed == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenResponseUserImplCopyWith<$Res>
    implements $TokenResponseUserCopyWith<$Res> {
  factory _$$TokenResponseUserImplCopyWith(_$TokenResponseUserImpl value,
          $Res Function(_$TokenResponseUserImpl) then) =
      __$$TokenResponseUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? sub,
      String jti,
      @JsonKey(name: 'given_name') String givenName,
      int? exp});
}

/// @nodoc
class __$$TokenResponseUserImplCopyWithImpl<$Res>
    extends _$TokenResponseUserCopyWithImpl<$Res, _$TokenResponseUserImpl>
    implements _$$TokenResponseUserImplCopyWith<$Res> {
  __$$TokenResponseUserImplCopyWithImpl(_$TokenResponseUserImpl _value,
      $Res Function(_$TokenResponseUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenResponseUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sub = freezed,
    Object? jti = null,
    Object? givenName = null,
    Object? exp = freezed,
  }) {
    return _then(_$TokenResponseUserImpl(
      sub: freezed == sub
          ? _value.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as String?,
      jti: null == jti
          ? _value.jti
          : jti // ignore: cast_nullable_to_non_nullable
              as String,
      givenName: null == givenName
          ? _value.givenName
          : givenName // ignore: cast_nullable_to_non_nullable
              as String,
      exp: freezed == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenResponseUserImpl extends _TokenResponseUser {
  const _$TokenResponseUserImpl(
      {required this.sub,
      required this.jti,
      @JsonKey(name: 'given_name') required this.givenName,
      required this.exp})
      : super._();

  factory _$TokenResponseUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenResponseUserImplFromJson(json);

  @override
  final String? sub;
  @override
  final String jti;
  @override
  @JsonKey(name: 'given_name')
  final String givenName;
  @override
  final int? exp;

  @override
  String toString() {
    return 'TokenResponseUser(sub: $sub, jti: $jti, givenName: $givenName, exp: $exp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenResponseUserImpl &&
            (identical(other.sub, sub) || other.sub == sub) &&
            (identical(other.jti, jti) || other.jti == jti) &&
            (identical(other.givenName, givenName) ||
                other.givenName == givenName) &&
            (identical(other.exp, exp) || other.exp == exp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sub, jti, givenName, exp);

  /// Create a copy of TokenResponseUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenResponseUserImplCopyWith<_$TokenResponseUserImpl> get copyWith =>
      __$$TokenResponseUserImplCopyWithImpl<_$TokenResponseUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenResponseUserImplToJson(
      this,
    );
  }
}

abstract class _TokenResponseUser extends TokenResponseUser {
  const factory _TokenResponseUser(
      {required final String? sub,
      required final String jti,
      @JsonKey(name: 'given_name') required final String givenName,
      required final int? exp}) = _$TokenResponseUserImpl;
  const _TokenResponseUser._() : super._();

  factory _TokenResponseUser.fromJson(Map<String, dynamic> json) =
      _$TokenResponseUserImpl.fromJson;

  @override
  String? get sub;
  @override
  String get jti;
  @override
  @JsonKey(name: 'given_name')
  String get givenName;
  @override
  int? get exp;

  /// Create a copy of TokenResponseUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenResponseUserImplCopyWith<_$TokenResponseUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
