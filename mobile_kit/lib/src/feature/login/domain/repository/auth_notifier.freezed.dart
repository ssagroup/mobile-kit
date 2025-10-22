// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthenticationState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthenticationState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthenticationState()';
}


}

/// @nodoc
class $AuthenticationStateCopyWith<$Res>  {
$AuthenticationStateCopyWith(AuthenticationState _, $Res Function(AuthenticationState) __);
}


/// Adds pattern-matching-related methods to [AuthenticationState].
extension AuthenticationStatePatterns on AuthenticationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initializing value)?  initializing,TResult Function( _LoggingIn value)?  login,TResult Function( _CreatePin value)?  createPin,TResult Function( _VerifyUser value)?  verifyUser,TResult Function( _Authenticated value)?  authenticated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initializing() when initializing != null:
return initializing(_that);case _LoggingIn() when login != null:
return login(_that);case _CreatePin() when createPin != null:
return createPin(_that);case _VerifyUser() when verifyUser != null:
return verifyUser(_that);case _Authenticated() when authenticated != null:
return authenticated(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initializing value)  initializing,required TResult Function( _LoggingIn value)  login,required TResult Function( _CreatePin value)  createPin,required TResult Function( _VerifyUser value)  verifyUser,required TResult Function( _Authenticated value)  authenticated,}){
final _that = this;
switch (_that) {
case _Initializing():
return initializing(_that);case _LoggingIn():
return login(_that);case _CreatePin():
return createPin(_that);case _VerifyUser():
return verifyUser(_that);case _Authenticated():
return authenticated(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initializing value)?  initializing,TResult? Function( _LoggingIn value)?  login,TResult? Function( _CreatePin value)?  createPin,TResult? Function( _VerifyUser value)?  verifyUser,TResult? Function( _Authenticated value)?  authenticated,}){
final _that = this;
switch (_that) {
case _Initializing() when initializing != null:
return initializing(_that);case _LoggingIn() when login != null:
return login(_that);case _CreatePin() when createPin != null:
return createPin(_that);case _VerifyUser() when verifyUser != null:
return verifyUser(_that);case _Authenticated() when authenticated != null:
return authenticated(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initializing,TResult Function()?  login,TResult Function()?  createPin,TResult Function()?  verifyUser,TResult Function()?  authenticated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initializing() when initializing != null:
return initializing();case _LoggingIn() when login != null:
return login();case _CreatePin() when createPin != null:
return createPin();case _VerifyUser() when verifyUser != null:
return verifyUser();case _Authenticated() when authenticated != null:
return authenticated();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initializing,required TResult Function()  login,required TResult Function()  createPin,required TResult Function()  verifyUser,required TResult Function()  authenticated,}) {final _that = this;
switch (_that) {
case _Initializing():
return initializing();case _LoggingIn():
return login();case _CreatePin():
return createPin();case _VerifyUser():
return verifyUser();case _Authenticated():
return authenticated();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initializing,TResult? Function()?  login,TResult? Function()?  createPin,TResult? Function()?  verifyUser,TResult? Function()?  authenticated,}) {final _that = this;
switch (_that) {
case _Initializing() when initializing != null:
return initializing();case _LoggingIn() when login != null:
return login();case _CreatePin() when createPin != null:
return createPin();case _VerifyUser() when verifyUser != null:
return verifyUser();case _Authenticated() when authenticated != null:
return authenticated();case _:
  return null;

}
}

}

/// @nodoc


class _Initializing implements AuthenticationState {
  const _Initializing();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initializing);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthenticationState.initializing()';
}


}




/// @nodoc


class _LoggingIn implements AuthenticationState {
  const _LoggingIn();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoggingIn);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthenticationState.login()';
}


}




/// @nodoc


class _CreatePin implements AuthenticationState {
  const _CreatePin();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePin);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthenticationState.createPin()';
}


}




/// @nodoc


class _VerifyUser implements AuthenticationState {
  const _VerifyUser();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyUser);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthenticationState.verifyUser()';
}


}




/// @nodoc


class _Authenticated implements AuthenticationState {
  const _Authenticated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Authenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthenticationState.authenticated()';
}


}




// dart format on
