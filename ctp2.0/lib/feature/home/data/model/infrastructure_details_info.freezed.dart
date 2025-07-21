// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'infrastructure_details_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InfrastructureDetailsInfo _$InfrastructureDetailsInfoFromJson(
    Map<String, dynamic> json) {
  return _InfrastructureDetailsInfo.fromJson(json);
}

/// @nodoc
mixin _$InfrastructureDetailsInfo {
  String? get status => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  List<PanelInfo> get panels => throw _privateConstructorUsedError;

  /// Serializes this InfrastructureDetailsInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InfrastructureDetailsInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InfrastructureDetailsInfoCopyWith<InfrastructureDetailsInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfrastructureDetailsInfoCopyWith<$Res> {
  factory $InfrastructureDetailsInfoCopyWith(InfrastructureDetailsInfo value,
          $Res Function(InfrastructureDetailsInfo) then) =
      _$InfrastructureDetailsInfoCopyWithImpl<$Res, InfrastructureDetailsInfo>;
  @useResult
  $Res call({String? status, String title, int id, List<PanelInfo> panels});
}

/// @nodoc
class _$InfrastructureDetailsInfoCopyWithImpl<$Res,
        $Val extends InfrastructureDetailsInfo>
    implements $InfrastructureDetailsInfoCopyWith<$Res> {
  _$InfrastructureDetailsInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InfrastructureDetailsInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? title = null,
    Object? id = null,
    Object? panels = null,
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
      panels: null == panels
          ? _value.panels
          : panels // ignore: cast_nullable_to_non_nullable
              as List<PanelInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InfrastructureDetailsInfoImplCopyWith<$Res>
    implements $InfrastructureDetailsInfoCopyWith<$Res> {
  factory _$$InfrastructureDetailsInfoImplCopyWith(
          _$InfrastructureDetailsInfoImpl value,
          $Res Function(_$InfrastructureDetailsInfoImpl) then) =
      __$$InfrastructureDetailsInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String title, int id, List<PanelInfo> panels});
}

