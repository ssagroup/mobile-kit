// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() wrongResponse,
    required TResult Function(int code, String message) server,
    required TResult Function() socket,
    required TResult Function() storage,
    required TResult Function(Object error) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthorized,
    TResult? Function()? wrongResponse,
    TResult? Function(int code, String message)? server,
    TResult? Function()? socket,
    TResult? Function()? storage,
    TResult? Function(Object error)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? wrongResponse,
    TResult Function(int code, String message)? server,
    TResult Function()? socket,
    TResult Function()? storage,
    TResult Function(Object error)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotAuthorizedFailure value) notAuthorized,
    required TResult Function(WrongResponseFailure value) wrongResponse,
    required TResult Function(ServerFailure value) server,
    required TResult Function(SocketFailure value) socket,
    required TResult Function(StorageFailure value) storage,
    required TResult Function(UnknownFailure value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotAuthorizedFailure value)? notAuthorized,
    TResult? Function(WrongResponseFailure value)? wrongResponse,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(SocketFailure value)? socket,
    TResult? Function(StorageFailure value)? storage,
    TResult? Function(UnknownFailure value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotAuthorizedFailure value)? notAuthorized,
    TResult Function(WrongResponseFailure value)? wrongResponse,
    TResult Function(ServerFailure value)? server,
    TResult Function(SocketFailure value)? socket,
    TResult Function(StorageFailure value)? storage,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NotAuthorizedFailureImplCopyWith<$Res> {
  factory _$$NotAuthorizedFailureImplCopyWith(_$NotAuthorizedFailureImpl value,
          $Res Function(_$NotAuthorizedFailureImpl) then) =
      __$$NotAuthorizedFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotAuthorizedFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NotAuthorizedFailureImpl>
    implements _$$NotAuthorizedFailureImplCopyWith<$Res> {
  __$$NotAuthorizedFailureImplCopyWithImpl(_$NotAuthorizedFailureImpl _value,
      $Res Function(_$NotAuthorizedFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotAuthorizedFailureImpl extends NotAuthorizedFailure {
  _$NotAuthorizedFailureImpl() : super._();

  @override
  String toString() {
    return 'Failure.notAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotAuthorizedFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() wrongResponse,
    required TResult Function(int code, String message) server,
    required TResult Function() socket,
    required TResult Function() storage,
    required TResult Function(Object error) unknown,
  }) {
    return notAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthorized,
    TResult? Function()? wrongResponse,
    TResult? Function(int code, String message)? server,
    TResult? Function()? socket,
    TResult? Function()? storage,
    TResult? Function(Object error)? unknown,
  }) {
    return notAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? wrongResponse,
    TResult Function(int code, String message)? server,
    TResult Function()? socket,
    TResult Function()? storage,
    TResult Function(Object error)? unknown,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotAuthorizedFailure value) notAuthorized,
    required TResult Function(WrongResponseFailure value) wrongResponse,
    required TResult Function(ServerFailure value) server,
    required TResult Function(SocketFailure value) socket,
    required TResult Function(StorageFailure value) storage,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return notAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotAuthorizedFailure value)? notAuthorized,
    TResult? Function(WrongResponseFailure value)? wrongResponse,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(SocketFailure value)? socket,
    TResult? Function(StorageFailure value)? storage,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return notAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotAuthorizedFailure value)? notAuthorized,
    TResult Function(WrongResponseFailure value)? wrongResponse,
    TResult Function(ServerFailure value)? server,
    TResult Function(SocketFailure value)? socket,
    TResult Function(StorageFailure value)? storage,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized(this);
    }
    return orElse();
  }
}

abstract class NotAuthorizedFailure extends Failure {
  factory NotAuthorizedFailure() = _$NotAuthorizedFailureImpl;
  NotAuthorizedFailure._() : super._();
}

/// @nodoc
abstract class _$$WrongResponseFailureImplCopyWith<$Res> {
  factory _$$WrongResponseFailureImplCopyWith(_$WrongResponseFailureImpl value,
          $Res Function(_$WrongResponseFailureImpl) then) =
      __$$WrongResponseFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WrongResponseFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$WrongResponseFailureImpl>
    implements _$$WrongResponseFailureImplCopyWith<$Res> {
  __$$WrongResponseFailureImplCopyWithImpl(_$WrongResponseFailureImpl _value,
      $Res Function(_$WrongResponseFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WrongResponseFailureImpl extends WrongResponseFailure {
  _$WrongResponseFailureImpl() : super._();

  @override
  String toString() {
    return 'Failure.wrongResponse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WrongResponseFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() wrongResponse,
    required TResult Function(int code, String message) server,
    required TResult Function() socket,
    required TResult Function() storage,
    required TResult Function(Object error) unknown,
  }) {
    return wrongResponse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthorized,
    TResult? Function()? wrongResponse,
    TResult? Function(int code, String message)? server,
    TResult? Function()? socket,
    TResult? Function()? storage,
    TResult? Function(Object error)? unknown,
  }) {
    return wrongResponse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? wrongResponse,
    TResult Function(int code, String message)? server,
    TResult Function()? socket,
    TResult Function()? storage,
    TResult Function(Object error)? unknown,
    required TResult orElse(),
  }) {
    if (wrongResponse != null) {
      return wrongResponse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotAuthorizedFailure value) notAuthorized,
    required TResult Function(WrongResponseFailure value) wrongResponse,
    required TResult Function(ServerFailure value) server,
    required TResult Function(SocketFailure value) socket,
    required TResult Function(StorageFailure value) storage,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return wrongResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotAuthorizedFailure value)? notAuthorized,
    TResult? Function(WrongResponseFailure value)? wrongResponse,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(SocketFailure value)? socket,
    TResult? Function(StorageFailure value)? storage,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return wrongResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotAuthorizedFailure value)? notAuthorized,
    TResult Function(WrongResponseFailure value)? wrongResponse,
    TResult Function(ServerFailure value)? server,
    TResult Function(SocketFailure value)? socket,
    TResult Function(StorageFailure value)? storage,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (wrongResponse != null) {
      return wrongResponse(this);
    }
    return orElse();
  }
}

