// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationInfo _$NotificationInfoFromJson(Map<String, dynamic> json) {
  return _NotificationInfo.fromJson(json);
}

/// @nodoc
mixin _$NotificationInfo {
  String get title => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  NotificationType get type => throw _privateConstructorUsedError;
  DateTime? get readAt => throw _privateConstructorUsedError;
  DateTime get creationTime => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationInfoCopyWith<NotificationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationInfoCopyWith<$Res> {
  factory $NotificationInfoCopyWith(
          NotificationInfo value, $Res Function(NotificationInfo) then) =
      _$NotificationInfoCopyWithImpl<$Res, NotificationInfo>;
  @useResult
  $Res call(
      {String title,
      String text,
      NotificationType type,
      DateTime? readAt,
      DateTime creationTime,
      int id});
}

/// @nodoc
class _$NotificationInfoCopyWithImpl<$Res, $Val extends NotificationInfo>
    implements $NotificationInfoCopyWith<$Res> {
  _$NotificationInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? text = null,
    Object? type = null,
    Object? readAt = freezed,
    Object? creationTime = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      readAt: freezed == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      creationTime: null == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationInfoImplCopyWith<$Res>
    implements $NotificationInfoCopyWith<$Res> {
  factory _$$NotificationInfoImplCopyWith(_$NotificationInfoImpl value,
          $Res Function(_$NotificationInfoImpl) then) =
      __$$NotificationInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String text,
      NotificationType type,
      DateTime? readAt,
      DateTime creationTime,
      int id});
}

/// @nodoc
class __$$NotificationInfoImplCopyWithImpl<$Res>
    extends _$NotificationInfoCopyWithImpl<$Res, _$NotificationInfoImpl>
    implements _$$NotificationInfoImplCopyWith<$Res> {
  __$$NotificationInfoImplCopyWithImpl(_$NotificationInfoImpl _value,
      $Res Function(_$NotificationInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? text = null,
    Object? type = null,
    Object? readAt = freezed,
    Object? creationTime = null,
    Object? id = null,
  }) {
    return _then(_$NotificationInfoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      readAt: freezed == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      creationTime: null == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationInfoImpl implements _NotificationInfo {
  const _$NotificationInfoImpl(
      {required this.title,
      required this.text,
      required this.type,
      required this.readAt,
      required this.creationTime,
      required this.id});

  factory _$NotificationInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationInfoImplFromJson(json);

  @override
  final String title;
  @override
  final String text;
  @override
  final NotificationType type;
  @override
  final DateTime? readAt;
  @override
  final DateTime creationTime;
  @override
  final int id;

  @override
  String toString() {
    return 'NotificationInfo(title: $title, text: $text, type: $type, readAt: $readAt, creationTime: $creationTime, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationInfoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.readAt, readAt) || other.readAt == readAt) &&
            (identical(other.creationTime, creationTime) ||
                other.creationTime == creationTime) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, text, type, readAt, creationTime, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationInfoImplCopyWith<_$NotificationInfoImpl> get copyWith =>
      __$$NotificationInfoImplCopyWithImpl<_$NotificationInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationInfoImplToJson(
      this,
    );
  }
}

abstract class _NotificationInfo implements NotificationInfo {
  const factory _NotificationInfo(
      {required final String title,
      required final String text,
      required final NotificationType type,
      required final DateTime? readAt,
      required final DateTime creationTime,
      required final int id}) = _$NotificationInfoImpl;

  factory _NotificationInfo.fromJson(Map<String, dynamic> json) =
      _$NotificationInfoImpl.fromJson;

  @override
  String get title;
  @override
  String get text;
  @override
  NotificationType get type;
  @override
  DateTime? get readAt;
  @override
  DateTime get creationTime;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$NotificationInfoImplCopyWith<_$NotificationInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
