// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'infrastructure_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InfrastructureInfo _$InfrastructureInfoFromJson(Map<String, dynamic> json) {
  return _InfrastructureInfo.fromJson(json);
}

/// @nodoc
mixin _$InfrastructureInfo {
  String? get status => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  /// Serializes this InfrastructureInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InfrastructureInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InfrastructureInfoCopyWith<InfrastructureInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfrastructureInfoCopyWith<$Res> {
  factory $InfrastructureInfoCopyWith(
          InfrastructureInfo value, $Res Function(InfrastructureInfo) then) =
      _$InfrastructureInfoCopyWithImpl<$Res, InfrastructureInfo>;
  @useResult
  $Res call({String? status, String title, int id});
}

/// @nodoc
class _$InfrastructureInfoCopyWithImpl<$Res, $Val extends InfrastructureInfo>
    implements $InfrastructureInfoCopyWith<$Res> {
  _$InfrastructureInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InfrastructureInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? title = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InfrastructureInfoImplCopyWith<$Res>
    implements $InfrastructureInfoCopyWith<$Res> {
  factory _$$InfrastructureInfoImplCopyWith(_$InfrastructureInfoImpl value,
          $Res Function(_$InfrastructureInfoImpl) then) =
      __$$InfrastructureInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String title, int id});
}

/// @nodoc
class __$$InfrastructureInfoImplCopyWithImpl<$Res>
    extends _$InfrastructureInfoCopyWithImpl<$Res, _$InfrastructureInfoImpl>
    implements _$$InfrastructureInfoImplCopyWith<$Res> {
  __$$InfrastructureInfoImplCopyWithImpl(_$InfrastructureInfoImpl _value,
      $Res Function(_$InfrastructureInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of InfrastructureInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? title = null,
    Object? id = null,
  }) {
    return _then(_$InfrastructureInfoImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfrastructureInfoImpl implements _InfrastructureInfo {
  const _$InfrastructureInfoImpl(
      {required this.status, required this.title, required this.id});

  factory _$InfrastructureInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfrastructureInfoImplFromJson(json);

  @override
  final String? status;
  @override
  final String title;
  @override
  final int id;

  @override
  String toString() {
    return 'InfrastructureInfo(status: $status, title: $title, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfrastructureInfoImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, title, id);

  /// Create a copy of InfrastructureInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InfrastructureInfoImplCopyWith<_$InfrastructureInfoImpl> get copyWith =>
      __$$InfrastructureInfoImplCopyWithImpl<_$InfrastructureInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InfrastructureInfoImplToJson(
      this,
    );
  }
}

abstract class _InfrastructureInfo implements InfrastructureInfo {
  const factory _InfrastructureInfo(
      {required final String? status,
      required final String title,
      required final int id}) = _$InfrastructureInfoImpl;

  factory _InfrastructureInfo.fromJson(Map<String, dynamic> json) =
      _$InfrastructureInfoImpl.fromJson;

  @override
  String? get status;
  @override
  String get title;
  @override
  int get id;

  /// Create a copy of InfrastructureInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InfrastructureInfoImplCopyWith<_$InfrastructureInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
