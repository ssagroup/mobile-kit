// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SigninRequest _$SigninRequestFromJson(Map<String, dynamic> json) {
  return _SigninRequest.fromJson(json);
}

/// @nodoc
mixin _$SigninRequest {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get rememberMe => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SigninRequestCopyWith<SigninRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninRequestCopyWith<$Res> {
  factory $SigninRequestCopyWith(
          SigninRequest value, $Res Function(SigninRequest) then) =
      _$SigninRequestCopyWithImpl<$Res, SigninRequest>;
  @useResult
  $Res call({String email, String password, bool rememberMe});
}

/// @nodoc
class _$SigninRequestCopyWithImpl<$Res, $Val extends SigninRequest>
    implements $SigninRequestCopyWith<$Res> {
  _$SigninRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? rememberMe = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SigninRequestImplCopyWith<$Res>
    implements $SigninRequestCopyWith<$Res> {
  factory _$$SigninRequestImplCopyWith(
          _$SigninRequestImpl value, $Res Function(_$SigninRequestImpl) then) =
      __$$SigninRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, bool rememberMe});
}

/// @nodoc
class __$$SigninRequestImplCopyWithImpl<$Res>
    extends _$SigninRequestCopyWithImpl<$Res, _$SigninRequestImpl>
    implements _$$SigninRequestImplCopyWith<$Res> {
  __$$SigninRequestImplCopyWithImpl(
      _$SigninRequestImpl _value, $Res Function(_$SigninRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? rememberMe = null,
  }) {
    return _then(_$SigninRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SigninRequestImpl implements _SigninRequest {
  const _$SigninRequestImpl(
      {required this.email, required this.password, required this.rememberMe});

  factory _$SigninRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SigninRequestImplFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final bool rememberMe;

  @override
  String toString() {
    return 'SigninRequest(email: $email, password: $password, rememberMe: $rememberMe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.rememberMe, rememberMe) ||
                other.rememberMe == rememberMe));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password, rememberMe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninRequestImplCopyWith<_$SigninRequestImpl> get copyWith =>
      __$$SigninRequestImplCopyWithImpl<_$SigninRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SigninRequestImplToJson(
      this,
    );
  }
}

abstract class _SigninRequest implements SigninRequest {
  const factory _SigninRequest(
      {required final String email,
      required final String password,
      required final bool rememberMe}) = _$SigninRequestImpl;

  factory _SigninRequest.fromJson(Map<String, dynamic> json) =
      _$SigninRequestImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  bool get rememberMe;
  @override
  @JsonKey(ignore: true)
  _$$SigninRequestImplCopyWith<_$SigninRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
