// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'infrastructure_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InfrastructureState {

 bool get isLoading; ApiStatus get apiStatus; List<InfrastructureModel> get models;
/// Create a copy of InfrastructureState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InfrastructureStateCopyWith<InfrastructureState> get copyWith => _$InfrastructureStateCopyWithImpl<InfrastructureState>(this as InfrastructureState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InfrastructureState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.apiStatus, apiStatus) || other.apiStatus == apiStatus)&&const DeepCollectionEquality().equals(other.models, models));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,apiStatus,const DeepCollectionEquality().hash(models));

@override
String toString() {
  return 'InfrastructureState(isLoading: $isLoading, apiStatus: $apiStatus, models: $models)';
}


}

/// @nodoc
abstract mixin class $InfrastructureStateCopyWith<$Res>  {
  factory $InfrastructureStateCopyWith(InfrastructureState value, $Res Function(InfrastructureState) _then) = _$InfrastructureStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, ApiStatus apiStatus, List<InfrastructureModel> models
});




}
/// @nodoc
class _$InfrastructureStateCopyWithImpl<$Res>
    implements $InfrastructureStateCopyWith<$Res> {
  _$InfrastructureStateCopyWithImpl(this._self, this._then);

  final InfrastructureState _self;
  final $Res Function(InfrastructureState) _then;

/// Create a copy of InfrastructureState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? apiStatus = null,Object? models = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,apiStatus: null == apiStatus ? _self.apiStatus : apiStatus // ignore: cast_nullable_to_non_nullable
as ApiStatus,models: null == models ? _self.models : models // ignore: cast_nullable_to_non_nullable
as List<InfrastructureModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [InfrastructureState].
extension InfrastructureStatePatterns on InfrastructureState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InfrastructureState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InfrastructureState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InfrastructureState value)  $default,){
final _that = this;
switch (_that) {
case _InfrastructureState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InfrastructureState value)?  $default,){
final _that = this;
switch (_that) {
case _InfrastructureState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  ApiStatus apiStatus,  List<InfrastructureModel> models)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InfrastructureState() when $default != null:
return $default(_that.isLoading,_that.apiStatus,_that.models);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  ApiStatus apiStatus,  List<InfrastructureModel> models)  $default,) {final _that = this;
switch (_that) {
case _InfrastructureState():
return $default(_that.isLoading,_that.apiStatus,_that.models);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  ApiStatus apiStatus,  List<InfrastructureModel> models)?  $default,) {final _that = this;
switch (_that) {
case _InfrastructureState() when $default != null:
return $default(_that.isLoading,_that.apiStatus,_that.models);case _:
  return null;

}
}

}

/// @nodoc


class _InfrastructureState implements InfrastructureState {
  const _InfrastructureState({required this.isLoading, required this.apiStatus, required final  List<InfrastructureModel> models}): _models = models;
  

@override final  bool isLoading;
@override final  ApiStatus apiStatus;
 final  List<InfrastructureModel> _models;
@override List<InfrastructureModel> get models {
  if (_models is EqualUnmodifiableListView) return _models;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_models);
}


/// Create a copy of InfrastructureState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InfrastructureStateCopyWith<_InfrastructureState> get copyWith => __$InfrastructureStateCopyWithImpl<_InfrastructureState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InfrastructureState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.apiStatus, apiStatus) || other.apiStatus == apiStatus)&&const DeepCollectionEquality().equals(other._models, _models));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,apiStatus,const DeepCollectionEquality().hash(_models));

@override
String toString() {
  return 'InfrastructureState(isLoading: $isLoading, apiStatus: $apiStatus, models: $models)';
}


}

/// @nodoc
abstract mixin class _$InfrastructureStateCopyWith<$Res> implements $InfrastructureStateCopyWith<$Res> {
  factory _$InfrastructureStateCopyWith(_InfrastructureState value, $Res Function(_InfrastructureState) _then) = __$InfrastructureStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, ApiStatus apiStatus, List<InfrastructureModel> models
});




}
/// @nodoc
class __$InfrastructureStateCopyWithImpl<$Res>
    implements _$InfrastructureStateCopyWith<$Res> {
  __$InfrastructureStateCopyWithImpl(this._self, this._then);

  final _InfrastructureState _self;
  final $Res Function(_InfrastructureState) _then;

/// Create a copy of InfrastructureState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? apiStatus = null,Object? models = null,}) {
  return _then(_InfrastructureState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,apiStatus: null == apiStatus ? _self.apiStatus : apiStatus // ignore: cast_nullable_to_non_nullable
as ApiStatus,models: null == models ? _self._models : models // ignore: cast_nullable_to_non_nullable
as List<InfrastructureModel>,
  ));
}


}

// dart format on
