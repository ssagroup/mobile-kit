// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'style.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StyleInfo _$StyleInfoFromJson(Map<String, dynamic> json) {
  return _StyleInfo.fromJson(json);
}

/// @nodoc
mixin _$StyleInfo {
  ColorsInfo get colors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StyleInfoCopyWith<StyleInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StyleInfoCopyWith<$Res> {
  factory $StyleInfoCopyWith(StyleInfo value, $Res Function(StyleInfo) then) =
      _$StyleInfoCopyWithImpl<$Res, StyleInfo>;
  @useResult
  $Res call({ColorsInfo colors});

  $ColorsInfoCopyWith<$Res> get colors;
}

/// @nodoc
class _$StyleInfoCopyWithImpl<$Res, $Val extends StyleInfo>
    implements $StyleInfoCopyWith<$Res> {
  _$StyleInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colors = null,
  }) {
    return _then(_value.copyWith(
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as ColorsInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ColorsInfoCopyWith<$Res> get colors {
    return $ColorsInfoCopyWith<$Res>(_value.colors, (value) {
      return _then(_value.copyWith(colors: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StyleInfoImplCopyWith<$Res>
    implements $StyleInfoCopyWith<$Res> {
  factory _$$StyleInfoImplCopyWith(
          _$StyleInfoImpl value, $Res Function(_$StyleInfoImpl) then) =
      __$$StyleInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ColorsInfo colors});

  @override
  $ColorsInfoCopyWith<$Res> get colors;
}

/// @nodoc
class __$$StyleInfoImplCopyWithImpl<$Res>
    extends _$StyleInfoCopyWithImpl<$Res, _$StyleInfoImpl>
    implements _$$StyleInfoImplCopyWith<$Res> {
  __$$StyleInfoImplCopyWithImpl(
      _$StyleInfoImpl _value, $Res Function(_$StyleInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colors = null,
  }) {
    return _then(_$StyleInfoImpl(
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as ColorsInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StyleInfoImpl extends _StyleInfo {
  const _$StyleInfoImpl({required this.colors}) : super._();

  factory _$StyleInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StyleInfoImplFromJson(json);

  @override
  final ColorsInfo colors;

  @override
  String toString() {
    return 'StyleInfo(colors: $colors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StyleInfoImpl &&
            (identical(other.colors, colors) || other.colors == colors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, colors);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StyleInfoImplCopyWith<_$StyleInfoImpl> get copyWith =>
      __$$StyleInfoImplCopyWithImpl<_$StyleInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StyleInfoImplToJson(
      this,
    );
  }
}

abstract class _StyleInfo extends StyleInfo {
  const factory _StyleInfo({required final ColorsInfo colors}) =
      _$StyleInfoImpl;
  const _StyleInfo._() : super._();

  factory _StyleInfo.fromJson(Map<String, dynamic> json) =
      _$StyleInfoImpl.fromJson;

  @override
  ColorsInfo get colors;
  @override
  @JsonKey(ignore: true)
  _$$StyleInfoImplCopyWith<_$StyleInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ColorsInfo _$ColorsInfoFromJson(Map<String, dynamic> json) {
  return _ColorsInfo.fromJson(json);
}

/// @nodoc
mixin _$ColorsInfo {
  String get positve => throw _privateConstructorUsedError;
  String get negative => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColorsInfoCopyWith<ColorsInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorsInfoCopyWith<$Res> {
  factory $ColorsInfoCopyWith(
          ColorsInfo value, $Res Function(ColorsInfo) then) =
      _$ColorsInfoCopyWithImpl<$Res, ColorsInfo>;
  @useResult
  $Res call({String positve, String negative});
}

/// @nodoc
class _$ColorsInfoCopyWithImpl<$Res, $Val extends ColorsInfo>
    implements $ColorsInfoCopyWith<$Res> {
  _$ColorsInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? positve = null,
    Object? negative = null,
  }) {
    return _then(_value.copyWith(
      positve: null == positve
          ? _value.positve
          : positve // ignore: cast_nullable_to_non_nullable
              as String,
      negative: null == negative
          ? _value.negative
          : negative // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColorsInfoImplCopyWith<$Res>
    implements $ColorsInfoCopyWith<$Res> {
  factory _$$ColorsInfoImplCopyWith(
          _$ColorsInfoImpl value, $Res Function(_$ColorsInfoImpl) then) =
      __$$ColorsInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String positve, String negative});
}

/// @nodoc
class __$$ColorsInfoImplCopyWithImpl<$Res>
    extends _$ColorsInfoCopyWithImpl<$Res, _$ColorsInfoImpl>
    implements _$$ColorsInfoImplCopyWith<$Res> {
  __$$ColorsInfoImplCopyWithImpl(
      _$ColorsInfoImpl _value, $Res Function(_$ColorsInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? positve = null,
    Object? negative = null,
  }) {
    return _then(_$ColorsInfoImpl(
      positve: null == positve
          ? _value.positve
          : positve // ignore: cast_nullable_to_non_nullable
              as String,
      negative: null == negative
          ? _value.negative
          : negative // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColorsInfoImpl implements _ColorsInfo {
  const _$ColorsInfoImpl({required this.positve, required this.negative});

  factory _$ColorsInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColorsInfoImplFromJson(json);

  @override
  final String positve;
  @override
  final String negative;

  @override
  String toString() {
    return 'ColorsInfo(positve: $positve, negative: $negative)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorsInfoImpl &&
            (identical(other.positve, positve) || other.positve == positve) &&
            (identical(other.negative, negative) ||
                other.negative == negative));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, positve, negative);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorsInfoImplCopyWith<_$ColorsInfoImpl> get copyWith =>
      __$$ColorsInfoImplCopyWithImpl<_$ColorsInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColorsInfoImplToJson(
      this,
    );
  }
}

abstract class _ColorsInfo implements ColorsInfo {
  const factory _ColorsInfo(
      {required final String positve,
      required final String negative}) = _$ColorsInfoImpl;

  factory _ColorsInfo.fromJson(Map<String, dynamic> json) =
      _$ColorsInfoImpl.fromJson;

  @override
  String get positve;
  @override
  String get negative;
  @override
  @JsonKey(ignore: true)
  _$$ColorsInfoImplCopyWith<_$ColorsInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
