// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alerts_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AlertsState {
  bool get isLoading => throw _privateConstructorUsedError;
  ApiStatus get apiStatus => throw _privateConstructorUsedError;
  List<NotificationModel> get models => throw _privateConstructorUsedError;
  bool get trigger => throw _privateConstructorUsedError;

  /// Create a copy of AlertsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlertsStateCopyWith<AlertsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertsStateCopyWith<$Res> {
  factory $AlertsStateCopyWith(
          AlertsState value, $Res Function(AlertsState) then) =
      _$AlertsStateCopyWithImpl<$Res, AlertsState>;
  @useResult
  $Res call(
      {bool isLoading,
      ApiStatus apiStatus,
      List<NotificationModel> models,
      bool trigger});
}

/// @nodoc
class _$AlertsStateCopyWithImpl<$Res, $Val extends AlertsState>
    implements $AlertsStateCopyWith<$Res> {
  _$AlertsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AlertsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? apiStatus = null,
    Object? models = null,
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
      models: null == models
          ? _value.models
          : models // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
      trigger: null == trigger
          ? _value.trigger
          : trigger // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlertsStateImplCopyWith<$Res>
    implements $AlertsStateCopyWith<$Res> {
  factory _$$AlertsStateImplCopyWith(
          _$AlertsStateImpl value, $Res Function(_$AlertsStateImpl) then) =
      __$$AlertsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      ApiStatus apiStatus,
      List<NotificationModel> models,
      bool trigger});
}

/// @nodoc
class __$$AlertsStateImplCopyWithImpl<$Res>
    extends _$AlertsStateCopyWithImpl<$Res, _$AlertsStateImpl>
    implements _$$AlertsStateImplCopyWith<$Res> {
  __$$AlertsStateImplCopyWithImpl(
      _$AlertsStateImpl _value, $Res Function(_$AlertsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AlertsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? apiStatus = null,
    Object? models = null,
    Object? trigger = null,
  }) {
    return _then(_$AlertsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      apiStatus: null == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      models: null == models
          ? _value._models
          : models // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
      trigger: null == trigger
          ? _value.trigger
          : trigger // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AlertsStateImpl implements _AlertsState {
  const _$AlertsStateImpl(
      {required this.isLoading,
      required this.apiStatus,
      required final List<NotificationModel> models,
      required this.trigger})
      : _models = models;

  @override
  final bool isLoading;
  @override
  final ApiStatus apiStatus;
  final List<NotificationModel> _models;
  @override
  List<NotificationModel> get models {
    if (_models is EqualUnmodifiableListView) return _models;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_models);
  }

  @override
  final bool trigger;

  @override
  String toString() {
    return 'AlertsState(isLoading: $isLoading, apiStatus: $apiStatus, models: $models, trigger: $trigger)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlertsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.apiStatus, apiStatus) ||
                other.apiStatus == apiStatus) &&
            const DeepCollectionEquality().equals(other._models, _models) &&
            (identical(other.trigger, trigger) || other.trigger == trigger));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, apiStatus,
      const DeepCollectionEquality().hash(_models), trigger);

  /// Create a copy of AlertsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlertsStateImplCopyWith<_$AlertsStateImpl> get copyWith =>
      __$$AlertsStateImplCopyWithImpl<_$AlertsStateImpl>(this, _$identity);
}

abstract class _AlertsState implements AlertsState {
  const factory _AlertsState(
      {required final bool isLoading,
      required final ApiStatus apiStatus,
      required final List<NotificationModel> models,
      required final bool trigger}) = _$AlertsStateImpl;

  @override
  bool get isLoading;
  @override
  ApiStatus get apiStatus;
  @override
  List<NotificationModel> get models;
  @override
  bool get trigger;

  /// Create a copy of AlertsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlertsStateImplCopyWith<_$AlertsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
