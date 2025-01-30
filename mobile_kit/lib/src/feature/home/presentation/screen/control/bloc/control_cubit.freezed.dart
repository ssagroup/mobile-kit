// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'control_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ControlState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  AuthStatus get loginStatus => throw _privateConstructorUsedError;

  /// Create a copy of ControlState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ControlStateCopyWith<ControlState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ControlStateCopyWith<$Res> {
  factory $ControlStateCopyWith(
          ControlState value, $Res Function(ControlState) then) =
      _$ControlStateCopyWithImpl<$Res, ControlState>;
  @useResult
  $Res call(
      {bool isLoading,
      String? email,
      String? username,
      AuthStatus loginStatus});

  $AuthStatusCopyWith<$Res> get loginStatus;
}

/// @nodoc
class _$ControlStateCopyWithImpl<$Res, $Val extends ControlState>
    implements $ControlStateCopyWith<$Res> {
  _$ControlStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ControlState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? email = freezed,
    Object? username = freezed,
    Object? loginStatus = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
    ) as $Val);
  }

  /// Create a copy of ControlState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthStatusCopyWith<$Res> get loginStatus {
    return $AuthStatusCopyWith<$Res>(_value.loginStatus, (value) {
      return _then(_value.copyWith(loginStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ControlStateImplCopyWith<$Res>
    implements $ControlStateCopyWith<$Res> {
  factory _$$ControlStateImplCopyWith(
          _$ControlStateImpl value, $Res Function(_$ControlStateImpl) then) =
      __$$ControlStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String? email,
      String? username,
      AuthStatus loginStatus});

  @override
  $AuthStatusCopyWith<$Res> get loginStatus;
}

/// @nodoc
class __$$ControlStateImplCopyWithImpl<$Res>
    extends _$ControlStateCopyWithImpl<$Res, _$ControlStateImpl>
    implements _$$ControlStateImplCopyWith<$Res> {
  __$$ControlStateImplCopyWithImpl(
      _$ControlStateImpl _value, $Res Function(_$ControlStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ControlState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? email = freezed,
    Object? username = freezed,
    Object? loginStatus = null,
  }) {
    return _then(_$ControlStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
    ));
  }
}

/// @nodoc

class _$ControlStateImpl implements _ControlState {
  const _$ControlStateImpl(
      {required this.isLoading,
      required this.email,
      required this.username,
      required this.loginStatus});

  @override
  final bool isLoading;
  @override
  final String? email;
  @override
  final String? username;
  @override
  final AuthStatus loginStatus;

  @override
  String toString() {
    return 'ControlState(isLoading: $isLoading, email: $email, username: $username, loginStatus: $loginStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ControlStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.loginStatus, loginStatus) ||
                other.loginStatus == loginStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, email, username, loginStatus);

  /// Create a copy of ControlState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ControlStateImplCopyWith<_$ControlStateImpl> get copyWith =>
      __$$ControlStateImplCopyWithImpl<_$ControlStateImpl>(this, _$identity);
}

abstract class _ControlState implements ControlState {
  const factory _ControlState(
      {required final bool isLoading,
      required final String? email,
      required final String? username,
      required final AuthStatus loginStatus}) = _$ControlStateImpl;

  @override
  bool get isLoading;
  @override
  String? get email;
  @override
  String? get username;
  @override
  AuthStatus get loginStatus;

  /// Create a copy of ControlState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ControlStateImplCopyWith<_$ControlStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
