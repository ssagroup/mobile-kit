// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChartState {
  bool get isLoading => throw _privateConstructorUsedError;
  ApiStatus get apiStatus => throw _privateConstructorUsedError;
  List<double>? get x => throw _privateConstructorUsedError;
  List<double>? get y => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;

  /// Create a copy of ChartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChartStateCopyWith<ChartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartStateCopyWith<$Res> {
  factory $ChartStateCopyWith(
          ChartState value, $Res Function(ChartState) then) =
      _$ChartStateCopyWithImpl<$Res, ChartState>;
  @useResult
  $Res call(
      {bool isLoading,
      ApiStatus apiStatus,
      List<double>? x,
      List<double>? y,
      String? unit});
}

/// @nodoc
class _$ChartStateCopyWithImpl<$Res, $Val extends ChartState>
    implements $ChartStateCopyWith<$Res> {
  _$ChartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? apiStatus = null,
    Object? x = freezed,
    Object? y = freezed,
    Object? unit = freezed,
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
      x: freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      y: freezed == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChartStateImplCopyWith<$Res>
    implements $ChartStateCopyWith<$Res> {
  factory _$$ChartStateImplCopyWith(
          _$ChartStateImpl value, $Res Function(_$ChartStateImpl) then) =
      __$$ChartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      ApiStatus apiStatus,
      List<double>? x,
      List<double>? y,
      String? unit});
}

/// @nodoc
class __$$ChartStateImplCopyWithImpl<$Res>
    extends _$ChartStateCopyWithImpl<$Res, _$ChartStateImpl>
    implements _$$ChartStateImplCopyWith<$Res> {
  __$$ChartStateImplCopyWithImpl(
      _$ChartStateImpl _value, $Res Function(_$ChartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? apiStatus = null,
    Object? x = freezed,
    Object? y = freezed,
    Object? unit = freezed,
  }) {
    return _then(_$ChartStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      apiStatus: null == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      x: freezed == x
          ? _value._x
          : x // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      y: freezed == y
          ? _value._y
          : y // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChartStateImpl implements _ChartState {
  const _$ChartStateImpl(
      {required this.isLoading,
      required this.apiStatus,
      required final List<double>? x,
      required final List<double>? y,
      required this.unit})
      : _x = x,
        _y = y;

  @override
  final bool isLoading;
  @override
  final ApiStatus apiStatus;
  final List<double>? _x;
  @override
  List<double>? get x {
    final value = _x;
    if (value == null) return null;
    if (_x is EqualUnmodifiableListView) return _x;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _y;
  @override
  List<double>? get y {
    final value = _y;
    if (value == null) return null;
    if (_y is EqualUnmodifiableListView) return _y;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? unit;

  @override
  String toString() {
    return 'ChartState(isLoading: $isLoading, apiStatus: $apiStatus, x: $x, y: $y, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.apiStatus, apiStatus) ||
                other.apiStatus == apiStatus) &&
            const DeepCollectionEquality().equals(other._x, _x) &&
            const DeepCollectionEquality().equals(other._y, _y) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      apiStatus,
      const DeepCollectionEquality().hash(_x),
      const DeepCollectionEquality().hash(_y),
      unit);

  /// Create a copy of ChartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChartStateImplCopyWith<_$ChartStateImpl> get copyWith =>
      __$$ChartStateImplCopyWithImpl<_$ChartStateImpl>(this, _$identity);
}

abstract class _ChartState implements ChartState {
  const factory _ChartState(
      {required final bool isLoading,
      required final ApiStatus apiStatus,
      required final List<double>? x,
      required final List<double>? y,
      required final String? unit}) = _$ChartStateImpl;

  @override
  bool get isLoading;
  @override
  ApiStatus get apiStatus;
  @override
  List<double>? get x;
  @override
  List<double>? get y;
  @override
  String? get unit;

  /// Create a copy of ChartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChartStateImplCopyWith<_$ChartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
