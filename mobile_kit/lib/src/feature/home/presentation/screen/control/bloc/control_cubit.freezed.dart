// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'control_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ControlState {
  bool get isLoading => throw _privateConstructorUsedError;
  ApiStatus get apiStatus => throw _privateConstructorUsedError;
  List<ControlModel> get controls => throw _privateConstructorUsedError;
  bool get isStopAllActive => throw _privateConstructorUsedError;
  bool get isActionsDisabled => throw _privateConstructorUsedError;
  bool get trigger => throw _privateConstructorUsedError;

  /// Create a copy of ControlState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ControlStateCopyWith<ControlState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ControlStateCopyWith<$Res> {
  factory $ControlStateCopyWith(
          ControlState value, $Res Function(ControlState) then) =
      _$ControlStateCopyWithImpl<$Res, ControlState>;
  @useResult
  $Res call(
      {bool isLoading,
      ApiStatus apiStatus,
      List<ControlModel> controls,
      bool isStopAllActive,
      bool isActionsDisabled,
      bool trigger});

  $ApiStatusCopyWith<$Res> get apiStatus;
}

/// @nodoc
class _$ControlStateCopyWithImpl<$Res, $Val extends ControlState>
    implements $ControlStateCopyWith<$Res> {
  _$ControlStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ControlState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? apiStatus = null,
    Object? controls = null,
    Object? isStopAllActive = null,
    Object? isActionsDisabled = null,
    Object? trigger = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      apiStatus: null == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      controls: null == controls
          ? _value.controls
          : controls // ignore: cast_nullable_to_non_nullable
              as List<ControlModel>,
      isStopAllActive: null == isStopAllActive
          ? _value.isStopAllActive
          : isStopAllActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isActionsDisabled: null == isActionsDisabled
          ? _value.isActionsDisabled
          : isActionsDisabled // ignore: cast_nullable_to_non_nullable
              as bool,
      trigger: null == trigger
          ? _value.trigger
          : trigger // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of ControlState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiStatusCopyWith<$Res> get apiStatus {
    return $ApiStatusCopyWith<$Res>(_value.apiStatus, (value) {
      return _then(_value.copyWith(apiStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ControlStateImplCopyWith<$Res>
    implements $ControlStateCopyWith<$Res> {
  factory _$$ControlStateImplCopyWith(
          _$ControlStateImpl value, $Res Function(_$ControlStateImpl) then) =
      __$$ControlStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      ApiStatus apiStatus,
      List<ControlModel> controls,
      bool isStopAllActive,
      bool isActionsDisabled,
      bool trigger});

  @override
  $ApiStatusCopyWith<$Res> get apiStatus;
}

/// @nodoc
class __$$ControlStateImplCopyWithImpl<$Res>
    extends _$ControlStateCopyWithImpl<$Res, _$ControlStateImpl>
    implements _$$ControlStateImplCopyWith<$Res> {
  __$$ControlStateImplCopyWithImpl(
      _$ControlStateImpl _value, $Res Function(_$ControlStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ControlState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? apiStatus = null,
    Object? controls = null,
    Object? isStopAllActive = null,
    Object? isActionsDisabled = null,
    Object? trigger = null,
  }) {
    return _then(_$ControlStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      apiStatus: null == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      controls: null == controls
          ? _value._controls
          : controls // ignore: cast_nullable_to_non_nullable
              as List<ControlModel>,
      isStopAllActive: null == isStopAllActive
          ? _value.isStopAllActive
          : isStopAllActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isActionsDisabled: null == isActionsDisabled
          ? _value.isActionsDisabled
          : isActionsDisabled // ignore: cast_nullable_to_non_nullable
              as bool,
      trigger: null == trigger
          ? _value.trigger
          : trigger // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ControlStateImpl implements _ControlState {
  const _$ControlStateImpl(
      {required this.isLoading,
      required this.apiStatus,
      required final List<ControlModel> controls,
      required this.isStopAllActive,
      required this.isActionsDisabled,
      required this.trigger})
      : _controls = controls;

  @override
  final bool isLoading;
  @override
  final ApiStatus apiStatus;
  final List<ControlModel> _controls;
  @override
  List<ControlModel> get controls {
    if (_controls is EqualUnmodifiableListView) return _controls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_controls);
  }

  @override
  final bool isStopAllActive;
  @override
  final bool isActionsDisabled;
  @override
  final bool trigger;

  @override
  String toString() {
    return 'ControlState(isLoading: $isLoading, apiStatus: $apiStatus, controls: $controls, isStopAllActive: $isStopAllActive, isActionsDisabled: $isActionsDisabled, trigger: $trigger)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ControlStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.apiStatus, apiStatus) ||
                other.apiStatus == apiStatus) &&
            const DeepCollectionEquality().equals(other._controls, _controls) &&
            (identical(other.isStopAllActive, isStopAllActive) ||
                other.isStopAllActive == isStopAllActive) &&
            (identical(other.isActionsDisabled, isActionsDisabled) ||
                other.isActionsDisabled == isActionsDisabled) &&
            (identical(other.trigger, trigger) || other.trigger == trigger));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      apiStatus,
      const DeepCollectionEquality().hash(_controls),
      isStopAllActive,
      isActionsDisabled,
      trigger);

  /// Create a copy of ControlState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ControlStateImplCopyWith<_$ControlStateImpl> get copyWith =>
      __$$ControlStateImplCopyWithImpl<_$ControlStateImpl>(this, _$identity);
}

abstract class _ControlState implements ControlState {
  const factory _ControlState(
      {required final bool isLoading,
      required final ApiStatus apiStatus,
      required final List<ControlModel> controls,
      required final bool isStopAllActive,
      required final bool isActionsDisabled,
      required final bool trigger}) = _$ControlStateImpl;

  @override
  bool get isLoading;
  @override
  ApiStatus get apiStatus;
  @override
  List<ControlModel> get controls;
  @override
  bool get isStopAllActive;
  @override
  bool get isActionsDisabled;
  @override
  bool get trigger;

  /// Create a copy of ControlState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ControlStateImplCopyWith<_$ControlStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
