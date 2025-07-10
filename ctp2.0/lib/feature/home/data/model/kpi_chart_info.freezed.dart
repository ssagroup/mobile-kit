// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kpi_chart_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KpiChartInfo _$KpiChartInfoFromJson(Map<String, dynamic> json) {
  return _KpiChartInfo.fromJson(json);
}

/// @nodoc
mixin _$KpiChartInfo {
  double get pnl => throw _privateConstructorUsedError;
  double get pnlInvestment => throw _privateConstructorUsedError;
  double get pnlTotal => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Serializes this KpiChartInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KpiChartInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KpiChartInfoCopyWith<KpiChartInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KpiChartInfoCopyWith<$Res> {
  factory $KpiChartInfoCopyWith(
          KpiChartInfo value, $Res Function(KpiChartInfo) then) =
      _$KpiChartInfoCopyWithImpl<$Res, KpiChartInfo>;
  @useResult
  $Res call(
      {double pnl, double pnlInvestment, double pnlTotal, DateTime timestamp});
}

/// @nodoc
class _$KpiChartInfoCopyWithImpl<$Res, $Val extends KpiChartInfo>
    implements $KpiChartInfoCopyWith<$Res> {
  _$KpiChartInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KpiChartInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pnl = null,
    Object? pnlInvestment = null,
    Object? pnlTotal = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      pnl: null == pnl
          ? _value.pnl
          : pnl // ignore: cast_nullable_to_non_nullable
              as double,
      pnlInvestment: null == pnlInvestment
          ? _value.pnlInvestment
          : pnlInvestment // ignore: cast_nullable_to_non_nullable
              as double,
      pnlTotal: null == pnlTotal
          ? _value.pnlTotal
          : pnlTotal // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KpiChartInfoImplCopyWith<$Res>
    implements $KpiChartInfoCopyWith<$Res> {
  factory _$$KpiChartInfoImplCopyWith(
          _$KpiChartInfoImpl value, $Res Function(_$KpiChartInfoImpl) then) =
      __$$KpiChartInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double pnl, double pnlInvestment, double pnlTotal, DateTime timestamp});
}

/// @nodoc
class __$$KpiChartInfoImplCopyWithImpl<$Res>
    extends _$KpiChartInfoCopyWithImpl<$Res, _$KpiChartInfoImpl>
    implements _$$KpiChartInfoImplCopyWith<$Res> {
  __$$KpiChartInfoImplCopyWithImpl(
      _$KpiChartInfoImpl _value, $Res Function(_$KpiChartInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of KpiChartInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pnl = null,
    Object? pnlInvestment = null,
    Object? pnlTotal = null,
    Object? timestamp = null,
  }) {
    return _then(_$KpiChartInfoImpl(
      pnl: null == pnl
          ? _value.pnl
          : pnl // ignore: cast_nullable_to_non_nullable
              as double,
      pnlInvestment: null == pnlInvestment
          ? _value.pnlInvestment
          : pnlInvestment // ignore: cast_nullable_to_non_nullable
              as double,
      pnlTotal: null == pnlTotal
          ? _value.pnlTotal
          : pnlTotal // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KpiChartInfoImpl implements _KpiChartInfo {
  const _$KpiChartInfoImpl(
      {required this.pnl,
      required this.pnlInvestment,
      required this.pnlTotal,
      required this.timestamp});

  factory _$KpiChartInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$KpiChartInfoImplFromJson(json);

  @override
  final double pnl;
  @override
  final double pnlInvestment;
  @override
  final double pnlTotal;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'KpiChartInfo(pnl: $pnl, pnlInvestment: $pnlInvestment, pnlTotal: $pnlTotal, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KpiChartInfoImpl &&
            (identical(other.pnl, pnl) || other.pnl == pnl) &&
            (identical(other.pnlInvestment, pnlInvestment) ||
                other.pnlInvestment == pnlInvestment) &&
            (identical(other.pnlTotal, pnlTotal) ||
                other.pnlTotal == pnlTotal) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, pnl, pnlInvestment, pnlTotal, timestamp);

  /// Create a copy of KpiChartInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KpiChartInfoImplCopyWith<_$KpiChartInfoImpl> get copyWith =>
      __$$KpiChartInfoImplCopyWithImpl<_$KpiChartInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KpiChartInfoImplToJson(
      this,
    );
  }
}

abstract class _KpiChartInfo implements KpiChartInfo {
  const factory _KpiChartInfo(
      {required final double pnl,
      required final double pnlInvestment,
      required final double pnlTotal,
      required final DateTime timestamp}) = _$KpiChartInfoImpl;

  factory _KpiChartInfo.fromJson(Map<String, dynamic> json) =
      _$KpiChartInfoImpl.fromJson;

  @override
  double get pnl;
  @override
  double get pnlInvestment;
  @override
  double get pnlTotal;
  @override
  DateTime get timestamp;

  /// Create a copy of KpiChartInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KpiChartInfoImplCopyWith<_$KpiChartInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
