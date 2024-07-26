// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(Object? result) success,
    required TResult Function(String message, bool needLogout) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(Object? result)? success,
    TResult? Function(String message, bool needLogout)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(Object? result)? success,
    TResult Function(String message, bool needLogout)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStatusNone value) none,
    required TResult Function(AuthStatusSuccess value) success,
    required TResult Function(AuthStatusFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStatusNone value)? none,
    TResult? Function(AuthStatusSuccess value)? success,
    TResult? Function(AuthStatusFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStatusNone value)? none,
    TResult Function(AuthStatusSuccess value)? success,
    TResult Function(AuthStatusFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStatusCopyWith<$Res> {
  factory $AuthStatusCopyWith(
          AuthStatus value, $Res Function(AuthStatus) then) =
      _$AuthStatusCopyWithImpl<$Res, AuthStatus>;
}

/// @nodoc
class _$AuthStatusCopyWithImpl<$Res, $Val extends AuthStatus>
    implements $AuthStatusCopyWith<$Res> {
  _$AuthStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthStatusNoneImplCopyWith<$Res> {
  factory _$$AuthStatusNoneImplCopyWith(_$AuthStatusNoneImpl value,
          $Res Function(_$AuthStatusNoneImpl) then) =
      __$$AuthStatusNoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStatusNoneImplCopyWithImpl<$Res>
    extends _$AuthStatusCopyWithImpl<$Res, _$AuthStatusNoneImpl>
    implements _$$AuthStatusNoneImplCopyWith<$Res> {
  __$$AuthStatusNoneImplCopyWithImpl(
      _$AuthStatusNoneImpl _value, $Res Function(_$AuthStatusNoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthStatusNoneImpl implements AuthStatusNone {
  const _$AuthStatusNoneImpl();

  @override
  String toString() {
    return 'AuthStatus.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStatusNoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(Object? result) success,
    required TResult Function(String message, bool needLogout) failure,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(Object? result)? success,
    TResult? Function(String message, bool needLogout)? failure,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(Object? result)? success,
    TResult Function(String message, bool needLogout)? failure,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStatusNone value) none,
    required TResult Function(AuthStatusSuccess value) success,
    required TResult Function(AuthStatusFailure value) failure,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStatusNone value)? none,
    TResult? Function(AuthStatusSuccess value)? success,
    TResult? Function(AuthStatusFailure value)? failure,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStatusNone value)? none,
    TResult Function(AuthStatusSuccess value)? success,
    TResult Function(AuthStatusFailure value)? failure,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class AuthStatusNone implements AuthStatus {
  const factory AuthStatusNone() = _$AuthStatusNoneImpl;
}

/// @nodoc
abstract class _$$AuthStatusSuccessImplCopyWith<$Res> {
  factory _$$AuthStatusSuccessImplCopyWith(_$AuthStatusSuccessImpl value,
          $Res Function(_$AuthStatusSuccessImpl) then) =
      __$$AuthStatusSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? result});
}

/// @nodoc
class __$$AuthStatusSuccessImplCopyWithImpl<$Res>
    extends _$AuthStatusCopyWithImpl<$Res, _$AuthStatusSuccessImpl>
    implements _$$AuthStatusSuccessImplCopyWith<$Res> {
  __$$AuthStatusSuccessImplCopyWithImpl(_$AuthStatusSuccessImpl _value,
      $Res Function(_$AuthStatusSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$AuthStatusSuccessImpl(
      freezed == result ? _value.result : result,
    ));
  }
}

/// @nodoc

class _$AuthStatusSuccessImpl implements AuthStatusSuccess {
  const _$AuthStatusSuccessImpl([this.result]);

  @override
  final Object? result;

  @override
  String toString() {
    return 'AuthStatus.success(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStatusSuccessImpl &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStatusSuccessImplCopyWith<_$AuthStatusSuccessImpl> get copyWith =>
      __$$AuthStatusSuccessImplCopyWithImpl<_$AuthStatusSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(Object? result) success,
    required TResult Function(String message, bool needLogout) failure,
  }) {
    return success(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(Object? result)? success,
    TResult? Function(String message, bool needLogout)? failure,
  }) {
    return success?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(Object? result)? success,
    TResult Function(String message, bool needLogout)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStatusNone value) none,
    required TResult Function(AuthStatusSuccess value) success,
    required TResult Function(AuthStatusFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStatusNone value)? none,
    TResult? Function(AuthStatusSuccess value)? success,
    TResult? Function(AuthStatusFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStatusNone value)? none,
    TResult Function(AuthStatusSuccess value)? success,
    TResult Function(AuthStatusFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AuthStatusSuccess implements AuthStatus {
  const factory AuthStatusSuccess([final Object? result]) =
      _$AuthStatusSuccessImpl;

  Object? get result;
  @JsonKey(ignore: true)
  _$$AuthStatusSuccessImplCopyWith<_$AuthStatusSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStatusFailureImplCopyWith<$Res> {
  factory _$$AuthStatusFailureImplCopyWith(_$AuthStatusFailureImpl value,
          $Res Function(_$AuthStatusFailureImpl) then) =
      __$$AuthStatusFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, bool needLogout});
}

/// @nodoc
class __$$AuthStatusFailureImplCopyWithImpl<$Res>
    extends _$AuthStatusCopyWithImpl<$Res, _$AuthStatusFailureImpl>
    implements _$$AuthStatusFailureImplCopyWith<$Res> {
  __$$AuthStatusFailureImplCopyWithImpl(_$AuthStatusFailureImpl _value,
      $Res Function(_$AuthStatusFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? needLogout = null,
  }) {
    return _then(_$AuthStatusFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == needLogout
          ? _value.needLogout
          : needLogout // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthStatusFailureImpl implements AuthStatusFailure {
  const _$AuthStatusFailureImpl(this.message, this.needLogout);

  @override
  final String message;
  @override
  final bool needLogout;

  @override
  String toString() {
    return 'AuthStatus.failure(message: $message, needLogout: $needLogout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStatusFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.needLogout, needLogout) ||
                other.needLogout == needLogout));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, needLogout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStatusFailureImplCopyWith<_$AuthStatusFailureImpl> get copyWith =>
      __$$AuthStatusFailureImplCopyWithImpl<_$AuthStatusFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(Object? result) success,
    required TResult Function(String message, bool needLogout) failure,
  }) {
    return failure(message, needLogout);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(Object? result)? success,
    TResult? Function(String message, bool needLogout)? failure,
  }) {
    return failure?.call(message, needLogout);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(Object? result)? success,
    TResult Function(String message, bool needLogout)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message, needLogout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStatusNone value) none,
    required TResult Function(AuthStatusSuccess value) success,
    required TResult Function(AuthStatusFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStatusNone value)? none,
    TResult? Function(AuthStatusSuccess value)? success,
    TResult? Function(AuthStatusFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStatusNone value)? none,
    TResult Function(AuthStatusSuccess value)? success,
    TResult Function(AuthStatusFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AuthStatusFailure implements AuthStatus {
  const factory AuthStatusFailure(final String message, final bool needLogout) =
      _$AuthStatusFailureImpl;

  String get message;
  bool get needLogout;
  @JsonKey(ignore: true)
  _$$AuthStatusFailureImplCopyWith<_$AuthStatusFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ApiStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(Object? result) success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(Object? result)? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(Object? result)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiStatusNone value) none,
    required TResult Function(ApiStatusSuccess value) success,
    required TResult Function(ApiStatusFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiStatusNone value)? none,
    TResult? Function(ApiStatusSuccess value)? success,
    TResult? Function(ApiStatusFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiStatusNone value)? none,
    TResult Function(ApiStatusSuccess value)? success,
    TResult Function(ApiStatusFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiStatusCopyWith<$Res> {
  factory $ApiStatusCopyWith(ApiStatus value, $Res Function(ApiStatus) then) =
      _$ApiStatusCopyWithImpl<$Res, ApiStatus>;
}

/// @nodoc
class _$ApiStatusCopyWithImpl<$Res, $Val extends ApiStatus>
    implements $ApiStatusCopyWith<$Res> {
  _$ApiStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApiStatusNoneImplCopyWith<$Res> {
  factory _$$ApiStatusNoneImplCopyWith(
          _$ApiStatusNoneImpl value, $Res Function(_$ApiStatusNoneImpl) then) =
      __$$ApiStatusNoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApiStatusNoneImplCopyWithImpl<$Res>
    extends _$ApiStatusCopyWithImpl<$Res, _$ApiStatusNoneImpl>
    implements _$$ApiStatusNoneImplCopyWith<$Res> {
  __$$ApiStatusNoneImplCopyWithImpl(
      _$ApiStatusNoneImpl _value, $Res Function(_$ApiStatusNoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ApiStatusNoneImpl implements ApiStatusNone {
  const _$ApiStatusNoneImpl();

  @override
  String toString() {
    return 'ApiStatus.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ApiStatusNoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(Object? result) success,
    required TResult Function(String message) failure,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(Object? result)? success,
    TResult? Function(String message)? failure,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(Object? result)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiStatusNone value) none,
    required TResult Function(ApiStatusSuccess value) success,
    required TResult Function(ApiStatusFailure value) failure,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiStatusNone value)? none,
    TResult? Function(ApiStatusSuccess value)? success,
    TResult? Function(ApiStatusFailure value)? failure,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiStatusNone value)? none,
    TResult Function(ApiStatusSuccess value)? success,
    TResult Function(ApiStatusFailure value)? failure,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class ApiStatusNone implements ApiStatus {
  const factory ApiStatusNone() = _$ApiStatusNoneImpl;
}

/// @nodoc
abstract class _$$ApiStatusSuccessImplCopyWith<$Res> {
  factory _$$ApiStatusSuccessImplCopyWith(_$ApiStatusSuccessImpl value,
          $Res Function(_$ApiStatusSuccessImpl) then) =
      __$$ApiStatusSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? result});
}

/// @nodoc
class __$$ApiStatusSuccessImplCopyWithImpl<$Res>
    extends _$ApiStatusCopyWithImpl<$Res, _$ApiStatusSuccessImpl>
    implements _$$ApiStatusSuccessImplCopyWith<$Res> {
  __$$ApiStatusSuccessImplCopyWithImpl(_$ApiStatusSuccessImpl _value,
      $Res Function(_$ApiStatusSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$ApiStatusSuccessImpl(
      freezed == result ? _value.result : result,
    ));
  }
}

/// @nodoc

class _$ApiStatusSuccessImpl implements ApiStatusSuccess {
  const _$ApiStatusSuccessImpl([this.result]);

  @override
  final Object? result;

  @override
  String toString() {
    return 'ApiStatus.success(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiStatusSuccessImpl &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiStatusSuccessImplCopyWith<_$ApiStatusSuccessImpl> get copyWith =>
      __$$ApiStatusSuccessImplCopyWithImpl<_$ApiStatusSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(Object? result) success,
    required TResult Function(String message) failure,
  }) {
    return success(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(Object? result)? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(Object? result)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiStatusNone value) none,
    required TResult Function(ApiStatusSuccess value) success,
    required TResult Function(ApiStatusFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiStatusNone value)? none,
    TResult? Function(ApiStatusSuccess value)? success,
    TResult? Function(ApiStatusFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiStatusNone value)? none,
    TResult Function(ApiStatusSuccess value)? success,
    TResult Function(ApiStatusFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ApiStatusSuccess implements ApiStatus {
  const factory ApiStatusSuccess([final Object? result]) =
      _$ApiStatusSuccessImpl;

  Object? get result;
  @JsonKey(ignore: true)
  _$$ApiStatusSuccessImplCopyWith<_$ApiStatusSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiStatusFailureImplCopyWith<$Res> {
  factory _$$ApiStatusFailureImplCopyWith(_$ApiStatusFailureImpl value,
          $Res Function(_$ApiStatusFailureImpl) then) =
      __$$ApiStatusFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ApiStatusFailureImplCopyWithImpl<$Res>
    extends _$ApiStatusCopyWithImpl<$Res, _$ApiStatusFailureImpl>
    implements _$$ApiStatusFailureImplCopyWith<$Res> {
  __$$ApiStatusFailureImplCopyWithImpl(_$ApiStatusFailureImpl _value,
      $Res Function(_$ApiStatusFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ApiStatusFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApiStatusFailureImpl implements ApiStatusFailure {
  const _$ApiStatusFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ApiStatus.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiStatusFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiStatusFailureImplCopyWith<_$ApiStatusFailureImpl> get copyWith =>
      __$$ApiStatusFailureImplCopyWithImpl<_$ApiStatusFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(Object? result) success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(Object? result)? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(Object? result)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiStatusNone value) none,
    required TResult Function(ApiStatusSuccess value) success,
    required TResult Function(ApiStatusFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiStatusNone value)? none,
    TResult? Function(ApiStatusSuccess value)? success,
    TResult? Function(ApiStatusFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiStatusNone value)? none,
    TResult Function(ApiStatusSuccess value)? success,
    TResult Function(ApiStatusFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ApiStatusFailure implements ApiStatus {
  const factory ApiStatusFailure(final String message) = _$ApiStatusFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ApiStatusFailureImplCopyWith<_$ApiStatusFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
