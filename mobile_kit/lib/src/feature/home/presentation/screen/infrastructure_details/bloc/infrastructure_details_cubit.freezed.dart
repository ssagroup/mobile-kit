// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'infrastructure_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InfrastructureDetailsState {

 bool get isLoading; ApiStatus get apiStatus; StatisticsPeriod get periodFilter; List<InfrastructureDetailsModel> get models;
/// Create a copy of InfrastructureDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InfrastructureDetailsStateCopyWith<InfrastructureDetailsState> get copyWith => _$InfrastructureDetailsStateCopyWithImpl<InfrastructureDetailsState>(this as InfrastructureDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InfrastructureDetailsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.apiStatus, apiStatus) || other.apiStatus == apiStatus)&&(identical(other.periodFilter, periodFilter) || other.periodFilter == periodFilter)&&const DeepCollectionEquality().equals(other.models, models));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,apiStatus,periodFilter,const DeepCollectionEquality().hash(models));

@override
String toString() {
  return 'InfrastructureDetailsState(isLoading: $isLoading, apiStatus: $apiStatus, periodFilter: $periodFilter, models: $models)';
}


}

/// @nodoc
abstract mixin class $InfrastructureDetailsStateCopyWith<$Res>  {
  factory $InfrastructureDetailsStateCopyWith(InfrastructureDetailsState value, $Res Function(InfrastructureDetailsState) _then) = _$InfrastructureDetailsStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, ApiStatus apiStatus, StatisticsPeriod periodFilter, List<InfrastructureDetailsModel> models
});




}
/// @nodoc
class _$InfrastructureDetailsStateCopyWithImpl<$Res>
    implements $InfrastructureDetailsStateCopyWith<$Res> {
  _$InfrastructureDetailsStateCopyWithImpl(this._self, this._then);

  final InfrastructureDetailsState _self;
  final $Res Function(InfrastructureDetailsState) _then;

/// Create a copy of InfrastructureDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? apiStatus = null,Object? periodFilter = null,Object? models = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,apiStatus: null == apiStatus ? _self.apiStatus : apiStatus // ignore: cast_nullable_to_non_nullable
as ApiStatus,periodFilter: null == periodFilter ? _self.periodFilter : periodFilter // ignore: cast_nullable_to_non_nullable
as StatisticsPeriod,models: null == models ? _self.models : models // ignore: cast_nullable_to_non_nullable
as List<InfrastructureDetailsModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [InfrastructureDetailsState].
extension InfrastructureDetailsStatePatterns on InfrastructureDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InfrastructureDetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InfrastructureDetailsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InfrastructureDetailsState value)  $default,){
final _that = this;
switch (_that) {
case _InfrastructureDetailsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InfrastructureDetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _InfrastructureDetailsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  ApiStatus apiStatus,  StatisticsPeriod periodFilter,  List<InfrastructureDetailsModel> models)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InfrastructureDetailsState() when $default != null:
return $default(_that.isLoading,_that.apiStatus,_that.periodFilter,_that.models);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  ApiStatus apiStatus,  StatisticsPeriod periodFilter,  List<InfrastructureDetailsModel> models)  $default,) {final _that = this;
switch (_that) {
case _InfrastructureDetailsState():
return $default(_that.isLoading,_that.apiStatus,_that.periodFilter,_that.models);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  ApiStatus apiStatus,  StatisticsPeriod periodFilter,  List<InfrastructureDetailsModel> models)?  $default,) {final _that = this;
switch (_that) {
case _InfrastructureDetailsState() when $default != null:
return $default(_that.isLoading,_that.apiStatus,_that.periodFilter,_that.models);case _:
  return null;

}
}

}

/// @nodoc


class _InfrastructureDetailsState implements InfrastructureDetailsState {
  const _InfrastructureDetailsState({required this.isLoading, required this.apiStatus, required this.periodFilter, required final  List<InfrastructureDetailsModel> models}): _models = models;
  

@override final  bool isLoading;
@override final  ApiStatus apiStatus;
@override final  StatisticsPeriod periodFilter;
 final  List<InfrastructureDetailsModel> _models;
@override List<InfrastructureDetailsModel> get models {
  if (_models is EqualUnmodifiableListView) return _models;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_models);
}


/// Create a copy of InfrastructureDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InfrastructureDetailsStateCopyWith<_InfrastructureDetailsState> get copyWith => __$InfrastructureDetailsStateCopyWithImpl<_InfrastructureDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InfrastructureDetailsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.apiStatus, apiStatus) || other.apiStatus == apiStatus)&&(identical(other.periodFilter, periodFilter) || other.periodFilter == periodFilter)&&const DeepCollectionEquality().equals(other._models, _models));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,apiStatus,periodFilter,const DeepCollectionEquality().hash(_models));

@override
String toString() {
  return 'InfrastructureDetailsState(isLoading: $isLoading, apiStatus: $apiStatus, periodFilter: $periodFilter, models: $models)';
}


}

/// @nodoc
abstract mixin class _$InfrastructureDetailsStateCopyWith<$Res> implements $InfrastructureDetailsStateCopyWith<$Res> {
  factory _$InfrastructureDetailsStateCopyWith(_InfrastructureDetailsState value, $Res Function(_InfrastructureDetailsState) _then) = __$InfrastructureDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, ApiStatus apiStatus, StatisticsPeriod periodFilter, List<InfrastructureDetailsModel> models
});




}
/// @nodoc
class __$InfrastructureDetailsStateCopyWithImpl<$Res>
    implements _$InfrastructureDetailsStateCopyWith<$Res> {
  __$InfrastructureDetailsStateCopyWithImpl(this._self, this._then);

  final _InfrastructureDetailsState _self;
  final $Res Function(_InfrastructureDetailsState) _then;

/// Create a copy of InfrastructureDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? apiStatus = null,Object? periodFilter = null,Object? models = null,}) {
  return _then(_InfrastructureDetailsState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,apiStatus: null == apiStatus ? _self.apiStatus : apiStatus // ignore: cast_nullable_to_non_nullable
as ApiStatus,periodFilter: null == periodFilter ? _self.periodFilter : periodFilter // ignore: cast_nullable_to_non_nullable
as StatisticsPeriod,models: null == models ? _self._models : models // ignore: cast_nullable_to_non_nullable
as List<InfrastructureDetailsModel>,
  ));
}


}

// dart format on
