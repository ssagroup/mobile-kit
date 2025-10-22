// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginState {

 bool get isLoading; String? get email; ValidationError? get emailError; String? get password; ValidationError? get passwordError; AuthStatus get loginStatus; bool get showPassword; bool get rememberMe;
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateCopyWith<LoginState> get copyWith => _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.email, email) || other.email == email)&&(identical(other.emailError, emailError) || other.emailError == emailError)&&(identical(other.password, password) || other.password == password)&&(identical(other.passwordError, passwordError) || other.passwordError == passwordError)&&(identical(other.loginStatus, loginStatus) || other.loginStatus == loginStatus)&&(identical(other.showPassword, showPassword) || other.showPassword == showPassword)&&(identical(other.rememberMe, rememberMe) || other.rememberMe == rememberMe));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,email,emailError,password,passwordError,loginStatus,showPassword,rememberMe);

@override
String toString() {
  return 'LoginState(isLoading: $isLoading, email: $email, emailError: $emailError, password: $password, passwordError: $passwordError, loginStatus: $loginStatus, showPassword: $showPassword, rememberMe: $rememberMe)';
}


}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res>  {
  factory $LoginStateCopyWith(LoginState value, $Res Function(LoginState) _then) = _$LoginStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String? email, ValidationError? emailError, String? password, ValidationError? passwordError, AuthStatus loginStatus, bool showPassword, bool rememberMe
});




}
/// @nodoc
class _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? email = freezed,Object? emailError = freezed,Object? password = freezed,Object? passwordError = freezed,Object? loginStatus = null,Object? showPassword = null,Object? rememberMe = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,emailError: freezed == emailError ? _self.emailError : emailError // ignore: cast_nullable_to_non_nullable
as ValidationError?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,passwordError: freezed == passwordError ? _self.passwordError : passwordError // ignore: cast_nullable_to_non_nullable
as ValidationError?,loginStatus: null == loginStatus ? _self.loginStatus : loginStatus // ignore: cast_nullable_to_non_nullable
as AuthStatus,showPassword: null == showPassword ? _self.showPassword : showPassword // ignore: cast_nullable_to_non_nullable
as bool,rememberMe: null == rememberMe ? _self.rememberMe : rememberMe // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginState value)  $default,){
final _that = this;
switch (_that) {
case _LoginState():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginState value)?  $default,){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String? email,  ValidationError? emailError,  String? password,  ValidationError? passwordError,  AuthStatus loginStatus,  bool showPassword,  bool rememberMe)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.isLoading,_that.email,_that.emailError,_that.password,_that.passwordError,_that.loginStatus,_that.showPassword,_that.rememberMe);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String? email,  ValidationError? emailError,  String? password,  ValidationError? passwordError,  AuthStatus loginStatus,  bool showPassword,  bool rememberMe)  $default,) {final _that = this;
switch (_that) {
case _LoginState():
return $default(_that.isLoading,_that.email,_that.emailError,_that.password,_that.passwordError,_that.loginStatus,_that.showPassword,_that.rememberMe);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String? email,  ValidationError? emailError,  String? password,  ValidationError? passwordError,  AuthStatus loginStatus,  bool showPassword,  bool rememberMe)?  $default,) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.isLoading,_that.email,_that.emailError,_that.password,_that.passwordError,_that.loginStatus,_that.showPassword,_that.rememberMe);case _:
  return null;

}
}

}

/// @nodoc


class _LoginState implements LoginState {
  const _LoginState({required this.isLoading, required this.email, required this.emailError, required this.password, required this.passwordError, required this.loginStatus, required this.showPassword, required this.rememberMe});
  

@override final  bool isLoading;
@override final  String? email;
@override final  ValidationError? emailError;
@override final  String? password;
@override final  ValidationError? passwordError;
@override final  AuthStatus loginStatus;
@override final  bool showPassword;
@override final  bool rememberMe;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginStateCopyWith<_LoginState> get copyWith => __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.email, email) || other.email == email)&&(identical(other.emailError, emailError) || other.emailError == emailError)&&(identical(other.password, password) || other.password == password)&&(identical(other.passwordError, passwordError) || other.passwordError == passwordError)&&(identical(other.loginStatus, loginStatus) || other.loginStatus == loginStatus)&&(identical(other.showPassword, showPassword) || other.showPassword == showPassword)&&(identical(other.rememberMe, rememberMe) || other.rememberMe == rememberMe));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,email,emailError,password,passwordError,loginStatus,showPassword,rememberMe);

@override
String toString() {
  return 'LoginState(isLoading: $isLoading, email: $email, emailError: $emailError, password: $password, passwordError: $passwordError, loginStatus: $loginStatus, showPassword: $showPassword, rememberMe: $rememberMe)';
}


}

/// @nodoc
abstract mixin class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(_LoginState value, $Res Function(_LoginState) _then) = __$LoginStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String? email, ValidationError? emailError, String? password, ValidationError? passwordError, AuthStatus loginStatus, bool showPassword, bool rememberMe
});




}
/// @nodoc
class __$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(this._self, this._then);

  final _LoginState _self;
  final $Res Function(_LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? email = freezed,Object? emailError = freezed,Object? password = freezed,Object? passwordError = freezed,Object? loginStatus = null,Object? showPassword = null,Object? rememberMe = null,}) {
  return _then(_LoginState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,emailError: freezed == emailError ? _self.emailError : emailError // ignore: cast_nullable_to_non_nullable
as ValidationError?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,passwordError: freezed == passwordError ? _self.passwordError : passwordError // ignore: cast_nullable_to_non_nullable
as ValidationError?,loginStatus: null == loginStatus ? _self.loginStatus : loginStatus // ignore: cast_nullable_to_non_nullable
as AuthStatus,showPassword: null == showPassword ? _self.showPassword : showPassword // ignore: cast_nullable_to_non_nullable
as bool,rememberMe: null == rememberMe ? _self.rememberMe : rememberMe // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
