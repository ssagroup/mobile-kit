// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'infrastructure_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InfrastructureState {
  bool get isLoading => throw _privateConstructorUsedError;
  ApiStatus get apiStatus => throw _privateConstructorUsedError;
  List<InfrastructureModel> get models => throw _privateConstructorUsedError;

  /// Create a copy of InfrastructureState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InfrastructureStateCopyWith<InfrastructureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfrastructureStateCopyWith<$Res> {
  factory $InfrastructureStateCopyWith(
          InfrastructureState value, $Res Function(InfrastructureState) then) =
      _$InfrastructureStateCopyWithImpl<$Res, InfrastructureState>;
  @useResult
  $Res call(
      {bool isLoading, ApiStatus apiStatus, List<InfrastructureModel> models});
}

/// @nodoc
class _$InfrastructureStateCopyWithImpl<$Res, $Val extends InfrastructureState>
    implements $InfrastructureStateCopyWith<$Res> {
  _$InfrastructureStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InfrastructureState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? apiStatus = null,
    Object? models = null,
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
              as List<InfrastructureModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InfrastructureStateImplCopyWith<$Res>
    implements $InfrastructureStateCopyWith<$Res> {
  factory _$$InfrastructureStateImplCopyWith(_$InfrastructureStateImpl value,
          $Res Function(_$InfrastructureStateImpl) then) =
      __$$InfrastructureStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, ApiStatus apiStatus, List<InfrastructureModel> models});
}

/// @nodoc
class __$$InfrastructureStateImplCopyWithImpl<$Res>
    extends _$InfrastructureStateCopyWithImpl<$Res, _$InfrastructureStateImpl>
    implements _$$InfrastructureStateImplCopyWith<$Res> {
  __$$InfrastructureStateImplCopyWithImpl(_$InfrastructureStateImpl _value,
      $Res Function(_$InfrastructureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InfrastructureState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? apiStatus = null,
    Object? models = null,
  }) {
    return _then(_$InfrastructureStateImpl(
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
              as List<InfrastructureModel>,
    ));
  }
}

/// @nodoc

class _$InfrastructureStateImpl implements _InfrastructureState {
  const _$InfrastructureStateImpl(
      {required this.isLoading,
      required this.apiStatus,
      required final List<InfrastructureModel> models})
      : _models = models;

  @override
  final bool isLoading;
  @override
  final ApiStatus apiStatus;
  final List<InfrastructureModel> _models;
  @override
  List<InfrastructureModel> get models {
    if (_models is EqualUnmodifiableListView) return _models;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_models);
  }

  @override
  String toString() {
    return 'InfrastructureState(isLoading: $isLoading, apiStatus: $apiStatus, models: $models)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfrastructureStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.apiStatus, apiStatus) ||
                other.apiStatus == apiStatus) &&
            const DeepCollectionEquality().equals(other._models, _models));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, apiStatus,
      const DeepCollectionEquality().hash(_models));

  /// Create a copy of InfrastructureState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InfrastructureStateImplCopyWith<_$InfrastructureStateImpl> get copyWith =>
      __$$InfrastructureStateImplCopyWithImpl<_$InfrastructureStateImpl>(
          this, _$identity);
}

abstract class _InfrastructureState implements InfrastructureState {
  const factory _InfrastructureState(
          {required final bool isLoading,
          required final ApiStatus apiStatus,
          required final List<InfrastructureModel> models}) =
      _$InfrastructureStateImpl;

  @override
  bool get isLoading;
  @override
  ApiStatus get apiStatus;
  @override
  List<InfrastructureModel> get models;

  /// Create a copy of InfrastructureState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InfrastructureStateImplCopyWith<_$InfrastructureStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