abstract class WrongResponseFailure extends Failure {
  factory WrongResponseFailure() = _$WrongResponseFailureImpl;
  WrongResponseFailure._() : super._();
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int code, String message});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_$ServerFailureImpl(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl extends ServerFailure {
  _$ServerFailureImpl(this.code, [this.message = '']) : super._();

  @override
  final int code;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'Failure.server(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() wrongResponse,
    required TResult Function(int code, String message) server,
    required TResult Function() socket,
    required TResult Function() storage,
    required TResult Function(Object error) unknown,
  }) {
    return server(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthorized,
    TResult? Function()? wrongResponse,
    TResult? Function(int code, String message)? server,
    TResult? Function()? socket,
    TResult? Function()? storage,
    TResult? Function(Object error)? unknown,
  }) {
    return server?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? wrongResponse,
    TResult Function(int code, String message)? server,
    TResult Function()? socket,
    TResult Function()? storage,
    TResult Function(Object error)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotAuthorizedFailure value) notAuthorized,
    required TResult Function(WrongResponseFailure value) wrongResponse,
    required TResult Function(ServerFailure value) server,
    required TResult Function(SocketFailure value) socket,
    required TResult Function(StorageFailure value) storage,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotAuthorizedFailure value)? notAuthorized,
    TResult? Function(WrongResponseFailure value)? wrongResponse,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(SocketFailure value)? socket,
    TResult? Function(StorageFailure value)? storage,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotAuthorizedFailure value)? notAuthorized,
    TResult Function(WrongResponseFailure value)? wrongResponse,
    TResult Function(ServerFailure value)? server,
    TResult Function(SocketFailure value)? socket,
    TResult Function(StorageFailure value)? storage,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class ServerFailure extends Failure {
  factory ServerFailure(final int code, [final String message]) =
      _$ServerFailureImpl;
  ServerFailure._() : super._();

  int get code;
  String get message;
  @JsonKey(ignore: true)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SocketFailureImplCopyWith<$Res> {
  factory _$$SocketFailureImplCopyWith(
          _$SocketFailureImpl value, $Res Function(_$SocketFailureImpl) then) =
      __$$SocketFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SocketFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$SocketFailureImpl>
    implements _$$SocketFailureImplCopyWith<$Res> {
  __$$SocketFailureImplCopyWithImpl(
      _$SocketFailureImpl _value, $Res Function(_$SocketFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SocketFailureImpl extends SocketFailure {
  _$SocketFailureImpl() : super._();

  @override
  String toString() {
    return 'Failure.socket()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SocketFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() wrongResponse,
    required TResult Function(int code, String message) server,
    required TResult Function() socket,
    required TResult Function() storage,
    required TResult Function(Object error) unknown,
  }) {
    return socket();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthorized,
    TResult? Function()? wrongResponse,
    TResult? Function(int code, String message)? server,
    TResult? Function()? socket,
    TResult? Function()? storage,
    TResult? Function(Object error)? unknown,
  }) {
    return socket?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? wrongResponse,
    TResult Function(int code, String message)? server,
    TResult Function()? socket,
    TResult Function()? storage,
    TResult Function(Object error)? unknown,
    required TResult orElse(),
  }) {
    if (socket != null) {
      return socket();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotAuthorizedFailure value) notAuthorized,
    required TResult Function(WrongResponseFailure value) wrongResponse,
    required TResult Function(ServerFailure value) server,
    required TResult Function(SocketFailure value) socket,
    required TResult Function(StorageFailure value) storage,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return socket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotAuthorizedFailure value)? notAuthorized,
    TResult? Function(WrongResponseFailure value)? wrongResponse,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(SocketFailure value)? socket,
    TResult? Function(StorageFailure value)? storage,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return socket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotAuthorizedFailure value)? notAuthorized,
    TResult Function(WrongResponseFailure value)? wrongResponse,
    TResult Function(ServerFailure value)? server,
    TResult Function(SocketFailure value)? socket,
    TResult Function(StorageFailure value)? storage,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (socket != null) {
      return socket(this);
    }
    return orElse();
  }
}

