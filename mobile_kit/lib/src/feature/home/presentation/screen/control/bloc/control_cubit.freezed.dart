// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'control_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ControlState {

 bool get isLoading; ApiStatus get apiStatus; List<ControlModel> get models; bool get isStopAllActive; bool get isActionsDisabled; bool get trigger;
/// Create a copy of ControlState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ControlStateCopyWith<ControlState> get copyWith => _$ControlStateCopyWithImpl<ControlState>(this as ControlState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ControlState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.apiStatus, apiStatus) || other.apiStatus == apiStatus)&&const DeepCollectionEquality().equals(other.models, models)&&(identical(other.isStopAllActive, isStopAllActive) || other.isStopAllActive == isStopAllActive)&&(identical(other.isActionsDisabled, isActionsDisabled) || other.isActionsDisabled == isActionsDisabled)&&(identical(other.trigger, trigger) || other.trigger == trigger));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,apiStatus,const DeepCollectionEquality().hash(models),isStopAllActive,isActionsDisabled,trigger);

@override
String toString() {
  return 'ControlState(isLoading: $isLoading, apiStatus: $apiStatus, models: $models, isStopAllActive: $isStopAllActive, isActionsDisabled: $isActionsDisabled, trigger: $trigger)';
}


}

/// @nodoc
abstract mixin class $ControlStateCopyWith<$Res>  {
  factory $ControlStateCopyWith(ControlState value, $Res Function(ControlState) _then) = _$ControlStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, ApiStatus apiStatus, List<ControlModel> models, bool isStopAllActive, bool isActionsDisabled, bool trigger
});




}
/// @nodoc
class _$ControlStateCopyWithImpl<$Res>
    implements $ControlStateCopyWith<$Res> {
  _$ControlStateCopyWithImpl(this._self, this._then);

  final ControlState _self;
  final $Res Function(ControlState) _then;

/// Create a copy of ControlState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? apiStatus = null,Object? models = null,Object? isStopAllActive = null,Object? isActionsDisabled = null,Object? trigger = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,apiStatus: null == apiStatus ? _self.apiStatus : apiStatus // ignore: cast_nullable_to_non_nullable
as ApiStatus,models: null == models ? _self.models : models // ignore: cast_nullable_to_non_nullable
as List<ControlModel>,isStopAllActive: null == isStopAllActive ? _self.isStopAllActive : isStopAllActive // ignore: cast_nullable_to_non_nullable
as bool,isActionsDisabled: null == isActionsDisabled ? _self.isActionsDisabled : isActionsDisabled // ignore: cast_nullable_to_non_nullable
as bool,trigger: null == trigger ? _self.trigger : trigger // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ControlState].
extension ControlStatePatterns on ControlState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ControlState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ControlState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ControlState value)  $default,){
final _that = this;
switch (_that) {
case _ControlState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ControlState value)?  $default,){
final _that = this;
switch (_that) {
case _ControlState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  ApiStatus apiStatus,  List<ControlModel> models,  bool isStopAllActive,  bool isActionsDisabled,  bool trigger)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ControlState() when $default != null:
return $default(_that.isLoading,_that.apiStatus,_that.models,_that.isStopAllActive,_that.isActionsDisabled,_that.trigger);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  ApiStatus apiStatus,  List<ControlModel> models,  bool isStopAllActive,  bool isActionsDisabled,  bool trigger)  $default,) {final _that = this;
switch (_that) {
case _ControlState():
return $default(_that.isLoading,_that.apiStatus,_that.models,_that.isStopAllActive,_that.isActionsDisabled,_that.trigger);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  ApiStatus apiStatus,  List<ControlModel> models,  bool isStopAllActive,  bool isActionsDisabled,  bool trigger)?  $default,) {final _that = this;
switch (_that) {
case _ControlState() when $default != null:
return $default(_that.isLoading,_that.apiStatus,_that.models,_that.isStopAllActive,_that.isActionsDisabled,_that.trigger);case _:
  return null;

}
}

}

/// @nodoc


class _ControlState implements ControlState {
  const _ControlState({required this.isLoading, required this.apiStatus, required final  List<ControlModel> models, required this.isStopAllActive, required this.isActionsDisabled, required this.trigger}): _models = models;
  

@override final  bool isLoading;
@override final  ApiStatus apiStatus;
 final  List<ControlModel> _models;
@override List<ControlModel> get models {
  if (_models is EqualUnmodifiableListView) return _models;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_models);
}

@override final  bool isStopAllActive;
@override final  bool isActionsDisabled;
@override final  bool trigger;

/// Create a copy of ControlState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ControlStateCopyWith<_ControlState> get copyWith => __$ControlStateCopyWithImpl<_ControlState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ControlState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.apiStatus, apiStatus) || other.apiStatus == apiStatus)&&const DeepCollectionEquality().equals(other._models, _models)&&(identical(other.isStopAllActive, isStopAllActive) || other.isStopAllActive == isStopAllActive)&&(identical(other.isActionsDisabled, isActionsDisabled) || other.isActionsDisabled == isActionsDisabled)&&(identical(other.trigger, trigger) || other.trigger == trigger));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,apiStatus,const DeepCollectionEquality().hash(_models),isStopAllActive,isActionsDisabled,trigger);

@override
String toString() {
  return 'ControlState(isLoading: $isLoading, apiStatus: $apiStatus, models: $models, isStopAllActive: $isStopAllActive, isActionsDisabled: $isActionsDisabled, trigger: $trigger)';
}


}

/// @nodoc
abstract mixin class _$ControlStateCopyWith<$Res> implements $ControlStateCopyWith<$Res> {
  factory _$ControlStateCopyWith(_ControlState value, $Res Function(_ControlState) _then) = __$ControlStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, ApiStatus apiStatus, List<ControlModel> models, bool isStopAllActive, bool isActionsDisabled, bool trigger
});




}
/// @nodoc
class __$ControlStateCopyWithImpl<$Res>
    implements _$ControlStateCopyWith<$Res> {
  __$ControlStateCopyWithImpl(this._self, this._then);

  final _ControlState _self;
  final $Res Function(_ControlState) _then;

/// Create a copy of ControlState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? apiStatus = null,Object? models = null,Object? isStopAllActive = null,Object? isActionsDisabled = null,Object? trigger = null,}) {
  return _then(_ControlState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,apiStatus: null == apiStatus ? _self.apiStatus : apiStatus // ignore: cast_nullable_to_non_nullable
as ApiStatus,models: null == models ? _self._models : models // ignore: cast_nullable_to_non_nullable
as List<ControlModel>,isStopAllActive: null == isStopAllActive ? _self.isStopAllActive : isStopAllActive // ignore: cast_nullable_to_non_nullable
as bool,isActionsDisabled: null == isActionsDisabled ? _self.isActionsDisabled : isActionsDisabled // ignore: cast_nullable_to_non_nullable
as bool,trigger: null == trigger ? _self.trigger : trigger // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
