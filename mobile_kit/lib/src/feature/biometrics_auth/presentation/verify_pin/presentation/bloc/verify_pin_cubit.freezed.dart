// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_pin_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VerifyPinState {
  bool get showError => throw _privateConstructorUsedError;
  bool get isBioEnabled => throw _privateConstructorUsedError;

  /// Create a copy of VerifyPinState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyPinStateCopyWith<VerifyPinState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyPinStateCopyWith<$Res> {
  factory $VerifyPinStateCopyWith(
          VerifyPinState value, $Res Function(VerifyPinState) then) =
      _$VerifyPinStateCopyWithImpl<$Res, VerifyPinState>;
  @useResult
  $Res call({bool showError, bool isBioEnabled});
}

/// @nodoc
class _$VerifyPinStateCopyWithImpl<$Res, $Val extends VerifyPinState>
    implements $VerifyPinStateCopyWith<$Res> {
  _$VerifyPinStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyPinState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showError = null,
    Object? isBioEnabled = null,
  }) {
    return _then(_value.copyWith(
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      isBioEnabled: null == isBioEnabled
          ? _value.isBioEnabled
          : isBioEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyPinStateImplCopyWith<$Res>
    implements $VerifyPinStateCopyWith<$Res> {
  factory _$$VerifyPinStateImplCopyWith(_$VerifyPinStateImpl value,
          $Res Function(_$VerifyPinStateImpl) then) =
      __$$VerifyPinStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool showError, bool isBioEnabled});
}

/// @nodoc
class __$$VerifyPinStateImplCopyWithImpl<$Res>
    extends _$VerifyPinStateCopyWithImpl<$Res, _$VerifyPinStateImpl>
    implements _$$VerifyPinStateImplCopyWith<$Res> {
  __$$VerifyPinStateImplCopyWithImpl(
      _$VerifyPinStateImpl _value, $Res Function(_$VerifyPinStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifyPinState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showError = null,
    Object? isBioEnabled = null,
  }) {
    return _then(_$VerifyPinStateImpl(
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      isBioEnabled: null == isBioEnabled
          ? _value.isBioEnabled
          : isBioEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$VerifyPinStateImpl implements _VerifyPinState {
  const _$VerifyPinStateImpl(
      {required this.showError, required this.isBioEnabled});

  @override
  final bool showError;
  @override
  final bool isBioEnabled;

  @override
  String toString() {
    return 'VerifyPinState(showError: $showError, isBioEnabled: $isBioEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyPinStateImpl &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            (identical(other.isBioEnabled, isBioEnabled) ||
                other.isBioEnabled == isBioEnabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showError, isBioEnabled);

  /// Create a copy of VerifyPinState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyPinStateImplCopyWith<_$VerifyPinStateImpl> get copyWith =>
      __$$VerifyPinStateImplCopyWithImpl<_$VerifyPinStateImpl>(
          this, _$identity);
}

abstract class _VerifyPinState implements VerifyPinState {
  const factory _VerifyPinState(
      {required final bool showError,
      required final bool isBioEnabled}) = _$VerifyPinStateImpl;

  @override
  bool get showError;
  @override
  bool get isBioEnabled;

  /// Create a copy of VerifyPinState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyPinStateImplCopyWith<_$VerifyPinStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
