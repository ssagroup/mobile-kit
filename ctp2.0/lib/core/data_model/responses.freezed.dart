// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'responses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmptyResponse _$EmptyResponseFromJson(Map<String, dynamic> json) {
  return _EmptyResponse.fromJson(json);
}

/// @nodoc
mixin _$EmptyResponse {
  /// Serializes this EmptyResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyResponseCopyWith<$Res> {
  factory $EmptyResponseCopyWith(
          EmptyResponse value, $Res Function(EmptyResponse) then) =
      _$EmptyResponseCopyWithImpl<$Res, EmptyResponse>;
}

/// @nodoc
class _$EmptyResponseCopyWithImpl<$Res, $Val extends EmptyResponse>
    implements $EmptyResponseCopyWith<$Res> {
  _$EmptyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmptyResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EmptyResponseImplCopyWith<$Res> {
  factory _$$EmptyResponseImplCopyWith(
          _$EmptyResponseImpl value, $Res Function(_$EmptyResponseImpl) then) =
      __$$EmptyResponseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyResponseImplCopyWithImpl<$Res>
    extends _$EmptyResponseCopyWithImpl<$Res, _$EmptyResponseImpl>
    implements _$$EmptyResponseImplCopyWith<$Res> {
  __$$EmptyResponseImplCopyWithImpl(
      _$EmptyResponseImpl _value, $Res Function(_$EmptyResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmptyResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$EmptyResponseImpl implements _EmptyResponse {
  const _$EmptyResponseImpl();

  factory _$EmptyResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmptyResponseImplFromJson(json);

  @override
  String toString() {
    return 'EmptyResponse()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyResponseImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$EmptyResponseImplToJson(
      this,
    );
  }
}

abstract class _EmptyResponse implements EmptyResponse {
  const factory _EmptyResponse() = _$EmptyResponseImpl;

  factory _EmptyResponse.fromJson(Map<String, dynamic> json) =
      _$EmptyResponseImpl.fromJson;
}

SuccessResponse _$SuccessResponseFromJson(Map<String, dynamic> json) {
  return _SuccessResponse.fromJson(json);
}

/// @nodoc
mixin _$SuccessResponse {
  bool get success => throw _privateConstructorUsedError;

  /// Serializes this SuccessResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuccessResponseCopyWith<SuccessResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessResponseCopyWith<$Res> {
  factory $SuccessResponseCopyWith(
          SuccessResponse value, $Res Function(SuccessResponse) then) =
      _$SuccessResponseCopyWithImpl<$Res, SuccessResponse>;
  @useResult
  $Res call({bool success});
}

/// @nodoc
class _$SuccessResponseCopyWithImpl<$Res, $Val extends SuccessResponse>
    implements $SuccessResponseCopyWith<$Res> {
  _$SuccessResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuccessResponseImplCopyWith<$Res>
    implements $SuccessResponseCopyWith<$Res> {
  factory _$$SuccessResponseImplCopyWith(_$SuccessResponseImpl value,
          $Res Function(_$SuccessResponseImpl) then) =
      __$$SuccessResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success});
}

/// @nodoc
class __$$SuccessResponseImplCopyWithImpl<$Res>
    extends _$SuccessResponseCopyWithImpl<$Res, _$SuccessResponseImpl>
    implements _$$SuccessResponseImplCopyWith<$Res> {
  __$$SuccessResponseImplCopyWithImpl(
      _$SuccessResponseImpl _value, $Res Function(_$SuccessResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$SuccessResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuccessResponseImpl implements _SuccessResponse {
  const _$SuccessResponseImpl({required this.success});

  factory _$SuccessResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuccessResponseImplFromJson(json);

  @override
  final bool success;

  @override
  String toString() {
    return 'SuccessResponse(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessResponseImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success);

  /// Create a copy of SuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessResponseImplCopyWith<_$SuccessResponseImpl> get copyWith =>
      __$$SuccessResponseImplCopyWithImpl<_$SuccessResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuccessResponseImplToJson(
      this,
    );
  }
}

abstract class _SuccessResponse implements SuccessResponse {
  const factory _SuccessResponse({required final bool success}) =
      _$SuccessResponseImpl;

  factory _SuccessResponse.fromJson(Map<String, dynamic> json) =
      _$SuccessResponseImpl.fromJson;

  @override
  bool get success;

  /// Create a copy of SuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessResponseImplCopyWith<_$SuccessResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
