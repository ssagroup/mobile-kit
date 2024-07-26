// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bot_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BotListState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<BotInfo> get bots => throw _privateConstructorUsedError;
  int get notificationBadge => throw _privateConstructorUsedError;
  StatisticsPeriod get periodFilter => throw _privateConstructorUsedError;
  StaticStatisticsInfo? get staticStatistic =>
      throw _privateConstructorUsedError;
  DynamicStatisticsInfo? get dynamicStatistic =>
      throw _privateConstructorUsedError;
  StyleInfo? get styleInfo => throw _privateConstructorUsedError;
  AuthStatus get authApiStatus => throw _privateConstructorUsedError;
  bool get trigger => throw _privateConstructorUsedError;
  bool get isStopActive => throw _privateConstructorUsedError;
  int get activeBotCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BotListStateCopyWith<BotListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotListStateCopyWith<$Res> {
  factory $BotListStateCopyWith(
          BotListState value, $Res Function(BotListState) then) =
      _$BotListStateCopyWithImpl<$Res, BotListState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<BotInfo> bots,
      int notificationBadge,
      StatisticsPeriod periodFilter,
      StaticStatisticsInfo? staticStatistic,
      DynamicStatisticsInfo? dynamicStatistic,
      StyleInfo? styleInfo,
      AuthStatus authApiStatus,
      bool trigger,
      bool isStopActive,
      int activeBotCount});

  $StaticStatisticsInfoCopyWith<$Res>? get staticStatistic;
  $DynamicStatisticsInfoCopyWith<$Res>? get dynamicStatistic;
  $StyleInfoCopyWith<$Res>? get styleInfo;
  $AuthStatusCopyWith<$Res> get authApiStatus;
}

