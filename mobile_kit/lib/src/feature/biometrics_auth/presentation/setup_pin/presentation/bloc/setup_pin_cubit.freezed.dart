// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setup_pin_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SetupPinState {

 bool get isBioAvailable;
/// Create a copy of SetupPinState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetupPinStateCopyWith<SetupPinState> get copyWith => _$SetupPinStateCopyWithImpl<SetupPinState>(this as SetupPinState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetupPinState&&(identical(other.isBioAvailable, isBioAvailable) || other.isBioAvailable == isBioAvailable));
}


@override
int get hashCode => Object.hash(runtimeType,isBioAvailable);

@override
String toString() {
  return 'SetupPinState(isBioAvailable: $isBioAvailable)';
}


}

/// @nodoc
abstract mixin class $SetupPinStateCopyWith<$Res>  {
  factory $SetupPinStateCopyWith(SetupPinState value, $Res Function(SetupPinState) _then) = _$SetupPinStateCopyWithImpl;
@useResult
$Res call({
 bool isBioAvailable
});




}
/// @nodoc
class _$SetupPinStateCopyWithImpl<$Res>
    implements $SetupPinStateCopyWith<$Res> {
  _$SetupPinStateCopyWithImpl(this._self, this._then);

  final SetupPinState _self;
  final $Res Function(SetupPinState) _then;

/// Create a copy of SetupPinState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isBioAvailable = null,}) {
  return _then(_self.copyWith(
isBioAvailable: null == isBioAvailable ? _self.isBioAvailable : isBioAvailable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SetupPinState].
extension SetupPinStatePatterns on SetupPinState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SetupPinState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetupPinState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SetupPinState value)  $default,){
final _that = this;
switch (_that) {
case _SetupPinState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SetupPinState value)?  $default,){
final _that = this;
switch (_that) {
case _SetupPinState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isBioAvailable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetupPinState() when $default != null:
return $default(_that.isBioAvailable);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isBioAvailable)  $default,) {final _that = this;
switch (_that) {
case _SetupPinState():
return $default(_that.isBioAvailable);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isBioAvailable)?  $default,) {final _that = this;
switch (_that) {
case _SetupPinState() when $default != null:
return $default(_that.isBioAvailable);case _:
  return null;

}
}

}

/// @nodoc


class _SetupPinState implements SetupPinState {
  const _SetupPinState({required this.isBioAvailable});
  

@override final  bool isBioAvailable;

/// Create a copy of SetupPinState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetupPinStateCopyWith<_SetupPinState> get copyWith => __$SetupPinStateCopyWithImpl<_SetupPinState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetupPinState&&(identical(other.isBioAvailable, isBioAvailable) || other.isBioAvailable == isBioAvailable));
}


@override
int get hashCode => Object.hash(runtimeType,isBioAvailable);

@override
String toString() {
  return 'SetupPinState(isBioAvailable: $isBioAvailable)';
}


}

/// @nodoc
abstract mixin class _$SetupPinStateCopyWith<$Res> implements $SetupPinStateCopyWith<$Res> {
  factory _$SetupPinStateCopyWith(_SetupPinState value, $Res Function(_SetupPinState) _then) = __$SetupPinStateCopyWithImpl;
@override @useResult
$Res call({
 bool isBioAvailable
});




}
/// @nodoc
class __$SetupPinStateCopyWithImpl<$Res>
    implements _$SetupPinStateCopyWith<$Res> {
  __$SetupPinStateCopyWithImpl(this._self, this._then);

  final _SetupPinState _self;
  final $Res Function(_SetupPinState) _then;

/// Create a copy of SetupPinState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isBioAvailable = null,}) {
  return _then(_SetupPinState(
isBioAvailable: null == isBioAvailable ? _self.isBioAvailable : isBioAvailable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