/// @nodoc
class __$$InfrastructureDetailsInfoImplCopyWithImpl<$Res>
    extends _$InfrastructureDetailsInfoCopyWithImpl<$Res,
        _$InfrastructureDetailsInfoImpl>
    implements _$$InfrastructureDetailsInfoImplCopyWith<$Res> {
  __$$InfrastructureDetailsInfoImplCopyWithImpl(
      _$InfrastructureDetailsInfoImpl _value,
      $Res Function(_$InfrastructureDetailsInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of InfrastructureDetailsInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? title = null,
    Object? id = null,
    Object? panels = null,
  }) {
    return _then(_$InfrastructureDetailsInfoImpl(
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
      panels: null == panels
          ? _value._panels
          : panels // ignore: cast_nullable_to_non_nullable
              as List<PanelInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfrastructureDetailsInfoImpl implements _InfrastructureDetailsInfo {
  const _$InfrastructureDetailsInfoImpl(
      {required this.status,
      required this.title,
      required this.id,
      required final List<PanelInfo> panels})
      : _panels = panels;

  factory _$InfrastructureDetailsInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfrastructureDetailsInfoImplFromJson(json);

  @override
  final String? status;
  @override
  final String title;
  @override
  final int id;
  final List<PanelInfo> _panels;
  @override
  List<PanelInfo> get panels {
    if (_panels is EqualUnmodifiableListView) return _panels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_panels);
  }

  @override
  String toString() {
    return 'InfrastructureDetailsInfo(status: $status, title: $title, id: $id, panels: $panels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfrastructureDetailsInfoImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._panels, _panels));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, title, id,
      const DeepCollectionEquality().hash(_panels));

  /// Create a copy of InfrastructureDetailsInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InfrastructureDetailsInfoImplCopyWith<_$InfrastructureDetailsInfoImpl>
      get copyWith => __$$InfrastructureDetailsInfoImplCopyWithImpl<
          _$InfrastructureDetailsInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InfrastructureDetailsInfoImplToJson(
      this,
    );
  }
}

abstract class _InfrastructureDetailsInfo implements InfrastructureDetailsInfo {
  const factory _InfrastructureDetailsInfo(
      {required final String? status,
      required final String title,
      required final int id,
      required final List<PanelInfo> panels}) = _$InfrastructureDetailsInfoImpl;

  factory _InfrastructureDetailsInfo.fromJson(Map<String, dynamic> json) =
      _$InfrastructureDetailsInfoImpl.fromJson;

  @override
  String? get status;
  @override
  String get title;
  @override
  int get id;
  @override
  List<PanelInfo> get panels;

  /// Create a copy of InfrastructureDetailsInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InfrastructureDetailsInfoImplCopyWith<_$InfrastructureDetailsInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PanelInfo _$PanelInfoFromJson(Map<String, dynamic> json) {
  return _PanelInfo.fromJson(json);
}

/// @nodoc
mixin _$PanelInfo {
  String get title => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  SourceInfo get source => throw _privateConstructorUsedError;
  PanelSchema? get panelSchema => throw _privateConstructorUsedError;

  /// Serializes this PanelInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PanelInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PanelInfoCopyWith<PanelInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PanelInfoCopyWith<$Res> {
  factory $PanelInfoCopyWith(PanelInfo value, $Res Function(PanelInfo) then) =
      _$PanelInfoCopyWithImpl<$Res, PanelInfo>;
  @useResult
  $Res call(
      {String title, int id, SourceInfo source, PanelSchema? panelSchema});

  $SourceInfoCopyWith<$Res> get source;
  $PanelSchemaCopyWith<$Res>? get panelSchema;
}

/// @nodoc
class _$PanelInfoCopyWithImpl<$Res, $Val extends PanelInfo>
    implements $PanelInfoCopyWith<$Res> {
  _$PanelInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PanelInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? id = null,
    Object? source = null,
    Object? panelSchema = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as SourceInfo,
      panelSchema: freezed == panelSchema
          ? _value.panelSchema
          : panelSchema // ignore: cast_nullable_to_non_nullable
              as PanelSchema?,
    ) as $Val);
  }

  /// Create a copy of PanelInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SourceInfoCopyWith<$Res> get source {
    return $SourceInfoCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }

  /// Create a copy of PanelInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PanelSchemaCopyWith<$Res>? get panelSchema {
    if (_value.panelSchema == null) {
      return null;
    }

    return $PanelSchemaCopyWith<$Res>(_value.panelSchema!, (value) {
      return _then(_value.copyWith(panelSchema: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PanelInfoImplCopyWith<$Res>
    implements $PanelInfoCopyWith<$Res> {
  factory _$$PanelInfoImplCopyWith(
          _$PanelInfoImpl value, $Res Function(_$PanelInfoImpl) then) =
      __$$PanelInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title, int id, SourceInfo source, PanelSchema? panelSchema});

  @override
  $SourceInfoCopyWith<$Res> get source;
  @override
  $PanelSchemaCopyWith<$Res>? get panelSchema;
}

/// @nodoc
class __$$PanelInfoImplCopyWithImpl<$Res>
    extends _$PanelInfoCopyWithImpl<$Res, _$PanelInfoImpl>
    implements _$$PanelInfoImplCopyWith<$Res> {
  __$$PanelInfoImplCopyWithImpl(
      _$PanelInfoImpl _value, $Res Function(_$PanelInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PanelInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? id = null,
    Object? source = null,
    Object? panelSchema = freezed,
  }) {
    return _then(_$PanelInfoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as SourceInfo,
      panelSchema: freezed == panelSchema
          ? _value.panelSchema
          : panelSchema // ignore: cast_nullable_to_non_nullable
              as PanelSchema?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PanelInfoImpl implements _PanelInfo {
  const _$PanelInfoImpl(
      {required this.title,
      required this.id,
      required this.source,
      required this.panelSchema});

  factory _$PanelInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PanelInfoImplFromJson(json);

  @override
  final String title;
  @override
  final int id;
  @override
  final SourceInfo source;
  @override
  final PanelSchema? panelSchema;

  @override
  String toString() {
    return 'PanelInfo(title: $title, id: $id, source: $source, panelSchema: $panelSchema)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PanelInfoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.panelSchema, panelSchema) ||
                other.panelSchema == panelSchema));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, id, source, panelSchema);

  /// Create a copy of PanelInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PanelInfoImplCopyWith<_$PanelInfoImpl> get copyWith =>
      __$$PanelInfoImplCopyWithImpl<_$PanelInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PanelInfoImplToJson(
      this,
    );
  }
}

abstract class _PanelInfo implements PanelInfo {
  const factory _PanelInfo(
      {required final String title,
      required final int id,
      required final SourceInfo source,
      required final PanelSchema? panelSchema}) = _$PanelInfoImpl;

  factory _PanelInfo.fromJson(Map<String, dynamic> json) =
      _$PanelInfoImpl.fromJson;

  @override
  String get title;
  @override
  int get id;
  @override
  SourceInfo get source;
  @override
  PanelSchema? get panelSchema;

  /// Create a copy of PanelInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PanelInfoImplCopyWith<_$PanelInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SourceInfo _$SourceInfoFromJson(Map<String, dynamic> json) {
  return _SourceInfo.fromJson(json);
}

/// @nodoc
mixin _$SourceInfo {
  String get type => throw _privateConstructorUsedError;
  String get dashboardUid => throw _privateConstructorUsedError;
  int get panelId => throw _privateConstructorUsedError;

  /// Serializes this SourceInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SourceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SourceInfoCopyWith<SourceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceInfoCopyWith<$Res> {
  factory $SourceInfoCopyWith(
          SourceInfo value, $Res Function(SourceInfo) then) =
      _$SourceInfoCopyWithImpl<$Res, SourceInfo>;
  @useResult
  $Res call({String type, String dashboardUid, int panelId});
}

/// @nodoc
class _$SourceInfoCopyWithImpl<$Res, $Val extends SourceInfo>
    implements $SourceInfoCopyWith<$Res> {
  _$SourceInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SourceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? dashboardUid = null,
    Object? panelId = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      dashboardUid: null == dashboardUid
          ? _value.dashboardUid
          : dashboardUid // ignore: cast_nullable_to_non_nullable
              as String,
      panelId: null == panelId
          ? _value.panelId
          : panelId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SourceInfoImplCopyWith<$Res>
    implements $SourceInfoCopyWith<$Res> {
  factory _$$SourceInfoImplCopyWith(
          _$SourceInfoImpl value, $Res Function(_$SourceInfoImpl) then) =
      __$$SourceInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String dashboardUid, int panelId});
}

/// @nodoc
class __$$SourceInfoImplCopyWithImpl<$Res>
    extends _$SourceInfoCopyWithImpl<$Res, _$SourceInfoImpl>
    implements _$$SourceInfoImplCopyWith<$Res> {
  __$$SourceInfoImplCopyWithImpl(
      _$SourceInfoImpl _value, $Res Function(_$SourceInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SourceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? dashboardUid = null,
    Object? panelId = null,
  }) {
    return _then(_$SourceInfoImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      dashboardUid: null == dashboardUid
          ? _value.dashboardUid
          : dashboardUid // ignore: cast_nullable_to_non_nullable
              as String,
      panelId: null == panelId
          ? _value.panelId
          : panelId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SourceInfoImpl implements _SourceInfo {
  const _$SourceInfoImpl(
      {required this.type, required this.dashboardUid, required this.panelId});

  factory _$SourceInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourceInfoImplFromJson(json);

  @override
  final String type;
  @override
  final String dashboardUid;
  @override
  final int panelId;

  @override
  String toString() {
    return 'SourceInfo(type: $type, dashboardUid: $dashboardUid, panelId: $panelId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceInfoImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.dashboardUid, dashboardUid) ||
                other.dashboardUid == dashboardUid) &&
            (identical(other.panelId, panelId) || other.panelId == panelId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, dashboardUid, panelId);

  /// Create a copy of SourceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceInfoImplCopyWith<_$SourceInfoImpl> get copyWith =>
      __$$SourceInfoImplCopyWithImpl<_$SourceInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SourceInfoImplToJson(
      this,
    );
  }
}

abstract class _SourceInfo implements SourceInfo {
  const factory _SourceInfo(
      {required final String type,
      required final String dashboardUid,
      required final int panelId}) = _$SourceInfoImpl;

  factory _SourceInfo.fromJson(Map<String, dynamic> json) =
      _$SourceInfoImpl.fromJson;

  @override
  String get type;
  @override
  String get dashboardUid;
  @override
  int get panelId;

  /// Create a copy of SourceInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SourceInfoImplCopyWith<_$SourceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PanelSchema _$PanelSchemaFromJson(Map<String, dynamic> json) {
  return _PanelSchema.fromJson(json);
}

/// @nodoc
mixin _$PanelSchema {
  String get type => throw _privateConstructorUsedError;
  FieldConfig get fieldConfig => throw _privateConstructorUsedError;

  /// Serializes this PanelSchema to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PanelSchema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PanelSchemaCopyWith<PanelSchema> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PanelSchemaCopyWith<$Res> {
  factory $PanelSchemaCopyWith(
          PanelSchema value, $Res Function(PanelSchema) then) =
      _$PanelSchemaCopyWithImpl<$Res, PanelSchema>;
  @useResult
  $Res call({String type, FieldConfig fieldConfig});

  $FieldConfigCopyWith<$Res> get fieldConfig;
}

/// @nodoc
class _$PanelSchemaCopyWithImpl<$Res, $Val extends PanelSchema>
    implements $PanelSchemaCopyWith<$Res> {
  _$PanelSchemaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PanelSchema
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? fieldConfig = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      fieldConfig: null == fieldConfig
          ? _value.fieldConfig
          : fieldConfig // ignore: cast_nullable_to_non_nullable
              as FieldConfig,
    ) as $Val);
  }

  /// Create a copy of PanelSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FieldConfigCopyWith<$Res> get fieldConfig {
    return $FieldConfigCopyWith<$Res>(_value.fieldConfig, (value) {
      return _then(_value.copyWith(fieldConfig: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PanelSchemaImplCopyWith<$Res>
    implements $PanelSchemaCopyWith<$Res> {
  factory _$$PanelSchemaImplCopyWith(
          _$PanelSchemaImpl value, $Res Function(_$PanelSchemaImpl) then) =
      __$$PanelSchemaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, FieldConfig fieldConfig});

  @override
  $FieldConfigCopyWith<$Res> get fieldConfig;
}

/// @nodoc
class __$$PanelSchemaImplCopyWithImpl<$Res>
    extends _$PanelSchemaCopyWithImpl<$Res, _$PanelSchemaImpl>
    implements _$$PanelSchemaImplCopyWith<$Res> {
  __$$PanelSchemaImplCopyWithImpl(
      _$PanelSchemaImpl _value, $Res Function(_$PanelSchemaImpl) _then)
      : super(_value, _then);

  /// Create a copy of PanelSchema
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? fieldConfig = null,
  }) {
    return _then(_$PanelSchemaImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      fieldConfig: null == fieldConfig
          ? _value.fieldConfig
          : fieldConfig // ignore: cast_nullable_to_non_nullable
              as FieldConfig,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PanelSchemaImpl implements _PanelSchema {
  const _$PanelSchemaImpl({required this.type, required this.fieldConfig});

  factory _$PanelSchemaImpl.fromJson(Map<String, dynamic> json) =>
      _$$PanelSchemaImplFromJson(json);

  @override
  final String type;
  @override
  final FieldConfig fieldConfig;

  @override
  String toString() {
    return 'PanelSchema(type: $type, fieldConfig: $fieldConfig)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PanelSchemaImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.fieldConfig, fieldConfig) ||
                other.fieldConfig == fieldConfig));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, fieldConfig);

  /// Create a copy of PanelSchema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PanelSchemaImplCopyWith<_$PanelSchemaImpl> get copyWith =>
      __$$PanelSchemaImplCopyWithImpl<_$PanelSchemaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PanelSchemaImplToJson(
      this,
    );
  }
}

abstract class _PanelSchema implements PanelSchema {
  const factory _PanelSchema(
      {required final String type,
      required final FieldConfig fieldConfig}) = _$PanelSchemaImpl;

  factory _PanelSchema.fromJson(Map<String, dynamic> json) =
      _$PanelSchemaImpl.fromJson;

  @override
  String get type;
  @override
  FieldConfig get fieldConfig;

  /// Create a copy of PanelSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PanelSchemaImplCopyWith<_$PanelSchemaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FieldConfig _$FieldConfigFromJson(Map<String, dynamic> json) {
  return _FieldConfig.fromJson(json);
}

/// @nodoc
mixin _$FieldConfig {
  Defaults get defaults => throw _privateConstructorUsedError;

  /// Serializes this FieldConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FieldConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FieldConfigCopyWith<FieldConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldConfigCopyWith<$Res> {
  factory $FieldConfigCopyWith(
          FieldConfig value, $Res Function(FieldConfig) then) =
      _$FieldConfigCopyWithImpl<$Res, FieldConfig>;
  @useResult
  $Res call({Defaults defaults});

  $DefaultsCopyWith<$Res> get defaults;
}

/// @nodoc
class _$FieldConfigCopyWithImpl<$Res, $Val extends FieldConfig>
    implements $FieldConfigCopyWith<$Res> {
  _$FieldConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FieldConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaults = null,
  }) {
    return _then(_value.copyWith(
      defaults: null == defaults
          ? _value.defaults
          : defaults // ignore: cast_nullable_to_non_nullable
              as Defaults,
    ) as $Val);
  }

  /// Create a copy of FieldConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DefaultsCopyWith<$Res> get defaults {
    return $DefaultsCopyWith<$Res>(_value.defaults, (value) {
      return _then(_value.copyWith(defaults: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FieldConfigImplCopyWith<$Res>
    implements $FieldConfigCopyWith<$Res> {
  factory _$$FieldConfigImplCopyWith(
          _$FieldConfigImpl value, $Res Function(_$FieldConfigImpl) then) =
      __$$FieldConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Defaults defaults});

  @override
  $DefaultsCopyWith<$Res> get defaults;
}

/// @nodoc
class __$$FieldConfigImplCopyWithImpl<$Res>
    extends _$FieldConfigCopyWithImpl<$Res, _$FieldConfigImpl>
    implements _$$FieldConfigImplCopyWith<$Res> {
  __$$FieldConfigImplCopyWithImpl(
      _$FieldConfigImpl _value, $Res Function(_$FieldConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of FieldConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaults = null,
  }) {
    return _then(_$FieldConfigImpl(
      defaults: null == defaults
          ? _value.defaults
          : defaults // ignore: cast_nullable_to_non_nullable
              as Defaults,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldConfigImpl implements _FieldConfig {
  const _$FieldConfigImpl({required this.defaults});

  factory _$FieldConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldConfigImplFromJson(json);

  @override
  final Defaults defaults;

  @override
  String toString() {
    return 'FieldConfig(defaults: $defaults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldConfigImpl &&
            (identical(other.defaults, defaults) ||
                other.defaults == defaults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, defaults);

  /// Create a copy of FieldConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldConfigImplCopyWith<_$FieldConfigImpl> get copyWith =>
      __$$FieldConfigImplCopyWithImpl<_$FieldConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FieldConfigImplToJson(
      this,
    );
  }
}

abstract class _FieldConfig implements FieldConfig {
  const factory _FieldConfig({required final Defaults defaults}) =
      _$FieldConfigImpl;

  factory _FieldConfig.fromJson(Map<String, dynamic> json) =
      _$FieldConfigImpl.fromJson;

  @override
  Defaults get defaults;

  /// Create a copy of FieldConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FieldConfigImplCopyWith<_$FieldConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Defaults _$DefaultsFromJson(Map<String, dynamic> json) {
  return _Defaults.fromJson(json);
}

/// @nodoc
mixin _$Defaults {
  String? get unit => throw _privateConstructorUsedError;
  Custom? get custom => throw _privateConstructorUsedError;

  /// Serializes this Defaults to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Defaults
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DefaultsCopyWith<Defaults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultsCopyWith<$Res> {
  factory $DefaultsCopyWith(Defaults value, $Res Function(Defaults) then) =
      _$DefaultsCopyWithImpl<$Res, Defaults>;
  @useResult
  $Res call({String? unit, Custom? custom});

  $CustomCopyWith<$Res>? get custom;
}

/// @nodoc
class _$DefaultsCopyWithImpl<$Res, $Val extends Defaults>
    implements $DefaultsCopyWith<$Res> {
  _$DefaultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Defaults
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = freezed,
    Object? custom = freezed,
  }) {
    return _then(_value.copyWith(
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      custom: freezed == custom
          ? _value.custom
          : custom // ignore: cast_nullable_to_non_nullable
              as Custom?,
    ) as $Val);
  }

  /// Create a copy of Defaults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomCopyWith<$Res>? get custom {
    if (_value.custom == null) {
      return null;
    }

    return $CustomCopyWith<$Res>(_value.custom!, (value) {
      return _then(_value.copyWith(custom: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DefaultsImplCopyWith<$Res>
    implements $DefaultsCopyWith<$Res> {
  factory _$$DefaultsImplCopyWith(
          _$DefaultsImpl value, $Res Function(_$DefaultsImpl) then) =
      __$$DefaultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? unit, Custom? custom});

  @override
  $CustomCopyWith<$Res>? get custom;
}

/// @nodoc
class __$$DefaultsImplCopyWithImpl<$Res>
    extends _$DefaultsCopyWithImpl<$Res, _$DefaultsImpl>
    implements _$$DefaultsImplCopyWith<$Res> {
  __$$DefaultsImplCopyWithImpl(
      _$DefaultsImpl _value, $Res Function(_$DefaultsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Defaults
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = freezed,
    Object? custom = freezed,
  }) {
    return _then(_$DefaultsImpl(
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      custom: freezed == custom
          ? _value.custom
          : custom // ignore: cast_nullable_to_non_nullable
              as Custom?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DefaultsImpl implements _Defaults {
  const _$DefaultsImpl({this.unit, this.custom});

  factory _$DefaultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DefaultsImplFromJson(json);

  @override
  final String? unit;
  @override
  final Custom? custom;

  @override
  String toString() {
    return 'Defaults(unit: $unit, custom: $custom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultsImpl &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.custom, custom) || other.custom == custom));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, unit, custom);

  /// Create a copy of Defaults
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultsImplCopyWith<_$DefaultsImpl> get copyWith =>
      __$$DefaultsImplCopyWithImpl<_$DefaultsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DefaultsImplToJson(
      this,
    );
  }
}

abstract class _Defaults implements Defaults {
  const factory _Defaults({final String? unit, final Custom? custom}) =
      _$DefaultsImpl;

  factory _Defaults.fromJson(Map<String, dynamic> json) =
      _$DefaultsImpl.fromJson;

  @override
  String? get unit;
  @override
  Custom? get custom;

  /// Create a copy of Defaults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DefaultsImplCopyWith<_$DefaultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Custom _$CustomFromJson(Map<String, dynamic> json) {
  return _Custom.fromJson(json);
}

/// @nodoc
mixin _$Custom {
  String? get axisLabel => throw _privateConstructorUsedError;

  /// Serializes this Custom to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Custom
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomCopyWith<Custom> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomCopyWith<$Res> {
  factory $CustomCopyWith(Custom value, $Res Function(Custom) then) =
      _$CustomCopyWithImpl<$Res, Custom>;
  @useResult
  $Res call({String? axisLabel});
}

/// @nodoc
class _$CustomCopyWithImpl<$Res, $Val extends Custom>
    implements $CustomCopyWith<$Res> {
  _$CustomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Custom
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? axisLabel = freezed,
  }) {
    return _then(_value.copyWith(
      axisLabel: freezed == axisLabel
          ? _value.axisLabel
          : axisLabel // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomImplCopyWith<$Res> implements $CustomCopyWith<$Res> {
  factory _$$CustomImplCopyWith(
          _$CustomImpl value, $Res Function(_$CustomImpl) then) =
      __$$CustomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? axisLabel});
}

/// @nodoc
class __$$CustomImplCopyWithImpl<$Res>
    extends _$CustomCopyWithImpl<$Res, _$CustomImpl>
    implements _$$CustomImplCopyWith<$Res> {
  __$$CustomImplCopyWithImpl(
      _$CustomImpl _value, $Res Function(_$CustomImpl) _then)
      : super(_value, _then);

  /// Create a copy of Custom
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? axisLabel = freezed,
  }) {
    return _then(_$CustomImpl(
      axisLabel: freezed == axisLabel
          ? _value.axisLabel
          : axisLabel // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomImpl implements _Custom {
  const _$CustomImpl({this.axisLabel});

  factory _$CustomImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomImplFromJson(json);

  @override
  final String? axisLabel;

  @override
  String toString() {
    return 'Custom(axisLabel: $axisLabel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomImpl &&
            (identical(other.axisLabel, axisLabel) ||
                other.axisLabel == axisLabel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, axisLabel);

  /// Create a copy of Custom
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomImplCopyWith<_$CustomImpl> get copyWith =>
      __$$CustomImplCopyWithImpl<_$CustomImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomImplToJson(
      this,
    );
  }
}

abstract class _Custom implements Custom {
  const factory _Custom({final String? axisLabel}) = _$CustomImpl;

  factory _Custom.fromJson(Map<String, dynamic> json) = _$CustomImpl.fromJson;

  @override
  String? get axisLabel;

  /// Create a copy of Custom
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomImplCopyWith<_$CustomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
