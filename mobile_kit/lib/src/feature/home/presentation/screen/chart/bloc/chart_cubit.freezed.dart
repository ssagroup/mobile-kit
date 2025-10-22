// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChartState {

 bool get isLoading; ApiStatus get apiStatus; List<double>? get x; List<double>? get y; String? get unit;
/// Create a copy of ChartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChartStateCopyWith<ChartState> get copyWith => _$ChartStateCopyWithImpl<ChartState>(this as ChartState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChartState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.apiStatus, apiStatus) || other.apiStatus == apiStatus)&&const DeepCollectionEquality().equals(other.x, x)&&const DeepCollectionEquality().equals(other.y, y)&&(identical(other.unit, unit) || other.unit == unit));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,apiStatus,const DeepCollectionEquality().hash(x),const DeepCollectionEquality().hash(y),unit);

@override
String toString() {
  return 'ChartState(isLoading: $isLoading, apiStatus: $apiStatus, x: $x, y: $y, unit: $unit)';
}


}

/// @nodoc
abstract mixin class $ChartStateCopyWith<$Res>  {
  factory $ChartStateCopyWith(ChartState value, $Res Function(ChartState) _then) = _$ChartStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, ApiStatus apiStatus, List<double>? x, List<double>? y, String? unit
});




}
/// @nodoc
class _$ChartStateCopyWithImpl<$Res>
    implements $ChartStateCopyWith<$Res> {
  _$ChartStateCopyWithImpl(this._self, this._then);

  final ChartState _self;
  final $Res Function(ChartState) _then;

/// Create a copy of ChartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? apiStatus = null,Object? x = freezed,Object? y = freezed,Object? unit = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,apiStatus: null == apiStatus ? _self.apiStatus : apiStatus // ignore: cast_nullable_to_non_nullable
as ApiStatus,x: freezed == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as List<double>?,y: freezed == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as List<double>?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChartState].
extension ChartStatePatterns on ChartState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChartState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChartState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChartState value)  $default,){
final _that = this;
switch (_that) {
case _ChartState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChartState value)?  $default,){
final _that = this;
switch (_that) {
case _ChartState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  ApiStatus apiStatus,  List<double>? x,  List<double>? y,  String? unit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChartState() when $default != null:
return $default(_that.isLoading,_that.apiStatus,_that.x,_that.y,_that.unit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  ApiStatus apiStatus,  List<double>? x,  List<double>? y,  String? unit)  $default,) {final _that = this;
switch (_that) {
case _ChartState():
return $default(_that.isLoading,_that.apiStatus,_that.x,_that.y,_that.unit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  ApiStatus apiStatus,  List<double>? x,  List<double>? y,  String? unit)?  $default,) {final _that = this;
switch (_that) {
case _ChartState() when $default != null:
return $default(_that.isLoading,_that.apiStatus,_that.x,_that.y,_that.unit);case _:
  return null;

}
}

}

/// @nodoc


class _ChartState implements ChartState {
  const _ChartState({required this.isLoading, required this.apiStatus, required final  List<double>? x, required final  List<double>? y, required this.unit}): _x = x,_y = y;
  

@override final  bool isLoading;
@override final  ApiStatus apiStatus;
 final  List<double>? _x;
@override List<double>? get x {
  final value = _x;
  if (value == null) return null;
  if (_x is EqualUnmodifiableListView) return _x;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<double>? _y;
@override List<double>? get y {
  final value = _y;
  if (value == null) return null;
  if (_y is EqualUnmodifiableListView) return _y;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? unit;

/// Create a copy of ChartState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChartStateCopyWith<_ChartState> get copyWith => __$ChartStateCopyWithImpl<_ChartState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChartState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.apiStatus, apiStatus) || other.apiStatus == apiStatus)&&const DeepCollectionEquality().equals(other._x, _x)&&const DeepCollectionEquality().equals(other._y, _y)&&(identical(other.unit, unit) || other.unit == unit));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,apiStatus,const DeepCollectionEquality().hash(_x),const DeepCollectionEquality().hash(_y),unit);

@override
String toString() {
  return 'ChartState(isLoading: $isLoading, apiStatus: $apiStatus, x: $x, y: $y, unit: $unit)';
}


}

/// @nodoc
abstract mixin class _$ChartStateCopyWith<$Res> implements $ChartStateCopyWith<$Res> {
  factory _$ChartStateCopyWith(_ChartState value, $Res Function(_ChartState) _then) = __$ChartStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, ApiStatus apiStatus, List<double>? x, List<double>? y, String? unit
});




}
/// @nodoc
class __$ChartStateCopyWithImpl<$Res>
    implements _$ChartStateCopyWith<$Res> {
  __$ChartStateCopyWithImpl(this._self, this._then);

  final _ChartState _self;
  final $Res Function(_ChartState) _then;

/// Create a copy of ChartState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? apiStatus = null,Object? x = freezed,Object? y = freezed,Object? unit = freezed,}) {
  return _then(_ChartState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,apiStatus: null == apiStatus ? _self.apiStatus : apiStatus // ignore: cast_nullable_to_non_nullable
as ApiStatus,x: freezed == x ? _self._x : x // ignore: cast_nullable_to_non_nullable
as List<double>?,y: freezed == y ? _self._y : y // ignore: cast_nullable_to_non_nullable
as List<double>?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
