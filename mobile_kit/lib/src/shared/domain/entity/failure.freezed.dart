// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Failure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure()';
}


}

/// @nodoc
class $FailureCopyWith<$Res>  {
$FailureCopyWith(Failure _, $Res Function(Failure) __);
}


/// Adds pattern-matching-related methods to [Failure].
extension FailurePatterns on Failure {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NotAuthorizedFailure value)?  notAuthorized,TResult Function( WrongResponseFailure value)?  wrongResponse,TResult Function( ServerFailure value)?  server,TResult Function( SocketFailure value)?  socket,TResult Function( StorageFailure value)?  storage,TResult Function( UnknownFailure value)?  unknown,TResult Function( WrongCredentialsFailure value)?  wrongCredentials,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NotAuthorizedFailure() when notAuthorized != null:
return notAuthorized(_that);case WrongResponseFailure() when wrongResponse != null:
return wrongResponse(_that);case ServerFailure() when server != null:
return server(_that);case SocketFailure() when socket != null:
return socket(_that);case StorageFailure() when storage != null:
return storage(_that);case UnknownFailure() when unknown != null:
return unknown(_that);case WrongCredentialsFailure() when wrongCredentials != null:
return wrongCredentials(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NotAuthorizedFailure value)  notAuthorized,required TResult Function( WrongResponseFailure value)  wrongResponse,required TResult Function( ServerFailure value)  server,required TResult Function( SocketFailure value)  socket,required TResult Function( StorageFailure value)  storage,required TResult Function( UnknownFailure value)  unknown,required TResult Function( WrongCredentialsFailure value)  wrongCredentials,}){
final _that = this;
switch (_that) {
case NotAuthorizedFailure():
return notAuthorized(_that);case WrongResponseFailure():
return wrongResponse(_that);case ServerFailure():
return server(_that);case SocketFailure():
return socket(_that);case StorageFailure():
return storage(_that);case UnknownFailure():
return unknown(_that);case WrongCredentialsFailure():
return wrongCredentials(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NotAuthorizedFailure value)?  notAuthorized,TResult? Function( WrongResponseFailure value)?  wrongResponse,TResult? Function( ServerFailure value)?  server,TResult? Function( SocketFailure value)?  socket,TResult? Function( StorageFailure value)?  storage,TResult? Function( UnknownFailure value)?  unknown,TResult? Function( WrongCredentialsFailure value)?  wrongCredentials,}){
final _that = this;
switch (_that) {
case NotAuthorizedFailure() when notAuthorized != null:
return notAuthorized(_that);case WrongResponseFailure() when wrongResponse != null:
return wrongResponse(_that);case ServerFailure() when server != null:
return server(_that);case SocketFailure() when socket != null:
return socket(_that);case StorageFailure() when storage != null:
return storage(_that);case UnknownFailure() when unknown != null:
return unknown(_that);case WrongCredentialsFailure() when wrongCredentials != null:
return wrongCredentials(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  notAuthorized,TResult Function()?  wrongResponse,TResult Function( int code,  String message)?  server,TResult Function()?  socket,TResult Function()?  storage,TResult Function( Object error)?  unknown,TResult Function()?  wrongCredentials,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NotAuthorizedFailure() when notAuthorized != null:
return notAuthorized();case WrongResponseFailure() when wrongResponse != null:
return wrongResponse();case ServerFailure() when server != null:
return server(_that.code,_that.message);case SocketFailure() when socket != null:
return socket();case StorageFailure() when storage != null:
return storage();case UnknownFailure() when unknown != null:
return unknown(_that.error);case WrongCredentialsFailure() when wrongCredentials != null:
return wrongCredentials();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  notAuthorized,required TResult Function()  wrongResponse,required TResult Function( int code,  String message)  server,required TResult Function()  socket,required TResult Function()  storage,required TResult Function( Object error)  unknown,required TResult Function()  wrongCredentials,}) {final _that = this;
switch (_that) {
case NotAuthorizedFailure():
return notAuthorized();case WrongResponseFailure():
return wrongResponse();case ServerFailure():
return server(_that.code,_that.message);case SocketFailure():
return socket();case StorageFailure():
return storage();case UnknownFailure():
return unknown(_that.error);case WrongCredentialsFailure():
return wrongCredentials();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  notAuthorized,TResult? Function()?  wrongResponse,TResult? Function( int code,  String message)?  server,TResult? Function()?  socket,TResult? Function()?  storage,TResult? Function( Object error)?  unknown,TResult? Function()?  wrongCredentials,}) {final _that = this;
switch (_that) {
case NotAuthorizedFailure() when notAuthorized != null:
return notAuthorized();case WrongResponseFailure() when wrongResponse != null:
return wrongResponse();case ServerFailure() when server != null:
return server(_that.code,_that.message);case SocketFailure() when socket != null:
return socket();case StorageFailure() when storage != null:
return storage();case UnknownFailure() when unknown != null:
return unknown(_that.error);case WrongCredentialsFailure() when wrongCredentials != null:
return wrongCredentials();case _:
  return null;

}
}

}

/// @nodoc


class NotAuthorizedFailure extends Failure {
   NotAuthorizedFailure(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotAuthorizedFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.notAuthorized()';
}


}




/// @nodoc


class WrongResponseFailure extends Failure {
   WrongResponseFailure(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WrongResponseFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.wrongResponse()';
}


}




/// @nodoc


class ServerFailure extends Failure {
   ServerFailure(this.code, [this.message = '']): super._();
  

 final  int code;
@JsonKey() final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerFailureCopyWith<ServerFailure> get copyWith => _$ServerFailureCopyWithImpl<ServerFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerFailure&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,code,message);

@override
String toString() {
  return 'Failure.server(code: $code, message: $message)';
}


}

/// @nodoc
abstract mixin class $ServerFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(ServerFailure value, $Res Function(ServerFailure) _then) = _$ServerFailureCopyWithImpl;
@useResult
$Res call({
 int code, String message
});




}
/// @nodoc
class _$ServerFailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(this._self, this._then);

  final ServerFailure _self;
  final $Res Function(ServerFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? code = null,Object? message = null,}) {
  return _then(ServerFailure(
null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SocketFailure extends Failure {
   SocketFailure(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocketFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.socket()';
}


}




/// @nodoc


class StorageFailure extends Failure {
   StorageFailure(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorageFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.storage()';
}


}




/// @nodoc


class UnknownFailure extends Failure {
   UnknownFailure(this.error): super._();
  

 final  Object error;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnknownFailureCopyWith<UnknownFailure> get copyWith => _$UnknownFailureCopyWithImpl<UnknownFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownFailure&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'Failure.unknown(error: $error)';
}


}

/// @nodoc
abstract mixin class $UnknownFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $UnknownFailureCopyWith(UnknownFailure value, $Res Function(UnknownFailure) _then) = _$UnknownFailureCopyWithImpl;
@useResult
$Res call({
 Object error
});




}
/// @nodoc
class _$UnknownFailureCopyWithImpl<$Res>
    implements $UnknownFailureCopyWith<$Res> {
  _$UnknownFailureCopyWithImpl(this._self, this._then);

  final UnknownFailure _self;
  final $Res Function(UnknownFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(UnknownFailure(
null == error ? _self.error : error ,
  ));
}


}

/// @nodoc


class WrongCredentialsFailure extends Failure {
   WrongCredentialsFailure(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WrongCredentialsFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.wrongCredentials()';
}


}




// dart format on
