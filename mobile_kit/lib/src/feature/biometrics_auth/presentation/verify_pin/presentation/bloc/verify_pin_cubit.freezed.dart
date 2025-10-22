// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_pin_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VerifyPinState {

 bool get showError; bool get isBioEnabled;
/// Create a copy of VerifyPinState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyPinStateCopyWith<VerifyPinState> get copyWith => _$VerifyPinStateCopyWithImpl<VerifyPinState>(this as VerifyPinState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyPinState&&(identical(other.showError, showError) || other.showError == showError)&&(identical(other.isBioEnabled, isBioEnabled) || other.isBioEnabled == isBioEnabled));
}


@override
int get hashCode => Object.hash(runtimeType,showError,isBioEnabled);

@override
String toString() {
  return 'VerifyPinState(showError: $showError, isBioEnabled: $isBioEnabled)';
}


}

/// @nodoc
abstract mixin class $VerifyPinStateCopyWith<$Res>  {
  factory $VerifyPinStateCopyWith(VerifyPinState value, $Res Function(VerifyPinState) _then) = _$VerifyPinStateCopyWithImpl;
@useResult
$Res call({
 bool showError, bool isBioEnabled
});




}
/// @nodoc
class _$VerifyPinStateCopyWithImpl<$Res>
    implements $VerifyPinStateCopyWith<$Res> {
  _$VerifyPinStateCopyWithImpl(this._self, this._then);

  final VerifyPinState _self;
  final $Res Function(VerifyPinState) _then;

/// Create a copy of VerifyPinState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? showError = null,Object? isBioEnabled = null,}) {
  return _then(_self.copyWith(
showError: null == showError ? _self.showError : showError // ignore: cast_nullable_to_non_nullable
as bool,isBioEnabled: null == isBioEnabled ? _self.isBioEnabled : isBioEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifyPinState].
extension VerifyPinStatePatterns on VerifyPinState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyPinState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyPinState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyPinState value)  $default,){
final _that = this;
switch (_that) {
case _VerifyPinState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyPinState value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyPinState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool showError,  bool isBioEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyPinState() when $default != null:
return $default(_that.showError,_that.isBioEnabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool showError,  bool isBioEnabled)  $default,) {final _that = this;
switch (_that) {
case _VerifyPinState():
return $default(_that.showError,_that.isBioEnabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool showError,  bool isBioEnabled)?  $default,) {final _that = this;
switch (_that) {
case _VerifyPinState() when $default != null:
return $default(_that.showError,_that.isBioEnabled);case _:
  return null;

}
}

}

/// @nodoc


class _VerifyPinState implements VerifyPinState {
  const _VerifyPinState({required this.showError, required this.isBioEnabled});
  

@override final  bool showError;
@override final  bool isBioEnabled;

/// Create a copy of VerifyPinState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyPinStateCopyWith<_VerifyPinState> get copyWith => __$VerifyPinStateCopyWithImpl<_VerifyPinState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyPinState&&(identical(other.showError, showError) || other.showError == showError)&&(identical(other.isBioEnabled, isBioEnabled) || other.isBioEnabled == isBioEnabled));
}


@override
int get hashCode => Object.hash(runtimeType,showError,isBioEnabled);

@override
String toString() {
  return 'VerifyPinState(showError: $showError, isBioEnabled: $isBioEnabled)';
}


}

/// @nodoc
abstract mixin class _$VerifyPinStateCopyWith<$Res> implements $VerifyPinStateCopyWith<$Res> {
  factory _$VerifyPinStateCopyWith(_VerifyPinState value, $Res Function(_VerifyPinState) _then) = __$VerifyPinStateCopyWithImpl;
@override @useResult
$Res call({
 bool showError, bool isBioEnabled
});




}
/// @nodoc
class __$VerifyPinStateCopyWithImpl<$Res>
    implements _$VerifyPinStateCopyWith<$Res> {
  __$VerifyPinStateCopyWithImpl(this._self, this._then);

  final _VerifyPinState _self;
  final $Res Function(_VerifyPinState) _then;

/// Create a copy of VerifyPinState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? showError = null,Object? isBioEnabled = null,}) {
  return _then(_VerifyPinState(
showError: null == showError ? _self.showError : showError // ignore: cast_nullable_to_non_nullable
as bool,isBioEnabled: null == isBioEnabled ? _self.isBioEnabled : isBioEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