abstract class SocketFailure extends Failure {
  factory SocketFailure() = _$SocketFailureImpl;
  SocketFailure._() : super._();
}

/// @nodoc
abstract class _$$StorageFailureImplCopyWith<$Res> {
  factory _$$StorageFailureImplCopyWith(_$StorageFailureImpl value,
          $Res Function(_$StorageFailureImpl) then) =
      __$$StorageFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StorageFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$StorageFailureImpl>
    implements _$$StorageFailureImplCopyWith<$Res> {
  __$$StorageFailureImplCopyWithImpl(
      _$StorageFailureImpl _value, $Res Function(_$StorageFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StorageFailureImpl extends StorageFailure {
  _$StorageFailureImpl() : super._();

  @override
  String toString() {
    return 'Failure.storage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StorageFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() wrongResponse,
    required TResult Function(int code, String message) server,
    required TResult Function() socket,
    required TResult Function() storage,
    required TResult Function(Object error) unknown,
  }) {
    return storage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthorized,
    TResult? Function()? wrongResponse,
    TResult? Function(int code, String message)? server,
    TResult? Function()? socket,
    TResult? Function()? storage,
    TResult? Function(Object error)? unknown,
  }) {
    return storage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? wrongResponse,
    TResult Function(int code, String message)? server,
    TResult Function()? socket,
    TResult Function()? storage,
    TResult Function(Object error)? unknown,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotAuthorizedFailure value) notAuthorized,
    required TResult Function(WrongResponseFailure value) wrongResponse,
    required TResult Function(ServerFailure value) server,
    required TResult Function(SocketFailure value) socket,
    required TResult Function(StorageFailure value) storage,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return storage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotAuthorizedFailure value)? notAuthorized,
    TResult? Function(WrongResponseFailure value)? wrongResponse,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(SocketFailure value)? socket,
    TResult? Function(StorageFailure value)? storage,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return storage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotAuthorizedFailure value)? notAuthorized,
    TResult Function(WrongResponseFailure value)? wrongResponse,
    TResult Function(ServerFailure value)? server,
    TResult Function(SocketFailure value)? socket,
    TResult Function(StorageFailure value)? storage,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage(this);
    }
    return orElse();
  }
}

abstract class StorageFailure extends Failure {
  factory StorageFailure() = _$StorageFailureImpl;
  StorageFailure._() : super._();
}

/// @nodoc
abstract class _$$UnknownFailureImplCopyWith<$Res> {
  factory _$$UnknownFailureImplCopyWith(_$UnknownFailureImpl value,
          $Res Function(_$UnknownFailureImpl) then) =
      __$$UnknownFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$UnknownFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnknownFailureImpl>
    implements _$$UnknownFailureImplCopyWith<$Res> {
  __$$UnknownFailureImplCopyWithImpl(
      _$UnknownFailureImpl _value, $Res Function(_$UnknownFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$UnknownFailureImpl(
      null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$UnknownFailureImpl extends UnknownFailure {
  _$UnknownFailureImpl(this.error) : super._();

  @override
  final Object error;

  @override
  String toString() {
    return 'Failure.unknown(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownFailureImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      __$$UnknownFailureImplCopyWithImpl<_$UnknownFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() wrongResponse,
    required TResult Function(int code, String message) server,
    required TResult Function() socket,
    required TResult Function() storage,
    required TResult Function(Object error) unknown,
  }) {
    return unknown(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthorized,
    TResult? Function()? wrongResponse,
    TResult? Function(int code, String message)? server,
    TResult? Function()? socket,
    TResult? Function()? storage,
    TResult? Function(Object error)? unknown,
  }) {
    return unknown?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? wrongResponse,
    TResult Function(int code, String message)? server,
    TResult Function()? socket,
    TResult Function()? storage,
    TResult Function(Object error)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotAuthorizedFailure value) notAuthorized,
    required TResult Function(WrongResponseFailure value) wrongResponse,
    required TResult Function(ServerFailure value) server,
    required TResult Function(SocketFailure value) socket,
    required TResult Function(StorageFailure value) storage,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotAuthorizedFailure value)? notAuthorized,
    TResult? Function(WrongResponseFailure value)? wrongResponse,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(SocketFailure value)? socket,
    TResult? Function(StorageFailure value)? storage,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotAuthorizedFailure value)? notAuthorized,
    TResult Function(WrongResponseFailure value)? wrongResponse,
    TResult Function(ServerFailure value)? server,
    TResult Function(SocketFailure value)? socket,
    TResult Function(StorageFailure value)? storage,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownFailure extends Failure {
  factory UnknownFailure(final Object error) = _$UnknownFailureImpl;
  UnknownFailure._() : super._();

  Object get error;
  @JsonKey(ignore: true)
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
