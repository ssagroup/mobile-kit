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
  List<InfrastructureModel> get infrastructure =>
      throw _privateConstructorUsedError;

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
      {bool isLoading,
      ApiStatus apiStatus,
      List<InfrastructureModel> infrastructure});

  $ApiStatusCopyWith<$Res> get apiStatus;
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
    Object? infrastructure = null,
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
      infrastructure: null == infrastructure
          ? _value.infrastructure
          : infrastructure // ignore: cast_nullable_to_non_nullable
              as List<InfrastructureModel>,
    ) as $Val);
  }

  /// Create a copy of InfrastructureState
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
abstract class _$$InfrastructureStateImplCopyWith<$Res>
    implements $InfrastructureStateCopyWith<$Res> {
  factory _$$InfrastructureStateImplCopyWith(_$InfrastructureStateImpl value,
          $Res Function(_$InfrastructureStateImpl) then) =
      __$$InfrastructureStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      ApiStatus apiStatus,
      List<InfrastructureModel> infrastructure});

  @override
  $ApiStatusCopyWith<$Res> get apiStatus;
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
    Object? infrastructure = null,
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
      infrastructure: null == infrastructure
          ? _value._infrastructure
          : infrastructure // ignore: cast_nullable_to_non_nullable
              as List<InfrastructureModel>,
    ));
  }
}

/// @nodoc

class _$InfrastructureStateImpl implements _InfrastructureState {
  const _$InfrastructureStateImpl(
      {required this.isLoading,
      required this.apiStatus,
      required final List<InfrastructureModel> infrastructure})
      : _infrastructure = infrastructure;

  @override
  final bool isLoading;
  @override
  final ApiStatus apiStatus;
  final List<InfrastructureModel> _infrastructure;
  @override
  List<InfrastructureModel> get infrastructure {
    if (_infrastructure is EqualUnmodifiableListView) return _infrastructure;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_infrastructure);
  }

  @override
  String toString() {
    return 'InfrastructureState(isLoading: $isLoading, apiStatus: $apiStatus, infrastructure: $infrastructure)';
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
            const DeepCollectionEquality()
                .equals(other._infrastructure, _infrastructure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, apiStatus,
      const DeepCollectionEquality().hash(_infrastructure));

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
          required final List<InfrastructureModel> infrastructure}) =
      _$InfrastructureStateImpl;

  @override
  bool get isLoading;
  @override
  ApiStatus get apiStatus;
  @override
  List<InfrastructureModel> get infrastructure;

  /// Create a copy of InfrastructureState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InfrastructureStateImplCopyWith<_$InfrastructureStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
