// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kpis_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$KpisState {
  bool get isLoading => throw _privateConstructorUsedError;
  ApiStatus get apiStatus => throw _privateConstructorUsedError;
  StatisticsPeriod get periodFilter => throw _privateConstructorUsedError;

  /// Create a copy of KpisState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KpisStateCopyWith<KpisState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KpisStateCopyWith<$Res> {
  factory $KpisStateCopyWith(KpisState value, $Res Function(KpisState) then) =
      _$KpisStateCopyWithImpl<$Res, KpisState>;
  @useResult
  $Res call(
      {bool isLoading, ApiStatus apiStatus, StatisticsPeriod periodFilter});

  $ApiStatusCopyWith<$Res> get apiStatus;
}

/// @nodoc
class _$KpisStateCopyWithImpl<$Res, $Val extends KpisState>
    implements $KpisStateCopyWith<$Res> {
  _$KpisStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KpisState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? apiStatus = null,
    Object? periodFilter = null,
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
    ) as $Val);
  }

  /// Create a copy of KpisState
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
abstract class _$$KpisStateImplCopyWith<$Res>
    implements $KpisStateCopyWith<$Res> {
  factory _$$KpisStateImplCopyWith(
          _$KpisStateImpl value, $Res Function(_$KpisStateImpl) then) =
      __$$KpisStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, ApiStatus apiStatus, StatisticsPeriod periodFilter});

  @override
  $ApiStatusCopyWith<$Res> get apiStatus;
}

/// @nodoc
class __$$KpisStateImplCopyWithImpl<$Res>
    extends _$KpisStateCopyWithImpl<$Res, _$KpisStateImpl>
    implements _$$KpisStateImplCopyWith<$Res> {
  __$$KpisStateImplCopyWithImpl(
      _$KpisStateImpl _value, $Res Function(_$KpisStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of KpisState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? apiStatus = null,
    Object? periodFilter = null,
  }) {
    return _then(_$KpisStateImpl(
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
    ));
  }
}

/// @nodoc

class _$KpisStateImpl implements _KpisState {
  const _$KpisStateImpl(
      {required this.isLoading,
      required this.apiStatus,
      required this.periodFilter});

  @override
  final bool isLoading;
  @override
  final ApiStatus apiStatus;
  @override
  final StatisticsPeriod periodFilter;

  @override
  String toString() {
    return 'KpisState(isLoading: $isLoading, apiStatus: $apiStatus, periodFilter: $periodFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KpisStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.apiStatus, apiStatus) ||
                other.apiStatus == apiStatus) &&
            (identical(other.periodFilter, periodFilter) ||
                other.periodFilter == periodFilter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, apiStatus, periodFilter);

  /// Create a copy of KpisState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KpisStateImplCopyWith<_$KpisStateImpl> get copyWith =>
      __$$KpisStateImplCopyWithImpl<_$KpisStateImpl>(this, _$identity);
}

abstract class _KpisState implements KpisState {
  const factory _KpisState(
      {required final bool isLoading,
      required final ApiStatus apiStatus,
      required final StatisticsPeriod periodFilter}) = _$KpisStateImpl;

  @override
  bool get isLoading;
  @override
  ApiStatus get apiStatus;
  @override
  StatisticsPeriod get periodFilter;

  /// Create a copy of KpisState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KpisStateImplCopyWith<_$KpisStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
