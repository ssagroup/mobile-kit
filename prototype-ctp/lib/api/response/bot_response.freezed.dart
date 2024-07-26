// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bot_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BotInfo _$BotInfoFromJson(Map<String, dynamic> json) {
  return _BotInfo.fromJson(json);
}

/// @nodoc
mixin _$BotInfo {
  String get name => throw _privateConstructorUsedError;
  String get platform => throw _privateConstructorUsedError;
  int get tradingAccountId => throw _privateConstructorUsedError;
  String get strategy => throw _privateConstructorUsedError;
  String get instrument => throw _privateConstructorUsedError;
  bool get isRunning => throw _privateConstructorUsedError;
  String? get statusAlias => throw _privateConstructorUsedError;
  String get statusColor => throw _privateConstructorUsedError;
  MobileStatistics get mobileStatistics => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get lastOrderDuration => throw _privateConstructorUsedError;
  bool get isActionsDisabled => throw _privateConstructorUsedError;
  String get lastRunDuration => throw _privateConstructorUsedError;
  String get formattedOrderSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BotInfoCopyWith<BotInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotInfoCopyWith<$Res> {
  factory $BotInfoCopyWith(BotInfo value, $Res Function(BotInfo) then) =
      _$BotInfoCopyWithImpl<$Res, BotInfo>;
  @useResult
  $Res call(
      {String name,
      String platform,
      int tradingAccountId,
      String strategy,
      String instrument,
      bool isRunning,
      String? statusAlias,
      String statusColor,
      MobileStatistics mobileStatistics,
      int id,
      String lastOrderDuration,
      bool isActionsDisabled,
      String lastRunDuration,
      String formattedOrderSize});

  $MobileStatisticsCopyWith<$Res> get mobileStatistics;
}

/// @nodoc
class _$BotInfoCopyWithImpl<$Res, $Val extends BotInfo>
    implements $BotInfoCopyWith<$Res> {
  _$BotInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? platform = null,
    Object? tradingAccountId = null,
    Object? strategy = null,
    Object? instrument = null,
    Object? isRunning = null,
    Object? statusAlias = freezed,
    Object? statusColor = null,
    Object? mobileStatistics = null,
    Object? id = null,
    Object? lastOrderDuration = null,
    Object? isActionsDisabled = null,
    Object? lastRunDuration = null,
    Object? formattedOrderSize = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      tradingAccountId: null == tradingAccountId
          ? _value.tradingAccountId
          : tradingAccountId // ignore: cast_nullable_to_non_nullable
              as int,
      strategy: null == strategy
          ? _value.strategy
          : strategy // ignore: cast_nullable_to_non_nullable
              as String,
      instrument: null == instrument
          ? _value.instrument
          : instrument // ignore: cast_nullable_to_non_nullable
              as String,
      isRunning: null == isRunning
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      statusAlias: freezed == statusAlias
          ? _value.statusAlias
          : statusAlias // ignore: cast_nullable_to_non_nullable
              as String?,
      statusColor: null == statusColor
          ? _value.statusColor
          : statusColor // ignore: cast_nullable_to_non_nullable
              as String,
      mobileStatistics: null == mobileStatistics
          ? _value.mobileStatistics
          : mobileStatistics // ignore: cast_nullable_to_non_nullable
              as MobileStatistics,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      lastOrderDuration: null == lastOrderDuration
          ? _value.lastOrderDuration
          : lastOrderDuration // ignore: cast_nullable_to_non_nullable
              as String,
      isActionsDisabled: null == isActionsDisabled
          ? _value.isActionsDisabled
          : isActionsDisabled // ignore: cast_nullable_to_non_nullable
              as bool,
      lastRunDuration: null == lastRunDuration
          ? _value.lastRunDuration
          : lastRunDuration // ignore: cast_nullable_to_non_nullable
              as String,
      formattedOrderSize: null == formattedOrderSize
          ? _value.formattedOrderSize
          : formattedOrderSize // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MobileStatisticsCopyWith<$Res> get mobileStatistics {
    return $MobileStatisticsCopyWith<$Res>(_value.mobileStatistics, (value) {
      return _then(_value.copyWith(mobileStatistics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BotInfoImplCopyWith<$Res> implements $BotInfoCopyWith<$Res> {
  factory _$$BotInfoImplCopyWith(
          _$BotInfoImpl value, $Res Function(_$BotInfoImpl) then) =
      __$$BotInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String platform,
      int tradingAccountId,
      String strategy,
      String instrument,
      bool isRunning,
      String? statusAlias,
      String statusColor,
      MobileStatistics mobileStatistics,
      int id,
      String lastOrderDuration,
      bool isActionsDisabled,
      String lastRunDuration,
      String formattedOrderSize});

  @override
  $MobileStatisticsCopyWith<$Res> get mobileStatistics;
}

/// @nodoc
class __$$BotInfoImplCopyWithImpl<$Res>
    extends _$BotInfoCopyWithImpl<$Res, _$BotInfoImpl>
    implements _$$BotInfoImplCopyWith<$Res> {
  __$$BotInfoImplCopyWithImpl(
      _$BotInfoImpl _value, $Res Function(_$BotInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? platform = null,
    Object? tradingAccountId = null,
    Object? strategy = null,
    Object? instrument = null,
    Object? isRunning = null,
    Object? statusAlias = freezed,
    Object? statusColor = null,
    Object? mobileStatistics = null,
    Object? id = null,
    Object? lastOrderDuration = null,
    Object? isActionsDisabled = null,
    Object? lastRunDuration = null,
    Object? formattedOrderSize = null,
  }) {
    return _then(_$BotInfoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      tradingAccountId: null == tradingAccountId
          ? _value.tradingAccountId
          : tradingAccountId // ignore: cast_nullable_to_non_nullable
              as int,
      strategy: null == strategy
          ? _value.strategy
          : strategy // ignore: cast_nullable_to_non_nullable
              as String,
      instrument: null == instrument
          ? _value.instrument
          : instrument // ignore: cast_nullable_to_non_nullable
              as String,
      isRunning: null == isRunning
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      statusAlias: freezed == statusAlias
          ? _value.statusAlias
          : statusAlias // ignore: cast_nullable_to_non_nullable
              as String?,
      statusColor: null == statusColor
          ? _value.statusColor
          : statusColor // ignore: cast_nullable_to_non_nullable
              as String,
      mobileStatistics: null == mobileStatistics
          ? _value.mobileStatistics
          : mobileStatistics // ignore: cast_nullable_to_non_nullable
              as MobileStatistics,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      lastOrderDuration: null == lastOrderDuration
          ? _value.lastOrderDuration
          : lastOrderDuration // ignore: cast_nullable_to_non_nullable
              as String,
      isActionsDisabled: null == isActionsDisabled
          ? _value.isActionsDisabled
          : isActionsDisabled // ignore: cast_nullable_to_non_nullable
              as bool,
      lastRunDuration: null == lastRunDuration
          ? _value.lastRunDuration
          : lastRunDuration // ignore: cast_nullable_to_non_nullable
              as String,
      formattedOrderSize: null == formattedOrderSize
          ? _value.formattedOrderSize
          : formattedOrderSize // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BotInfoImpl extends _BotInfo {
  const _$BotInfoImpl(
      {required this.name,
      required this.platform,
      required this.tradingAccountId,
      required this.strategy,
      required this.instrument,
      required this.isRunning,
      required this.statusAlias,
      required this.statusColor,
      required this.mobileStatistics,
      required this.id,
      this.lastOrderDuration = '-',
      required this.isActionsDisabled,
      this.lastRunDuration = '-',
      required this.formattedOrderSize})
      : super._();

  factory _$BotInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BotInfoImplFromJson(json);

  @override
  final String name;
  @override
  final String platform;
  @override
  final int tradingAccountId;
  @override
  final String strategy;
  @override
  final String instrument;
  @override
  final bool isRunning;
  @override
  final String? statusAlias;
  @override
  final String statusColor;
  @override
  final MobileStatistics mobileStatistics;
  @override
  final int id;
  @override
  @JsonKey()
  final String lastOrderDuration;
  @override
  final bool isActionsDisabled;
  @override
  @JsonKey()
  final String lastRunDuration;
  @override
  final String formattedOrderSize;

  @override
  String toString() {
    return 'BotInfo(name: $name, platform: $platform, tradingAccountId: $tradingAccountId, strategy: $strategy, instrument: $instrument, isRunning: $isRunning, statusAlias: $statusAlias, statusColor: $statusColor, mobileStatistics: $mobileStatistics, id: $id, lastOrderDuration: $lastOrderDuration, isActionsDisabled: $isActionsDisabled, lastRunDuration: $lastRunDuration, formattedOrderSize: $formattedOrderSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BotInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.tradingAccountId, tradingAccountId) ||
                other.tradingAccountId == tradingAccountId) &&
            (identical(other.strategy, strategy) ||
                other.strategy == strategy) &&
            (identical(other.instrument, instrument) ||
                other.instrument == instrument) &&
            (identical(other.isRunning, isRunning) ||
                other.isRunning == isRunning) &&
            (identical(other.statusAlias, statusAlias) ||
                other.statusAlias == statusAlias) &&
            (identical(other.statusColor, statusColor) ||
                other.statusColor == statusColor) &&
            (identical(other.mobileStatistics, mobileStatistics) ||
                other.mobileStatistics == mobileStatistics) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lastOrderDuration, lastOrderDuration) ||
                other.lastOrderDuration == lastOrderDuration) &&
            (identical(other.isActionsDisabled, isActionsDisabled) ||
                other.isActionsDisabled == isActionsDisabled) &&
            (identical(other.lastRunDuration, lastRunDuration) ||
                other.lastRunDuration == lastRunDuration) &&
            (identical(other.formattedOrderSize, formattedOrderSize) ||
                other.formattedOrderSize == formattedOrderSize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      platform,
      tradingAccountId,
      strategy,
      instrument,
      isRunning,
      statusAlias,
      statusColor,
      mobileStatistics,
      id,
      lastOrderDuration,
      isActionsDisabled,
      lastRunDuration,
      formattedOrderSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BotInfoImplCopyWith<_$BotInfoImpl> get copyWith =>
      __$$BotInfoImplCopyWithImpl<_$BotInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BotInfoImplToJson(
      this,
    );
  }
}

abstract class _BotInfo extends BotInfo {
  const factory _BotInfo(
      {required final String name,
      required final String platform,
      required final int tradingAccountId,
      required final String strategy,
      required final String instrument,
      required final bool isRunning,
      required final String? statusAlias,
      required final String statusColor,
      required final MobileStatistics mobileStatistics,
      required final int id,
      final String lastOrderDuration,
      required final bool isActionsDisabled,
      final String lastRunDuration,
      required final String formattedOrderSize}) = _$BotInfoImpl;
  const _BotInfo._() : super._();

  factory _BotInfo.fromJson(Map<String, dynamic> json) = _$BotInfoImpl.fromJson;

  @override
  String get name;
  @override
  String get platform;
  @override
  int get tradingAccountId;
  @override
  String get strategy;
  @override
  String get instrument;
  @override
  bool get isRunning;
  @override
  String? get statusAlias;
  @override
  String get statusColor;
  @override
  MobileStatistics get mobileStatistics;
  @override
  int get id;
  @override
  String get lastOrderDuration;
  @override
  bool get isActionsDisabled;
  @override
  String get lastRunDuration;
  @override
  String get formattedOrderSize;
  @override
  @JsonKey(ignore: true)
  _$$BotInfoImplCopyWith<_$BotInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MobileStatistics _$MobileStatisticsFromJson(Map<String, dynamic> json) {
  return _MobileStatistics.fromJson(json);
}

/// @nodoc
mixin _$MobileStatistics {
  String get roi => throw _privateConstructorUsedError;
  String get pnl => throw _privateConstructorUsedError;
  String get orders => throw _privateConstructorUsedError;
  String? get turnover => throw _privateConstructorUsedError;
  String get hourlyPnl => throw _privateConstructorUsedError;
  bool? get pnlUp => throw _privateConstructorUsedError;
  List<String> get available => throw _privateConstructorUsedError;
  List<String> get currentlyInUse => throw _privateConstructorUsedError;
  List<String> get maxInUse => throw _privateConstructorUsedError;
  bool get showNoControl => throw _privateConstructorUsedError;
  List<String> get noControlInstantLoss => throw _privateConstructorUsedError;
  List<String> get maxInNoControl => throw _privateConstructorUsedError;
  List<String> get noControlOrders => throw _privateConstructorUsedError;
  List<String> get noControls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MobileStatisticsCopyWith<MobileStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobileStatisticsCopyWith<$Res> {
  factory $MobileStatisticsCopyWith(
          MobileStatistics value, $Res Function(MobileStatistics) then) =
      _$MobileStatisticsCopyWithImpl<$Res, MobileStatistics>;
  @useResult
  $Res call(
      {String roi,
      String pnl,
      String orders,
      String? turnover,
      String hourlyPnl,
      bool? pnlUp,
      List<String> available,
      List<String> currentlyInUse,
      List<String> maxInUse,
      bool showNoControl,
      List<String> noControlInstantLoss,
      List<String> maxInNoControl,
      List<String> noControlOrders,
      List<String> noControls});
}

/// @nodoc
class _$MobileStatisticsCopyWithImpl<$Res, $Val extends MobileStatistics>
    implements $MobileStatisticsCopyWith<$Res> {
  _$MobileStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roi = null,
    Object? pnl = null,
    Object? orders = null,
    Object? turnover = freezed,
    Object? hourlyPnl = null,
    Object? pnlUp = freezed,
    Object? available = null,
    Object? currentlyInUse = null,
    Object? maxInUse = null,
    Object? showNoControl = null,
    Object? noControlInstantLoss = null,
    Object? maxInNoControl = null,
    Object? noControlOrders = null,
    Object? noControls = null,
  }) {
    return _then(_value.copyWith(
      roi: null == roi
          ? _value.roi
          : roi // ignore: cast_nullable_to_non_nullable
              as String,
      pnl: null == pnl
          ? _value.pnl
          : pnl // ignore: cast_nullable_to_non_nullable
              as String,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as String,
      turnover: freezed == turnover
          ? _value.turnover
          : turnover // ignore: cast_nullable_to_non_nullable
              as String?,
      hourlyPnl: null == hourlyPnl
          ? _value.hourlyPnl
          : hourlyPnl // ignore: cast_nullable_to_non_nullable
              as String,
      pnlUp: freezed == pnlUp
          ? _value.pnlUp
          : pnlUp // ignore: cast_nullable_to_non_nullable
              as bool?,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentlyInUse: null == currentlyInUse
          ? _value.currentlyInUse
          : currentlyInUse // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maxInUse: null == maxInUse
          ? _value.maxInUse
          : maxInUse // ignore: cast_nullable_to_non_nullable
              as List<String>,
      showNoControl: null == showNoControl
          ? _value.showNoControl
          : showNoControl // ignore: cast_nullable_to_non_nullable
              as bool,
      noControlInstantLoss: null == noControlInstantLoss
          ? _value.noControlInstantLoss
          : noControlInstantLoss // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maxInNoControl: null == maxInNoControl
          ? _value.maxInNoControl
          : maxInNoControl // ignore: cast_nullable_to_non_nullable
              as List<String>,
      noControlOrders: null == noControlOrders
          ? _value.noControlOrders
          : noControlOrders // ignore: cast_nullable_to_non_nullable
              as List<String>,
      noControls: null == noControls
          ? _value.noControls
          : noControls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MobileStatisticsImplCopyWith<$Res>
    implements $MobileStatisticsCopyWith<$Res> {
  factory _$$MobileStatisticsImplCopyWith(_$MobileStatisticsImpl value,
          $Res Function(_$MobileStatisticsImpl) then) =
      __$$MobileStatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String roi,
      String pnl,
      String orders,
      String? turnover,
      String hourlyPnl,
      bool? pnlUp,
      List<String> available,
      List<String> currentlyInUse,
      List<String> maxInUse,
      bool showNoControl,
      List<String> noControlInstantLoss,
      List<String> maxInNoControl,
      List<String> noControlOrders,
      List<String> noControls});
}

/// @nodoc
class __$$MobileStatisticsImplCopyWithImpl<$Res>
    extends _$MobileStatisticsCopyWithImpl<$Res, _$MobileStatisticsImpl>
    implements _$$MobileStatisticsImplCopyWith<$Res> {
  __$$MobileStatisticsImplCopyWithImpl(_$MobileStatisticsImpl _value,
      $Res Function(_$MobileStatisticsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roi = null,
    Object? pnl = null,
    Object? orders = null,
    Object? turnover = freezed,
    Object? hourlyPnl = null,
    Object? pnlUp = freezed,
    Object? available = null,
    Object? currentlyInUse = null,
    Object? maxInUse = null,
    Object? showNoControl = null,
    Object? noControlInstantLoss = null,
    Object? maxInNoControl = null,
    Object? noControlOrders = null,
    Object? noControls = null,
  }) {
    return _then(_$MobileStatisticsImpl(
      roi: null == roi
          ? _value.roi
          : roi // ignore: cast_nullable_to_non_nullable
              as String,
      pnl: null == pnl
          ? _value.pnl
          : pnl // ignore: cast_nullable_to_non_nullable
              as String,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as String,
      turnover: freezed == turnover
          ? _value.turnover
          : turnover // ignore: cast_nullable_to_non_nullable
              as String?,
      hourlyPnl: null == hourlyPnl
          ? _value.hourlyPnl
          : hourlyPnl // ignore: cast_nullable_to_non_nullable
              as String,
      pnlUp: freezed == pnlUp
          ? _value.pnlUp
          : pnlUp // ignore: cast_nullable_to_non_nullable
              as bool?,
      available: null == available
          ? _value._available
          : available // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentlyInUse: null == currentlyInUse
          ? _value._currentlyInUse
          : currentlyInUse // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maxInUse: null == maxInUse
          ? _value._maxInUse
          : maxInUse // ignore: cast_nullable_to_non_nullable
              as List<String>,
      showNoControl: null == showNoControl
          ? _value.showNoControl
          : showNoControl // ignore: cast_nullable_to_non_nullable
              as bool,
      noControlInstantLoss: null == noControlInstantLoss
          ? _value._noControlInstantLoss
          : noControlInstantLoss // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maxInNoControl: null == maxInNoControl
          ? _value._maxInNoControl
          : maxInNoControl // ignore: cast_nullable_to_non_nullable
              as List<String>,
      noControlOrders: null == noControlOrders
          ? _value._noControlOrders
          : noControlOrders // ignore: cast_nullable_to_non_nullable
              as List<String>,
      noControls: null == noControls
          ? _value._noControls
          : noControls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MobileStatisticsImpl extends _MobileStatistics {
  const _$MobileStatisticsImpl(
      {required this.roi,
      required this.pnl,
      required this.orders,
      required this.turnover,
      required this.hourlyPnl,
      required this.pnlUp,
      required final List<String> available,
      required final List<String> currentlyInUse,
      required final List<String> maxInUse,
      required this.showNoControl,
      required final List<String> noControlInstantLoss,
      required final List<String> maxInNoControl,
      required final List<String> noControlOrders,
      required final List<String> noControls})
      : _available = available,
        _currentlyInUse = currentlyInUse,
        _maxInUse = maxInUse,
        _noControlInstantLoss = noControlInstantLoss,
        _maxInNoControl = maxInNoControl,
        _noControlOrders = noControlOrders,
        _noControls = noControls,
        super._();

  factory _$MobileStatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MobileStatisticsImplFromJson(json);

  @override
  final String roi;
  @override
  final String pnl;
  @override
  final String orders;
  @override
  final String? turnover;
  @override
  final String hourlyPnl;
  @override
  final bool? pnlUp;
  final List<String> _available;
  @override
  List<String> get available {
    if (_available is EqualUnmodifiableListView) return _available;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_available);
  }

  final List<String> _currentlyInUse;
  @override
  List<String> get currentlyInUse {
    if (_currentlyInUse is EqualUnmodifiableListView) return _currentlyInUse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentlyInUse);
  }

  final List<String> _maxInUse;
  @override
  List<String> get maxInUse {
    if (_maxInUse is EqualUnmodifiableListView) return _maxInUse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_maxInUse);
  }

  @override
  final bool showNoControl;
  final List<String> _noControlInstantLoss;
  @override
  List<String> get noControlInstantLoss {
    if (_noControlInstantLoss is EqualUnmodifiableListView)
      return _noControlInstantLoss;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_noControlInstantLoss);
  }

  final List<String> _maxInNoControl;
  @override
  List<String> get maxInNoControl {
    if (_maxInNoControl is EqualUnmodifiableListView) return _maxInNoControl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_maxInNoControl);
  }

  final List<String> _noControlOrders;
  @override
  List<String> get noControlOrders {
    if (_noControlOrders is EqualUnmodifiableListView) return _noControlOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_noControlOrders);
  }

  final List<String> _noControls;
  @override
  List<String> get noControls {
    if (_noControls is EqualUnmodifiableListView) return _noControls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_noControls);
  }

  @override
  String toString() {
    return 'MobileStatistics(roi: $roi, pnl: $pnl, orders: $orders, turnover: $turnover, hourlyPnl: $hourlyPnl, pnlUp: $pnlUp, available: $available, currentlyInUse: $currentlyInUse, maxInUse: $maxInUse, showNoControl: $showNoControl, noControlInstantLoss: $noControlInstantLoss, maxInNoControl: $maxInNoControl, noControlOrders: $noControlOrders, noControls: $noControls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobileStatisticsImpl &&
            (identical(other.roi, roi) || other.roi == roi) &&
            (identical(other.pnl, pnl) || other.pnl == pnl) &&
            (identical(other.orders, orders) || other.orders == orders) &&
            (identical(other.turnover, turnover) ||
                other.turnover == turnover) &&
            (identical(other.hourlyPnl, hourlyPnl) ||
                other.hourlyPnl == hourlyPnl) &&
            (identical(other.pnlUp, pnlUp) || other.pnlUp == pnlUp) &&
            const DeepCollectionEquality()
                .equals(other._available, _available) &&
            const DeepCollectionEquality()
                .equals(other._currentlyInUse, _currentlyInUse) &&
            const DeepCollectionEquality().equals(other._maxInUse, _maxInUse) &&
            (identical(other.showNoControl, showNoControl) ||
                other.showNoControl == showNoControl) &&
            const DeepCollectionEquality()
                .equals(other._noControlInstantLoss, _noControlInstantLoss) &&
            const DeepCollectionEquality()
                .equals(other._maxInNoControl, _maxInNoControl) &&
            const DeepCollectionEquality()
                .equals(other._noControlOrders, _noControlOrders) &&
            const DeepCollectionEquality()
                .equals(other._noControls, _noControls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      roi,
      pnl,
      orders,
      turnover,
      hourlyPnl,
      pnlUp,
      const DeepCollectionEquality().hash(_available),
      const DeepCollectionEquality().hash(_currentlyInUse),
      const DeepCollectionEquality().hash(_maxInUse),
      showNoControl,
      const DeepCollectionEquality().hash(_noControlInstantLoss),
      const DeepCollectionEquality().hash(_maxInNoControl),
      const DeepCollectionEquality().hash(_noControlOrders),
      const DeepCollectionEquality().hash(_noControls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MobileStatisticsImplCopyWith<_$MobileStatisticsImpl> get copyWith =>
      __$$MobileStatisticsImplCopyWithImpl<_$MobileStatisticsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MobileStatisticsImplToJson(
      this,
    );
  }
}

abstract class _MobileStatistics extends MobileStatistics {
  const factory _MobileStatistics(
      {required final String roi,
      required final String pnl,
      required final String orders,
      required final String? turnover,
      required final String hourlyPnl,
      required final bool? pnlUp,
      required final List<String> available,
      required final List<String> currentlyInUse,
      required final List<String> maxInUse,
      required final bool showNoControl,
      required final List<String> noControlInstantLoss,
      required final List<String> maxInNoControl,
      required final List<String> noControlOrders,
      required final List<String> noControls}) = _$MobileStatisticsImpl;
  const _MobileStatistics._() : super._();

  factory _MobileStatistics.fromJson(Map<String, dynamic> json) =
      _$MobileStatisticsImpl.fromJson;

  @override
  String get roi;
  @override
  String get pnl;
  @override
  String get orders;
  @override
  String? get turnover;
  @override
  String get hourlyPnl;
  @override
  bool? get pnlUp;
  @override
  List<String> get available;
  @override
  List<String> get currentlyInUse;
  @override
  List<String> get maxInUse;
  @override
  bool get showNoControl;
  @override
  List<String> get noControlInstantLoss;
  @override
  List<String> get maxInNoControl;
  @override
  List<String> get noControlOrders;
  @override
  List<String> get noControls;
  @override
  @JsonKey(ignore: true)
  _$$MobileStatisticsImplCopyWith<_$MobileStatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