/// @nodoc
class _$BotListStateCopyWithImpl<$Res, $Val extends BotListState>
    implements $BotListStateCopyWith<$Res> {
  _$BotListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? bots = null,
    Object? notificationBadge = null,
    Object? periodFilter = null,
    Object? staticStatistic = freezed,
    Object? dynamicStatistic = freezed,
    Object? styleInfo = freezed,
    Object? authApiStatus = null,
    Object? trigger = null,
    Object? isStopActive = null,
    Object? activeBotCount = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      bots: null == bots
          ? _value.bots
          : bots // ignore: cast_nullable_to_non_nullable
              as List<BotInfo>,
      notificationBadge: null == notificationBadge
          ? _value.notificationBadge
          : notificationBadge // ignore: cast_nullable_to_non_nullable
              as int,
      periodFilter: null == periodFilter
          ? _value.periodFilter
          : periodFilter // ignore: cast_nullable_to_non_nullable
              as StatisticsPeriod,
      staticStatistic: freezed == staticStatistic
          ? _value.staticStatistic
          : staticStatistic // ignore: cast_nullable_to_non_nullable
              as StaticStatisticsInfo?,
      dynamicStatistic: freezed == dynamicStatistic
          ? _value.dynamicStatistic
          : dynamicStatistic // ignore: cast_nullable_to_non_nullable
              as DynamicStatisticsInfo?,
      styleInfo: freezed == styleInfo
          ? _value.styleInfo
          : styleInfo // ignore: cast_nullable_to_non_nullable
              as StyleInfo?,
      authApiStatus: null == authApiStatus
          ? _value.authApiStatus
          : authApiStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      trigger: null == trigger
          ? _value.trigger
          : trigger // ignore: cast_nullable_to_non_nullable
              as bool,
      isStopActive: null == isStopActive
          ? _value.isStopActive
          : isStopActive // ignore: cast_nullable_to_non_nullable
              as bool,
      activeBotCount: null == activeBotCount
          ? _value.activeBotCount
          : activeBotCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StaticStatisticsInfoCopyWith<$Res>? get staticStatistic {
    if (_value.staticStatistic == null) {
      return null;
    }

    return $StaticStatisticsInfoCopyWith<$Res>(_value.staticStatistic!,
        (value) {
      return _then(_value.copyWith(staticStatistic: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DynamicStatisticsInfoCopyWith<$Res>? get dynamicStatistic {
    if (_value.dynamicStatistic == null) {
      return null;
    }

    return $DynamicStatisticsInfoCopyWith<$Res>(_value.dynamicStatistic!,
        (value) {
      return _then(_value.copyWith(dynamicStatistic: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StyleInfoCopyWith<$Res>? get styleInfo {
    if (_value.styleInfo == null) {
      return null;
    }

    return $StyleInfoCopyWith<$Res>(_value.styleInfo!, (value) {
      return _then(_value.copyWith(styleInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthStatusCopyWith<$Res> get authApiStatus {
    return $AuthStatusCopyWith<$Res>(_value.authApiStatus, (value) {
      return _then(_value.copyWith(authApiStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BotListStateImplCopyWith<$Res>
    implements $BotListStateCopyWith<$Res> {
  factory _$$BotListStateImplCopyWith(
          _$BotListStateImpl value, $Res Function(_$BotListStateImpl) then) =
      __$$BotListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<BotInfo> bots,
      int notificationBadge,
      StatisticsPeriod periodFilter,
      StaticStatisticsInfo? staticStatistic,
      DynamicStatisticsInfo? dynamicStatistic,
      StyleInfo? styleInfo,
      AuthStatus authApiStatus,
      bool trigger,
      bool isStopActive,
      int activeBotCount});

  @override
  $StaticStatisticsInfoCopyWith<$Res>? get staticStatistic;
  @override
  $DynamicStatisticsInfoCopyWith<$Res>? get dynamicStatistic;
  @override
  $StyleInfoCopyWith<$Res>? get styleInfo;
  @override
  $AuthStatusCopyWith<$Res> get authApiStatus;
}

/// @nodoc
class __$$BotListStateImplCopyWithImpl<$Res>
    extends _$BotListStateCopyWithImpl<$Res, _$BotListStateImpl>
    implements _$$BotListStateImplCopyWith<$Res> {
  __$$BotListStateImplCopyWithImpl(
      _$BotListStateImpl _value, $Res Function(_$BotListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? bots = null,
    Object? notificationBadge = null,
    Object? periodFilter = null,
    Object? staticStatistic = freezed,
    Object? dynamicStatistic = freezed,
    Object? styleInfo = freezed,
    Object? authApiStatus = null,
    Object? trigger = null,
    Object? isStopActive = null,
    Object? activeBotCount = null,
  }) {
    return _then(_$BotListStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      bots: null == bots
          ? _value._bots
          : bots // ignore: cast_nullable_to_non_nullable
              as List<BotInfo>,
      notificationBadge: null == notificationBadge
          ? _value.notificationBadge
          : notificationBadge // ignore: cast_nullable_to_non_nullable
              as int,
      periodFilter: null == periodFilter
          ? _value.periodFilter
          : periodFilter // ignore: cast_nullable_to_non_nullable
              as StatisticsPeriod,
      staticStatistic: freezed == staticStatistic
          ? _value.staticStatistic
          : staticStatistic // ignore: cast_nullable_to_non_nullable
              as StaticStatisticsInfo?,
      dynamicStatistic: freezed == dynamicStatistic
          ? _value.dynamicStatistic
          : dynamicStatistic // ignore: cast_nullable_to_non_nullable
              as DynamicStatisticsInfo?,
      styleInfo: freezed == styleInfo
          ? _value.styleInfo
          : styleInfo // ignore: cast_nullable_to_non_nullable
              as StyleInfo?,
      authApiStatus: null == authApiStatus
          ? _value.authApiStatus
          : authApiStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      trigger: null == trigger
          ? _value.trigger
          : trigger // ignore: cast_nullable_to_non_nullable
              as bool,
      isStopActive: null == isStopActive
          ? _value.isStopActive
          : isStopActive // ignore: cast_nullable_to_non_nullable
              as bool,
      activeBotCount: null == activeBotCount
          ? _value.activeBotCount
          : activeBotCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BotListStateImpl implements _BotListState {
  const _$BotListStateImpl(
      {required this.isLoading,
      required final List<BotInfo> bots,
      required this.notificationBadge,
      required this.periodFilter,
      this.staticStatistic,
      this.dynamicStatistic,
      this.styleInfo,
      required this.authApiStatus,
      required this.trigger,
      required this.isStopActive,
      required this.activeBotCount})
      : _bots = bots;

  @override
  final bool isLoading;
  final List<BotInfo> _bots;
  @override
  List<BotInfo> get bots {
    if (_bots is EqualUnmodifiableListView) return _bots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bots);
  }

  @override
  final int notificationBadge;
  @override
  final StatisticsPeriod periodFilter;
  @override
  final StaticStatisticsInfo? staticStatistic;
  @override
  final DynamicStatisticsInfo? dynamicStatistic;
  @override
  final StyleInfo? styleInfo;
  @override
  final AuthStatus authApiStatus;
  @override
  final bool trigger;
  @override
  final bool isStopActive;
  @override
  final int activeBotCount;

  @override
  String toString() {
    return 'BotListState(isLoading: $isLoading, bots: $bots, notificationBadge: $notificationBadge, periodFilter: $periodFilter, staticStatistic: $staticStatistic, dynamicStatistic: $dynamicStatistic, styleInfo: $styleInfo, authApiStatus: $authApiStatus, trigger: $trigger, isStopActive: $isStopActive, activeBotCount: $activeBotCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BotListStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._bots, _bots) &&
            (identical(other.notificationBadge, notificationBadge) ||
                other.notificationBadge == notificationBadge) &&
            (identical(other.periodFilter, periodFilter) ||
                other.periodFilter == periodFilter) &&
            (identical(other.staticStatistic, staticStatistic) ||
                other.staticStatistic == staticStatistic) &&
            (identical(other.dynamicStatistic, dynamicStatistic) ||
                other.dynamicStatistic == dynamicStatistic) &&
            (identical(other.styleInfo, styleInfo) ||
                other.styleInfo == styleInfo) &&
            (identical(other.authApiStatus, authApiStatus) ||
                other.authApiStatus == authApiStatus) &&
            (identical(other.trigger, trigger) || other.trigger == trigger) &&
            (identical(other.isStopActive, isStopActive) ||
                other.isStopActive == isStopActive) &&
            (identical(other.activeBotCount, activeBotCount) ||
                other.activeBotCount == activeBotCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_bots),
      notificationBadge,
      periodFilter,
      staticStatistic,
      dynamicStatistic,
      styleInfo,
      authApiStatus,
      trigger,
      isStopActive,
      activeBotCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BotListStateImplCopyWith<_$BotListStateImpl> get copyWith =>
      __$$BotListStateImplCopyWithImpl<_$BotListStateImpl>(this, _$identity);
}

abstract class _BotListState implements BotListState {
  const factory _BotListState(
      {required final bool isLoading,
      required final List<BotInfo> bots,
      required final int notificationBadge,
      required final StatisticsPeriod periodFilter,
      final StaticStatisticsInfo? staticStatistic,
      final DynamicStatisticsInfo? dynamicStatistic,
      final StyleInfo? styleInfo,
      required final AuthStatus authApiStatus,
      required final bool trigger,
      required final bool isStopActive,
      required final int activeBotCount}) = _$BotListStateImpl;

  @override
  bool get isLoading;
  @override
  List<BotInfo> get bots;
  @override
  int get notificationBadge;
  @override
  StatisticsPeriod get periodFilter;
  @override
  StaticStatisticsInfo? get staticStatistic;
  @override
  DynamicStatisticsInfo? get dynamicStatistic;
  @override
  StyleInfo? get styleInfo;
  @override
  AuthStatus get authApiStatus;
  @override
  bool get trigger;
  @override
  bool get isStopActive;
  @override
  int get activeBotCount;
  @override
  @JsonKey(ignore: true)
  _$$BotListStateImplCopyWith<_$BotListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
