// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'infrastructure_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InfrastructureDetailsState {
  bool get isLoading => throw _privateConstructorUsedError;
  ApiStatus get apiStatus => throw _privateConstructorUsedError;
  StatisticsPeriod get periodFilter => throw _privateConstructorUsedError;
  List<InfrastructureDetailsModel> get models =>
      throw _privateConstructorUsedError;

  /// Create a copy of InfrastructureDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InfrastructureDetailsStateCopyWith<InfrastructureDetailsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfrastructureDetailsStateCopyWith<$Res> {
  factory $InfrastructureDetailsStateCopyWith(InfrastructureDetailsState value,
          $Res Function(InfrastructureDetailsState) then) =
      _$InfrastructureDetailsStateCopyWithImpl<$Res,
          InfrastructureDetailsState>;
  @useResult
  $Res call(
      {bool isLoading,
      ApiStatus apiStatus,
      StatisticsPeriod periodFilter,
      List<InfrastructureDetailsModel> models});
}

/// @nodoc
class _$InfrastructureDetailsStateCopyWithImpl<$Res,
        $Val extends InfrastructureDetailsState>
    implements $InfrastructureDetailsStateCopyWith<$Res> {
  _$InfrastructureDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InfrastructureDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? apiStatus = null,
    Object? periodFilter = null,
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
      periodFilter: null == periodFilter
          ? _value.periodFilter
          : periodFilter // ignore: cast_nullable_to_non_nullable
              as StatisticsPeriod,
      models: null == models
          ? _value.models
          : models // ignore: cast_nullable_to_non_nullable
              as List<InfrastructureDetailsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InfrastructureDetailsStateImplCopyWith<$Res>
    implements $InfrastructureDetailsStateCopyWith<$Res> {
  factory _$$InfrastructureDetailsStateImplCopyWith(
          _$InfrastructureDetailsStateImpl value,
          $Res Function(_$InfrastructureDetailsStateImpl) then) =
      __$$InfrastructureDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      ApiStatus apiStatus,
      StatisticsPeriod periodFilter,
      List<InfrastructureDetailsModel> models});
}

/// @nodoc
class __$$InfrastructureDetailsStateImplCopyWithImpl<$Res>
    extends _$InfrastructureDetailsStateCopyWithImpl<$Res,
        _$InfrastructureDetailsStateImpl>
    implements _$$InfrastructureDetailsStateImplCopyWith<$Res> {
  __$$InfrastructureDetailsStateImplCopyWithImpl(
      _$InfrastructureDetailsStateImpl _value,
      $Res Function(_$InfrastructureDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InfrastructureDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? apiStatus = null,
    Object? periodFilter = null,
    Object? models = null,
  }) {
    return _then(_$InfrastructureDetailsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      apiStatus: null == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      periodFilter: null == periodFilter
          ? _value.periodFilter
          : periodFilter // ignore: cast_nullable_to_non_nullable
              as StatisticsPeriod,
      models: null == models
          ? _value._models
          : models // ignore: cast_nullable_to_non_nullable
              as List<InfrastructureDetailsModel>,
    ));
  }
}

/// @nodoc

class _$InfrastructureDetailsStateImpl implements _InfrastructureDetailsState {
  const _$InfrastructureDetailsStateImpl(
      {required this.isLoading,
      required this.apiStatus,
      required this.periodFilter,
      required final List<InfrastructureDetailsModel> models})
      : _models = models;

  @override
  final bool isLoading;
  @override
  final ApiStatus apiStatus;
  @override
  final StatisticsPeriod periodFilter;
  final List<InfrastructureDetailsModel> _models;
  @override
  List<InfrastructureDetailsModel> get models {
    if (_models is EqualUnmodifiableListView) return _models;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_models);
  }

  @override
  String toString() {
    return 'InfrastructureDetailsState(isLoading: $isLoading, apiStatus: $apiStatus, periodFilter: $periodFilter, models: $models)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfrastructureDetailsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.apiStatus, apiStatus) ||
                other.apiStatus == apiStatus) &&
            (identical(other.periodFilter, periodFilter) ||
                other.periodFilter == periodFilter) &&
            const DeepCollectionEquality().equals(other._models, _models));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, apiStatus,
      periodFilter, const DeepCollectionEquality().hash(_models));

  /// Create a copy of InfrastructureDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InfrastructureDetailsStateImplCopyWith<_$InfrastructureDetailsStateImpl>
      get copyWith => __$$InfrastructureDetailsStateImplCopyWithImpl<
          _$InfrastructureDetailsStateImpl>(this, _$identity);
}

abstract class _InfrastructureDetailsState
    implements InfrastructureDetailsState {
  const factory _InfrastructureDetailsState(
          {required final bool isLoading,
          required final ApiStatus apiStatus,
          required final StatisticsPeriod periodFilter,
          required final List<InfrastructureDetailsModel> models}) =
      _$InfrastructureDetailsStateImpl;

  @override
  bool get isLoading;
  @override
  ApiStatus get apiStatus;
  @override
  StatisticsPeriod get periodFilter;
  @override
  List<InfrastructureDetailsModel> get models;

  /// Create a copy of InfrastructureDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InfrastructureDetailsStateImplCopyWith<_$InfrastructureDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
