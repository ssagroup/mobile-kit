// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChartModel {
  String? get chartId => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;
  ChartPointModel? get points => throw _privateConstructorUsedError;

  /// Create a copy of ChartModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChartModelCopyWith<ChartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartModelCopyWith<$Res> {
  factory $ChartModelCopyWith(
          ChartModel value, $Res Function(ChartModel) then) =
      _$ChartModelCopyWithImpl<$Res, ChartModel>;
  @useResult
  $Res call({String? chartId, String? unit, ChartPointModel? points});
}

/// @nodoc
class _$ChartModelCopyWithImpl<$Res, $Val extends ChartModel>
    implements $ChartModelCopyWith<$Res> {
  _$ChartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChartModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chartId = freezed,
    Object? unit = freezed,
    Object? points = freezed,
  }) {
    return _then(_value.copyWith(
      chartId: freezed == chartId
          ? _value.chartId
          : chartId // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as ChartPointModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChartModelImplCopyWith<$Res>
    implements $ChartModelCopyWith<$Res> {
  factory _$$ChartModelImplCopyWith(
          _$ChartModelImpl value, $Res Function(_$ChartModelImpl) then) =
      __$$ChartModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? chartId, String? unit, ChartPointModel? points});
}

/// @nodoc
class __$$ChartModelImplCopyWithImpl<$Res>
    extends _$ChartModelCopyWithImpl<$Res, _$ChartModelImpl>
    implements _$$ChartModelImplCopyWith<$Res> {
  __$$ChartModelImplCopyWithImpl(
      _$ChartModelImpl _value, $Res Function(_$ChartModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChartModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chartId = freezed,
    Object? unit = freezed,
    Object? points = freezed,
  }) {
    return _then(_$ChartModelImpl(
      chartId: freezed == chartId
          ? _value.chartId
          : chartId // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as ChartPointModel?,
    ));
  }
}

/// @nodoc

class _$ChartModelImpl extends _ChartModel {
  const _$ChartModelImpl({this.chartId, this.unit, this.points}) : super._();

  @override
  final String? chartId;
  @override
  final String? unit;
  @override
  final ChartPointModel? points;

  @override
  String toString() {
    return 'ChartModel(chartId: $chartId, unit: $unit, points: $points)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartModelImpl &&
            (identical(other.chartId, chartId) || other.chartId == chartId) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.points, points) || other.points == points));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chartId, unit, points);

  /// Create a copy of ChartModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChartModelImplCopyWith<_$ChartModelImpl> get copyWith =>
      __$$ChartModelImplCopyWithImpl<_$ChartModelImpl>(this, _$identity);
}

abstract class _ChartModel extends ChartModel {
  const factory _ChartModel(
      {final String? chartId,
      final String? unit,
      final ChartPointModel? points}) = _$ChartModelImpl;
  const _ChartModel._() : super._();

  @override
  String? get chartId;
  @override
  String? get unit;
  @override
  ChartPointModel? get points;

  /// Create a copy of ChartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChartModelImplCopyWith<_$ChartModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
