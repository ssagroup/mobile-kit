// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationListState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<NotificationInfo> get info => throw _privateConstructorUsedError;
  AuthStatus get authApiStatus => throw _privateConstructorUsedError;
  bool get trigger => throw _privateConstructorUsedError;
  bool get isStopActive => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationListStateCopyWith<NotificationListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationListStateCopyWith<$Res> {
  factory $NotificationListStateCopyWith(NotificationListState value,
          $Res Function(NotificationListState) then) =
      _$NotificationListStateCopyWithImpl<$Res, NotificationListState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<NotificationInfo> info,
      AuthStatus authApiStatus,
      bool trigger,
      bool isStopActive});

  $AuthStatusCopyWith<$Res> get authApiStatus;
}

/// @nodoc
class _$NotificationListStateCopyWithImpl<$Res,
        $Val extends NotificationListState>
    implements $NotificationListStateCopyWith<$Res> {
  _$NotificationListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? info = null,
    Object? authApiStatus = null,
    Object? trigger = null,
    Object? isStopActive = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as List<NotificationInfo>,
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
    ) as $Val);
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
abstract class _$$NotificationListStateImplCopyWith<$Res>
    implements $NotificationListStateCopyWith<$Res> {
  factory _$$NotificationListStateImplCopyWith(
          _$NotificationListStateImpl value,
          $Res Function(_$NotificationListStateImpl) then) =
      __$$NotificationListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<NotificationInfo> info,
      AuthStatus authApiStatus,
      bool trigger,
      bool isStopActive});

  @override
  $AuthStatusCopyWith<$Res> get authApiStatus;
}

/// @nodoc
class __$$NotificationListStateImplCopyWithImpl<$Res>
    extends _$NotificationListStateCopyWithImpl<$Res,
        _$NotificationListStateImpl>
    implements _$$NotificationListStateImplCopyWith<$Res> {
  __$$NotificationListStateImplCopyWithImpl(_$NotificationListStateImpl _value,
      $Res Function(_$NotificationListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? info = null,
    Object? authApiStatus = null,
    Object? trigger = null,
    Object? isStopActive = null,
  }) {
    return _then(_$NotificationListStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      info: null == info
          ? _value._info
          : info // ignore: cast_nullable_to_non_nullable
              as List<NotificationInfo>,
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
    ));
  }
}

/// @nodoc

class _$NotificationListStateImpl implements _NotificationListState {
  const _$NotificationListStateImpl(
      {required this.isLoading,
      required final List<NotificationInfo> info,
      required this.authApiStatus,
      required this.trigger,
      required this.isStopActive})
      : _info = info;

  @override
  final bool isLoading;
  final List<NotificationInfo> _info;
  @override
  List<NotificationInfo> get info {
    if (_info is EqualUnmodifiableListView) return _info;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_info);
  }

  @override
  final AuthStatus authApiStatus;
  @override
  final bool trigger;
  @override
  final bool isStopActive;

  @override
  String toString() {
    return 'NotificationListState(isLoading: $isLoading, info: $info, authApiStatus: $authApiStatus, trigger: $trigger, isStopActive: $isStopActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationListStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._info, _info) &&
            (identical(other.authApiStatus, authApiStatus) ||
                other.authApiStatus == authApiStatus) &&
            (identical(other.trigger, trigger) || other.trigger == trigger) &&
            (identical(other.isStopActive, isStopActive) ||
                other.isStopActive == isStopActive));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_info),
      authApiStatus,
      trigger,
      isStopActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationListStateImplCopyWith<_$NotificationListStateImpl>
      get copyWith => __$$NotificationListStateImplCopyWithImpl<
          _$NotificationListStateImpl>(this, _$identity);
}

abstract class _NotificationListState implements NotificationListState {
  const factory _NotificationListState(
      {required final bool isLoading,
      required final List<NotificationInfo> info,
      required final AuthStatus authApiStatus,
      required final bool trigger,
      required final bool isStopActive}) = _$NotificationListStateImpl;

  @override
  bool get isLoading;
  @override
  List<NotificationInfo> get info;
  @override
  AuthStatus get authApiStatus;
  @override
  bool get trigger;
  @override
  bool get isStopActive;
  @override
  @JsonKey(ignore: true)
  _$$NotificationListStateImplCopyWith<_$NotificationListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
