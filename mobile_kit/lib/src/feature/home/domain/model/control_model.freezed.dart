// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'control_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ControlModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  ControlStatus get status => throw _privateConstructorUsedError;
  bool get isActionsDisabled => throw _privateConstructorUsedError;

  /// Create a copy of ControlModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ControlModelCopyWith<ControlModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ControlModelCopyWith<$Res> {
  factory $ControlModelCopyWith(
          ControlModel value, $Res Function(ControlModel) then) =
      _$ControlModelCopyWithImpl<$Res, ControlModel>;
  @useResult
  $Res call(
      {int id, String name, ControlStatus status, bool isActionsDisabled});
}

/// @nodoc
class _$ControlModelCopyWithImpl<$Res, $Val extends ControlModel>
    implements $ControlModelCopyWith<$Res> {
  _$ControlModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ControlModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? isActionsDisabled = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ControlStatus,
      isActionsDisabled: null == isActionsDisabled
          ? _value.isActionsDisabled
          : isActionsDisabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ControlModelImplCopyWith<$Res>
    implements $ControlModelCopyWith<$Res> {
  factory _$$ControlModelImplCopyWith(
          _$ControlModelImpl value, $Res Function(_$ControlModelImpl) then) =
      __$$ControlModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, ControlStatus status, bool isActionsDisabled});
}

/// @nodoc
class __$$ControlModelImplCopyWithImpl<$Res>
    extends _$ControlModelCopyWithImpl<$Res, _$ControlModelImpl>
    implements _$$ControlModelImplCopyWith<$Res> {
  __$$ControlModelImplCopyWithImpl(
      _$ControlModelImpl _value, $Res Function(_$ControlModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ControlModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? isActionsDisabled = null,
  }) {
    return _then(_$ControlModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ControlStatus,
      isActionsDisabled: null == isActionsDisabled
          ? _value.isActionsDisabled
          : isActionsDisabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ControlModelImpl extends _ControlModel {
  const _$ControlModelImpl(
      {required this.id,
      required this.name,
      required this.status,
      required this.isActionsDisabled})
      : super._();

  @override
  final int id;
  @override
  final String name;
  @override
  final ControlStatus status;
  @override
  final bool isActionsDisabled;

  @override
  String toString() {
    return 'ControlModel(id: $id, name: $name, status: $status, isActionsDisabled: $isActionsDisabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ControlModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isActionsDisabled, isActionsDisabled) ||
                other.isActionsDisabled == isActionsDisabled));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, status, isActionsDisabled);

  /// Create a copy of ControlModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ControlModelImplCopyWith<_$ControlModelImpl> get copyWith =>
      __$$ControlModelImplCopyWithImpl<_$ControlModelImpl>(this, _$identity);
}

abstract class _ControlModel extends ControlModel {
  const factory _ControlModel(
      {required final int id,
      required final String name,
      required final ControlStatus status,
      required final bool isActionsDisabled}) = _$ControlModelImpl;
  const _ControlModel._() : super._();

  @override
  int get id;
  @override
  String get name;
  @override
  ControlStatus get status;
  @override
  bool get isActionsDisabled;

  /// Create a copy of ControlModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ControlModelImplCopyWith<_$ControlModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
