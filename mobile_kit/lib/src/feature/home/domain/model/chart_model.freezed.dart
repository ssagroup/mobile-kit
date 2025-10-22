// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChartModel {

 String? get chartId; String? get unit; ChartPointModel? get points; String? get lastValue;
/// Create a copy of ChartModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChartModelCopyWith<ChartModel> get copyWith => _$ChartModelCopyWithImpl<ChartModel>(this as ChartModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChartModel&&(identical(other.chartId, chartId) || other.chartId == chartId)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.points, points) || other.points == points)&&(identical(other.lastValue, lastValue) || other.lastValue == lastValue));
}


@override
int get hashCode => Object.hash(runtimeType,chartId,unit,points,lastValue);

@override
String toString() {
  return 'ChartModel(chartId: $chartId, unit: $unit, points: $points, lastValue: $lastValue)';
}


}

/// @nodoc
abstract mixin class $ChartModelCopyWith<$Res>  {
  factory $ChartModelCopyWith(ChartModel value, $Res Function(ChartModel) _then) = _$ChartModelCopyWithImpl;
@useResult
$Res call({
 String? chartId, String? unit, ChartPointModel? points, String? lastValue
});




}
/// @nodoc
class _$ChartModelCopyWithImpl<$Res>
    implements $ChartModelCopyWith<$Res> {
  _$ChartModelCopyWithImpl(this._self, this._then);

  final ChartModel _self;
  final $Res Function(ChartModel) _then;

/// Create a copy of ChartModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chartId = freezed,Object? unit = freezed,Object? points = freezed,Object? lastValue = freezed,}) {
  return _then(_self.copyWith(
chartId: freezed == chartId ? _self.chartId : chartId // ignore: cast_nullable_to_non_nullable
as String?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,points: freezed == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as ChartPointModel?,lastValue: freezed == lastValue ? _self.lastValue : lastValue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChartModel].
extension ChartModelPatterns on ChartModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChartModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChartModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChartModel value)  $default,){
final _that = this;
switch (_that) {
case _ChartModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChartModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChartModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? chartId,  String? unit,  ChartPointModel? points,  String? lastValue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChartModel() when $default != null:
return $default(_that.chartId,_that.unit,_that.points,_that.lastValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? chartId,  String? unit,  ChartPointModel? points,  String? lastValue)  $default,) {final _that = this;
switch (_that) {
case _ChartModel():
return $default(_that.chartId,_that.unit,_that.points,_that.lastValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? chartId,  String? unit,  ChartPointModel? points,  String? lastValue)?  $default,) {final _that = this;
switch (_that) {
case _ChartModel() when $default != null:
return $default(_that.chartId,_that.unit,_that.points,_that.lastValue);case _:
  return null;

}
}

}

/// @nodoc


class _ChartModel implements ChartModel {
  const _ChartModel({this.chartId, this.unit, this.points, this.lastValue});
  

@override final  String? chartId;
@override final  String? unit;
@override final  ChartPointModel? points;
@override final  String? lastValue;

/// Create a copy of ChartModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChartModelCopyWith<_ChartModel> get copyWith => __$ChartModelCopyWithImpl<_ChartModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChartModel&&(identical(other.chartId, chartId) || other.chartId == chartId)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.points, points) || other.points == points)&&(identical(other.lastValue, lastValue) || other.lastValue == lastValue));
}


@override
int get hashCode => Object.hash(runtimeType,chartId,unit,points,lastValue);

@override
String toString() {
  return 'ChartModel(chartId: $chartId, unit: $unit, points: $points, lastValue: $lastValue)';
}


}

/// @nodoc
abstract mixin class _$ChartModelCopyWith<$Res> implements $ChartModelCopyWith<$Res> {
  factory _$ChartModelCopyWith(_ChartModel value, $Res Function(_ChartModel) _then) = __$ChartModelCopyWithImpl;
@override @useResult
$Res call({
 String? chartId, String? unit, ChartPointModel? points, String? lastValue
});




}
/// @nodoc
class __$ChartModelCopyWithImpl<$Res>
    implements _$ChartModelCopyWith<$Res> {
  __$ChartModelCopyWithImpl(this._self, this._then);

  final _ChartModel _self;
  final $Res Function(_ChartModel) _then;

/// Create a copy of ChartModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chartId = freezed,Object? unit = freezed,Object? points = freezed,Object? lastValue = freezed,}) {
  return _then(_ChartModel(
chartId: freezed == chartId ? _self.chartId : chartId // ignore: cast_nullable_to_non_nullable
as String?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,points: freezed == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as ChartPointModel?,lastValue: freezed == lastValue ? _self.lastValue : lastValue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
