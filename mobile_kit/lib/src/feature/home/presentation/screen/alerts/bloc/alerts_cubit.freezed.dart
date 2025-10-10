// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alerts_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AlertsState implements DiagnosticableTreeMixin {

 bool get isLoading; ApiStatus get apiStatus; List<NotificationModel> get models; bool get trigger; int get skipCount; int get totalCount;
/// Create a copy of AlertsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlertsStateCopyWith<AlertsState> get copyWith => _$AlertsStateCopyWithImpl<AlertsState>(this as AlertsState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AlertsState'))
    ..add(DiagnosticsProperty('isLoading', isLoading))..add(DiagnosticsProperty('apiStatus', apiStatus))..add(DiagnosticsProperty('models', models))..add(DiagnosticsProperty('trigger', trigger))..add(DiagnosticsProperty('skipCount', skipCount))..add(DiagnosticsProperty('totalCount', totalCount));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlertsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.apiStatus, apiStatus) || other.apiStatus == apiStatus)&&const DeepCollectionEquality().equals(other.models, models)&&(identical(other.trigger, trigger) || other.trigger == trigger)&&(identical(other.skipCount, skipCount) || other.skipCount == skipCount)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,apiStatus,const DeepCollectionEquality().hash(models),trigger,skipCount,totalCount);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AlertsState(isLoading: $isLoading, apiStatus: $apiStatus, models: $models, trigger: $trigger, skipCount: $skipCount, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class $AlertsStateCopyWith<$Res>  {
  factory $AlertsStateCopyWith(AlertsState value, $Res Function(AlertsState) _then) = _$AlertsStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, ApiStatus apiStatus, List<NotificationModel> models, bool trigger, int skipCount, int totalCount
});




}
/// @nodoc
class _$AlertsStateCopyWithImpl<$Res>
    implements $AlertsStateCopyWith<$Res> {
  _$AlertsStateCopyWithImpl(this._self, this._then);

  final AlertsState _self;
  final $Res Function(AlertsState) _then;

/// Create a copy of AlertsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? apiStatus = null,Object? models = null,Object? trigger = null,Object? skipCount = null,Object? totalCount = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,apiStatus: null == apiStatus ? _self.apiStatus : apiStatus // ignore: cast_nullable_to_non_nullable
as ApiStatus,models: null == models ? _self.models : models // ignore: cast_nullable_to_non_nullable
as List<NotificationModel>,trigger: null == trigger ? _self.trigger : trigger // ignore: cast_nullable_to_non_nullable
as bool,skipCount: null == skipCount ? _self.skipCount : skipCount // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AlertsState].
extension AlertsStatePatterns on AlertsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlertsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlertsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlertsState value)  $default,){
final _that = this;
switch (_that) {
case _AlertsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlertsState value)?  $default,){
final _that = this;
switch (_that) {
case _AlertsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  ApiStatus apiStatus,  List<NotificationModel> models,  bool trigger,  int skipCount,  int totalCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AlertsState() when $default != null:
return $default(_that.isLoading,_that.apiStatus,_that.models,_that.trigger,_that.skipCount,_that.totalCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  ApiStatus apiStatus,  List<NotificationModel> models,  bool trigger,  int skipCount,  int totalCount)  $default,) {final _that = this;
switch (_that) {
case _AlertsState():
return $default(_that.isLoading,_that.apiStatus,_that.models,_that.trigger,_that.skipCount,_that.totalCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  ApiStatus apiStatus,  List<NotificationModel> models,  bool trigger,  int skipCount,  int totalCount)?  $default,) {final _that = this;
switch (_that) {
case _AlertsState() when $default != null:
return $default(_that.isLoading,_that.apiStatus,_that.models,_that.trigger,_that.skipCount,_that.totalCount);case _:
  return null;

}
}

}

/// @nodoc


class _AlertsState extends AlertsState with DiagnosticableTreeMixin {
  const _AlertsState({required this.isLoading, required this.apiStatus, required final  List<NotificationModel> models, required this.trigger, required this.skipCount, required this.totalCount}): _models = models,super._();
  

@override final  bool isLoading;
@override final  ApiStatus apiStatus;
 final  List<NotificationModel> _models;
@override List<NotificationModel> get models {
  if (_models is EqualUnmodifiableListView) return _models;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_models);
}

@override final  bool trigger;
@override final  int skipCount;
@override final  int totalCount;

/// Create a copy of AlertsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlertsStateCopyWith<_AlertsState> get copyWith => __$AlertsStateCopyWithImpl<_AlertsState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AlertsState'))
    ..add(DiagnosticsProperty('isLoading', isLoading))..add(DiagnosticsProperty('apiStatus', apiStatus))..add(DiagnosticsProperty('models', models))..add(DiagnosticsProperty('trigger', trigger))..add(DiagnosticsProperty('skipCount', skipCount))..add(DiagnosticsProperty('totalCount', totalCount));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlertsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.apiStatus, apiStatus) || other.apiStatus == apiStatus)&&const DeepCollectionEquality().equals(other._models, _models)&&(identical(other.trigger, trigger) || other.trigger == trigger)&&(identical(other.skipCount, skipCount) || other.skipCount == skipCount)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,apiStatus,const DeepCollectionEquality().hash(_models),trigger,skipCount,totalCount);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AlertsState(isLoading: $isLoading, apiStatus: $apiStatus, models: $models, trigger: $trigger, skipCount: $skipCount, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class _$AlertsStateCopyWith<$Res> implements $AlertsStateCopyWith<$Res> {
  factory _$AlertsStateCopyWith(_AlertsState value, $Res Function(_AlertsState) _then) = __$AlertsStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, ApiStatus apiStatus, List<NotificationModel> models, bool trigger, int skipCount, int totalCount
});




}
/// @nodoc
class __$AlertsStateCopyWithImpl<$Res>
    implements _$AlertsStateCopyWith<$Res> {
  __$AlertsStateCopyWithImpl(this._self, this._then);

  final _AlertsState _self;
  final $Res Function(_AlertsState) _then;

/// Create a copy of AlertsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? apiStatus = null,Object? models = null,Object? trigger = null,Object? skipCount = null,Object? totalCount = null,}) {
  return _then(_AlertsState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,apiStatus: null == apiStatus ? _self.apiStatus : apiStatus // ignore: cast_nullable_to_non_nullable
as ApiStatus,models: null == models ? _self._models : models // ignore: cast_nullable_to_non_nullable
as List<NotificationModel>,trigger: null == trigger ? _self.trigger : trigger // ignore: cast_nullable_to_non_nullable
as bool,skipCount: null == skipCount ? _self.skipCount : skipCount // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
