// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'control_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ControlModel {

 int get id; String get name; ControlStatus get status; bool get isActionsDisabled;
/// Create a copy of ControlModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ControlModelCopyWith<ControlModel> get copyWith => _$ControlModelCopyWithImpl<ControlModel>(this as ControlModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ControlModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.isActionsDisabled, isActionsDisabled) || other.isActionsDisabled == isActionsDisabled));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,status,isActionsDisabled);

@override
String toString() {
  return 'ControlModel(id: $id, name: $name, status: $status, isActionsDisabled: $isActionsDisabled)';
}


}

/// @nodoc
abstract mixin class $ControlModelCopyWith<$Res>  {
  factory $ControlModelCopyWith(ControlModel value, $Res Function(ControlModel) _then) = _$ControlModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, ControlStatus status, bool isActionsDisabled
});




}
/// @nodoc
class _$ControlModelCopyWithImpl<$Res>
    implements $ControlModelCopyWith<$Res> {
  _$ControlModelCopyWithImpl(this._self, this._then);

  final ControlModel _self;
  final $Res Function(ControlModel) _then;

/// Create a copy of ControlModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? status = null,Object? isActionsDisabled = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ControlStatus,isActionsDisabled: null == isActionsDisabled ? _self.isActionsDisabled : isActionsDisabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ControlModel].
extension ControlModelPatterns on ControlModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ControlModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ControlModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ControlModel value)  $default,){
final _that = this;
switch (_that) {
case _ControlModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ControlModel value)?  $default,){
final _that = this;
switch (_that) {
case _ControlModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  ControlStatus status,  bool isActionsDisabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ControlModel() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.isActionsDisabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  ControlStatus status,  bool isActionsDisabled)  $default,) {final _that = this;
switch (_that) {
case _ControlModel():
return $default(_that.id,_that.name,_that.status,_that.isActionsDisabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  ControlStatus status,  bool isActionsDisabled)?  $default,) {final _that = this;
switch (_that) {
case _ControlModel() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.isActionsDisabled);case _:
  return null;

}
}

}

/// @nodoc


class _ControlModel extends ControlModel {
  const _ControlModel({required this.id, required this.name, required this.status, required this.isActionsDisabled}): super._();
  

@override final  int id;
@override final  String name;
@override final  ControlStatus status;
@override final  bool isActionsDisabled;

/// Create a copy of ControlModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ControlModelCopyWith<_ControlModel> get copyWith => __$ControlModelCopyWithImpl<_ControlModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ControlModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.isActionsDisabled, isActionsDisabled) || other.isActionsDisabled == isActionsDisabled));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,status,isActionsDisabled);

@override
String toString() {
  return 'ControlModel(id: $id, name: $name, status: $status, isActionsDisabled: $isActionsDisabled)';
}


}

/// @nodoc
abstract mixin class _$ControlModelCopyWith<$Res> implements $ControlModelCopyWith<$Res> {
  factory _$ControlModelCopyWith(_ControlModel value, $Res Function(_ControlModel) _then) = __$ControlModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, ControlStatus status, bool isActionsDisabled
});




}
/// @nodoc
class __$ControlModelCopyWithImpl<$Res>
    implements _$ControlModelCopyWith<$Res> {
  __$ControlModelCopyWithImpl(this._self, this._then);

  final _ControlModel _self;
  final $Res Function(_ControlModel) _then;

/// Create a copy of ControlModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? status = null,Object? isActionsDisabled = null,}) {
  return _then(_ControlModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ControlStatus,isActionsDisabled: null == isActionsDisabled ? _self.isActionsDisabled : isActionsDisabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
