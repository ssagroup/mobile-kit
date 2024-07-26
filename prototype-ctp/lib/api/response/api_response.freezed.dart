// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

APIResponse<T> _$APIResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _APIResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$APIResponse<T> {
  T get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $APIResponseCopyWith<T, APIResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APIResponseCopyWith<T, $Res> {
  factory $APIResponseCopyWith(
          APIResponse<T> value, $Res Function(APIResponse<T>) then) =
      _$APIResponseCopyWithImpl<T, $Res, APIResponse<T>>;
  @useResult
  $Res call({T result});
}

/// @nodoc
class _$APIResponseCopyWithImpl<T, $Res, $Val extends APIResponse<T>>
    implements $APIResponseCopyWith<T, $Res> {
  _$APIResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$APIResponseImplCopyWith<T, $Res>
    implements $APIResponseCopyWith<T, $Res> {
  factory _$$APIResponseImplCopyWith(_$APIResponseImpl<T> value,
          $Res Function(_$APIResponseImpl<T>) then) =
      __$$APIResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T result});
}

/// @nodoc
class __$$APIResponseImplCopyWithImpl<T, $Res>
    extends _$APIResponseCopyWithImpl<T, $Res, _$APIResponseImpl<T>>
    implements _$$APIResponseImplCopyWith<T, $Res> {
  __$$APIResponseImplCopyWithImpl(
      _$APIResponseImpl<T> _value, $Res Function(_$APIResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$APIResponseImpl<T>(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$APIResponseImpl<T> implements _APIResponse<T> {
  const _$APIResponseImpl({required this.result});

  factory _$APIResponseImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$APIResponseImplFromJson(json, fromJsonT);

  @override
  final T result;

  @override
  String toString() {
    return 'APIResponse<$T>(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$APIResponseImpl<T> &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$APIResponseImplCopyWith<T, _$APIResponseImpl<T>> get copyWith =>
      __$$APIResponseImplCopyWithImpl<T, _$APIResponseImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$APIResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _APIResponse<T> implements APIResponse<T> {
  const factory _APIResponse({required final T result}) = _$APIResponseImpl<T>;

  factory _APIResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$APIResponseImpl<T>.fromJson;

  @override
  T get result;
  @override
  @JsonKey(ignore: true)
  _$$APIResponseImplCopyWith<T, _$APIResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

APIResult<T> _$APIResultFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _APIResult<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$APIResult<T> {
  List<T> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $APIResultCopyWith<T, APIResult<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APIResultCopyWith<T, $Res> {
  factory $APIResultCopyWith(
          APIResult<T> value, $Res Function(APIResult<T>) then) =
      _$APIResultCopyWithImpl<T, $Res, APIResult<T>>;
  @useResult
  $Res call({List<T> items});
}

/// @nodoc
class _$APIResultCopyWithImpl<T, $Res, $Val extends APIResult<T>>
    implements $APIResultCopyWith<T, $Res> {
  _$APIResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$APIResultImplCopyWith<T, $Res>
    implements $APIResultCopyWith<T, $Res> {
  factory _$$APIResultImplCopyWith(
          _$APIResultImpl<T> value, $Res Function(_$APIResultImpl<T>) then) =
      __$$APIResultImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> items});
}

/// @nodoc
class __$$APIResultImplCopyWithImpl<T, $Res>
    extends _$APIResultCopyWithImpl<T, $Res, _$APIResultImpl<T>>
    implements _$$APIResultImplCopyWith<T, $Res> {
  __$$APIResultImplCopyWithImpl(
      _$APIResultImpl<T> _value, $Res Function(_$APIResultImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$APIResultImpl<T>(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$APIResultImpl<T> implements _APIResult<T> {
  const _$APIResultImpl({required final List<T> items}) : _items = items;

  factory _$APIResultImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$APIResultImplFromJson(json, fromJsonT);

  final List<T> _items;
  @override
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'APIResult<$T>(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$APIResultImpl<T> &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$APIResultImplCopyWith<T, _$APIResultImpl<T>> get copyWith =>
      __$$APIResultImplCopyWithImpl<T, _$APIResultImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$APIResultImplToJson<T>(this, toJsonT);
  }
}

abstract class _APIResult<T> implements APIResult<T> {
  const factory _APIResult({required final List<T> items}) = _$APIResultImpl<T>;

  factory _APIResult.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$APIResultImpl<T>.fromJson;

  @override
  List<T> get items;
  @override
  @JsonKey(ignore: true)
  _$$APIResultImplCopyWith<T, _$APIResultImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
