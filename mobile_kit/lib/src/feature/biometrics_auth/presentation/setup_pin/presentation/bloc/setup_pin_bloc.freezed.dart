// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setup_pin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SetupPinState {
  bool get isBioAvailable => throw _privateConstructorUsedError;

  /// Create a copy of SetupPinState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SetupPinStateCopyWith<SetupPinState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetupPinStateCopyWith<$Res> {
  factory $SetupPinStateCopyWith(
          SetupPinState value, $Res Function(SetupPinState) then) =
      _$SetupPinStateCopyWithImpl<$Res, SetupPinState>;
  @useResult
  $Res call({bool isBioAvailable});
}

/// @nodoc
class _$SetupPinStateCopyWithImpl<$Res, $Val extends SetupPinState>
    implements $SetupPinStateCopyWith<$Res> {
  _$SetupPinStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SetupPinState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBioAvailable = null,
  }) {
    return _then(_value.copyWith(
      isBioAvailable: null == isBioAvailable
          ? _value.isBioAvailable
          : isBioAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetupPinStateImplCopyWith<$Res>
    implements $SetupPinStateCopyWith<$Res> {
  factory _$$SetupPinStateImplCopyWith(
          _$SetupPinStateImpl value, $Res Function(_$SetupPinStateImpl) then) =
      __$$SetupPinStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isBioAvailable});
}

/// @nodoc
class __$$SetupPinStateImplCopyWithImpl<$Res>
    extends _$SetupPinStateCopyWithImpl<$Res, _$SetupPinStateImpl>
    implements _$$SetupPinStateImplCopyWith<$Res> {
  __$$SetupPinStateImplCopyWithImpl(
      _$SetupPinStateImpl _value, $Res Function(_$SetupPinStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetupPinState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBioAvailable = null,
  }) {
    return _then(_$SetupPinStateImpl(
      isBioAvailable: null == isBioAvailable
          ? _value.isBioAvailable
          : isBioAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetupPinStateImpl implements _SetupPinState {
  const _$SetupPinStateImpl({required this.isBioAvailable});

  @override
  final bool isBioAvailable;

  @override
  String toString() {
    return 'SetupPinState(isBioAvailable: $isBioAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetupPinStateImpl &&
            (identical(other.isBioAvailable, isBioAvailable) ||
                other.isBioAvailable == isBioAvailable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isBioAvailable);

  /// Create a copy of SetupPinState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetupPinStateImplCopyWith<_$SetupPinStateImpl> get copyWith =>
      __$$SetupPinStateImplCopyWithImpl<_$SetupPinStateImpl>(this, _$identity);
}

abstract class _SetupPinState implements SetupPinState {
  const factory _SetupPinState({required final bool isBioAvailable}) =
      _$SetupPinStateImpl;

  @override
  bool get isBioAvailable;

  /// Create a copy of SetupPinState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetupPinStateImplCopyWith<_$SetupPinStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
