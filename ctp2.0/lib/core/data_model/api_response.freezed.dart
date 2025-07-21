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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

APIDataResponse<T> _$APIDataResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _APIDataResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$APIDataResponse<T> {
  T get data => throw _privateConstructorUsedError;

  /// Serializes this APIDataResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of APIDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $APIDataResponseCopyWith<T, APIDataResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APIDataResponseCopyWith<T, $Res> {
  factory $APIDataResponseCopyWith(
          APIDataResponse<T> value, $Res Function(APIDataResponse<T>) then) =
      _$APIDataResponseCopyWithImpl<T, $Res, APIDataResponse<T>>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class _$APIDataResponseCopyWithImpl<T, $Res, $Val extends APIDataResponse<T>>
    implements $APIDataResponseCopyWith<T, $Res> {
  _$APIDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of APIDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$APIDataResponseImplCopyWith<T, $Res>
    implements $APIDataResponseCopyWith<T, $Res> {
  factory _$$APIDataResponseImplCopyWith(_$APIDataResponseImpl<T> value,
          $Res Function(_$APIDataResponseImpl<T>) then) =
      __$$APIDataResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$APIDataResponseImplCopyWithImpl<T, $Res>
    extends _$APIDataResponseCopyWithImpl<T, $Res, _$APIDataResponseImpl<T>>
    implements _$$APIDataResponseImplCopyWith<T, $Res> {
  __$$APIDataResponseImplCopyWithImpl(_$APIDataResponseImpl<T> _value,
      $Res Function(_$APIDataResponseImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of APIDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$APIDataResponseImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$APIDataResponseImpl<T> implements _APIDataResponse<T> {
  const _$APIDataResponseImpl({required this.data});

  factory _$APIDataResponseImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$APIDataResponseImplFromJson(json, fromJsonT);

  @override
  final T data;

  @override
  String toString() {
    return 'APIDataResponse<$T>(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$APIDataResponseImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of APIDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$APIDataResponseImplCopyWith<T, _$APIDataResponseImpl<T>> get copyWith =>
      __$$APIDataResponseImplCopyWithImpl<T, _$APIDataResponseImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$APIDataResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _APIDataResponse<T> implements APIDataResponse<T> {
  const factory _APIDataResponse({required final T data}) =
      _$APIDataResponseImpl<T>;

  factory _APIDataResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$APIDataResponseImpl<T>.fromJson;

  @override
  T get data;

  /// Create a copy of APIDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$APIDataResponseImplCopyWith<T, _$APIDataResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

APIResultsResponse<T> _$APIResultsResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _APIResultsResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$APIResultsResponse<T> {
  T get results => throw _privateConstructorUsedError;

  /// Serializes this APIResultsResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of APIResultsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $APIResultsResponseCopyWith<T, APIResultsResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APIResultsResponseCopyWith<T, $Res> {
  factory $APIResultsResponseCopyWith(APIResultsResponse<T> value,
          $Res Function(APIResultsResponse<T>) then) =
      _$APIResultsResponseCopyWithImpl<T, $Res, APIResultsResponse<T>>;
  @useResult
  $Res call({T results});
}

/// @nodoc
class _$APIResultsResponseCopyWithImpl<T, $Res,
        $Val extends APIResultsResponse<T>>
    implements $APIResultsResponseCopyWith<T, $Res> {
  _$APIResultsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of APIResultsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$APIResultsResponseImplCopyWith<T, $Res>
    implements $APIResultsResponseCopyWith<T, $Res> {
  factory _$$APIResultsResponseImplCopyWith(_$APIResultsResponseImpl<T> value,
          $Res Function(_$APIResultsResponseImpl<T>) then) =
      __$$APIResultsResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T results});
}

/// @nodoc
class __$$APIResultsResponseImplCopyWithImpl<T, $Res>
    extends _$APIResultsResponseCopyWithImpl<T, $Res,
        _$APIResultsResponseImpl<T>>
    implements _$$APIResultsResponseImplCopyWith<T, $Res> {
  __$$APIResultsResponseImplCopyWithImpl(_$APIResultsResponseImpl<T> _value,
      $Res Function(_$APIResultsResponseImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of APIResultsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_$APIResultsResponseImpl<T>(
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$APIResultsResponseImpl<T> implements _APIResultsResponse<T> {
  const _$APIResultsResponseImpl({required this.results});

  factory _$APIResultsResponseImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$APIResultsResponseImplFromJson(json, fromJsonT);

  @override
  final T results;

  @override
  String toString() {
    return 'APIResultsResponse<$T>(results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$APIResultsResponseImpl<T> &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(results));

  /// Create a copy of APIResultsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$APIResultsResponseImplCopyWith<T, _$APIResultsResponseImpl<T>>
      get copyWith => __$$APIResultsResponseImplCopyWithImpl<T,
          _$APIResultsResponseImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$APIResultsResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _APIResultsResponse<T> implements APIResultsResponse<T> {
  const factory _APIResultsResponse({required final T results}) =
      _$APIResultsResponseImpl<T>;

  factory _APIResultsResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$APIResultsResponseImpl<T>.fromJson;

  @override
  T get results;

  /// Create a copy of APIResultsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$APIResultsResponseImplCopyWith<T, _$APIResultsResponseImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

APIResultResponse<T> _$APIResultResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _APIResultResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$APIResultResponse<T> {
  T get result => throw _privateConstructorUsedError;

  /// Serializes this APIResultResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of APIResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $APIResultResponseCopyWith<T, APIResultResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APIResultResponseCopyWith<T, $Res> {
  factory $APIResultResponseCopyWith(APIResultResponse<T> value,
          $Res Function(APIResultResponse<T>) then) =
      _$APIResultResponseCopyWithImpl<T, $Res, APIResultResponse<T>>;
  @useResult
  $Res call({T result});
}

/// @nodoc
class _$APIResultResponseCopyWithImpl<T, $Res,
        $Val extends APIResultResponse<T>>
    implements $APIResultResponseCopyWith<T, $Res> {
  _$APIResultResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of APIResultResponse
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$APIResultResponseImplCopyWith<T, $Res>
    implements $APIResultResponseCopyWith<T, $Res> {
  factory _$$APIResultResponseImplCopyWith(_$APIResultResponseImpl<T> value,
          $Res Function(_$APIResultResponseImpl<T>) then) =
      __$$APIResultResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T result});
}

/// @nodoc
class __$$APIResultResponseImplCopyWithImpl<T, $Res>
    extends _$APIResultResponseCopyWithImpl<T, $Res, _$APIResultResponseImpl<T>>
    implements _$$APIResultResponseImplCopyWith<T, $Res> {
  __$$APIResultResponseImplCopyWithImpl(_$APIResultResponseImpl<T> _value,
      $Res Function(_$APIResultResponseImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of APIResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$APIResultResponseImpl<T>(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$APIResultResponseImpl<T> implements _APIResultResponse<T> {
  const _$APIResultResponseImpl({required this.result});

  factory _$APIResultResponseImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$APIResultResponseImplFromJson(json, fromJsonT);

  @override
  final T result;

  @override
  String toString() {
    return 'APIResultResponse<$T>(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$APIResultResponseImpl<T> &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  /// Create a copy of APIResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$APIResultResponseImplCopyWith<T, _$APIResultResponseImpl<T>>
      get copyWith =>
          __$$APIResultResponseImplCopyWithImpl<T, _$APIResultResponseImpl<T>>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$APIResultResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _APIResultResponse<T> implements APIResultResponse<T> {
  const factory _APIResultResponse({required final T result}) =
      _$APIResultResponseImpl<T>;

  factory _APIResultResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$APIResultResponseImpl<T>.fromJson;

  @override
  T get result;

  /// Create a copy of APIResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$APIResultResponseImplCopyWith<T, _$APIResultResponseImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

APIItemsResult<T> _$APIItemsResultFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _APIItemsResult<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$APIItemsResult<T> {
  List<T> get items => throw _privateConstructorUsedError;

  /// Serializes this APIItemsResult to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of APIItemsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $APIItemsResultCopyWith<T, APIItemsResult<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APIItemsResultCopyWith<T, $Res> {
  factory $APIItemsResultCopyWith(
          APIItemsResult<T> value, $Res Function(APIItemsResult<T>) then) =
      _$APIItemsResultCopyWithImpl<T, $Res, APIItemsResult<T>>;
  @useResult
  $Res call({List<T> items});
}

/// @nodoc
class _$APIItemsResultCopyWithImpl<T, $Res, $Val extends APIItemsResult<T>>
    implements $APIItemsResultCopyWith<T, $Res> {
  _$APIItemsResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of APIItemsResult
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$APIItemsResultImplCopyWith<T, $Res>
    implements $APIItemsResultCopyWith<T, $Res> {
  factory _$$APIItemsResultImplCopyWith(_$APIItemsResultImpl<T> value,
          $Res Function(_$APIItemsResultImpl<T>) then) =
      __$$APIItemsResultImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> items});
}

/// @nodoc
class __$$APIItemsResultImplCopyWithImpl<T, $Res>
    extends _$APIItemsResultCopyWithImpl<T, $Res, _$APIItemsResultImpl<T>>
    implements _$$APIItemsResultImplCopyWith<T, $Res> {
  __$$APIItemsResultImplCopyWithImpl(_$APIItemsResultImpl<T> _value,
      $Res Function(_$APIItemsResultImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of APIItemsResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$APIItemsResultImpl<T>(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$APIItemsResultImpl<T> implements _APIItemsResult<T> {
  const _$APIItemsResultImpl({required final List<T> items}) : _items = items;

  factory _$APIItemsResultImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$APIItemsResultImplFromJson(json, fromJsonT);

  final List<T> _items;
  @override
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'APIItemsResult<$T>(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$APIItemsResultImpl<T> &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of APIItemsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$APIItemsResultImplCopyWith<T, _$APIItemsResultImpl<T>> get copyWith =>
      __$$APIItemsResultImplCopyWithImpl<T, _$APIItemsResultImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$APIItemsResultImplToJson<T>(this, toJsonT);
  }
}

abstract class _APIItemsResult<T> implements APIItemsResult<T> {
  const factory _APIItemsResult({required final List<T> items}) =
      _$APIItemsResultImpl<T>;

  factory _APIItemsResult.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$APIItemsResultImpl<T>.fromJson;

  @override
  List<T> get items;

  /// Create a copy of APIItemsResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$APIItemsResultImplCopyWith<T, _$APIItemsResultImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

APIDataResult<T> _$APIDataResultFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _APIDataResult<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$APIDataResult<T> {
  List<T> get data => throw _privateConstructorUsedError;

  /// Serializes this APIDataResult to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of APIDataResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $APIDataResultCopyWith<T, APIDataResult<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APIDataResultCopyWith<T, $Res> {
  factory $APIDataResultCopyWith(
          APIDataResult<T> value, $Res Function(APIDataResult<T>) then) =
      _$APIDataResultCopyWithImpl<T, $Res, APIDataResult<T>>;
  @useResult
  $Res call({List<T> data});
}

/// @nodoc
class _$APIDataResultCopyWithImpl<T, $Res, $Val extends APIDataResult<T>>
    implements $APIDataResultCopyWith<T, $Res> {
  _$APIDataResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of APIDataResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$APIDataResultImplCopyWith<T, $Res>
    implements $APIDataResultCopyWith<T, $Res> {
  factory _$$APIDataResultImplCopyWith(_$APIDataResultImpl<T> value,
          $Res Function(_$APIDataResultImpl<T>) then) =
      __$$APIDataResultImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> data});
}

/// @nodoc
class __$$APIDataResultImplCopyWithImpl<T, $Res>
    extends _$APIDataResultCopyWithImpl<T, $Res, _$APIDataResultImpl<T>>
    implements _$$APIDataResultImplCopyWith<T, $Res> {
  __$$APIDataResultImplCopyWithImpl(_$APIDataResultImpl<T> _value,
      $Res Function(_$APIDataResultImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of APIDataResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$APIDataResultImpl<T>(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$APIDataResultImpl<T> implements _APIDataResult<T> {
  const _$APIDataResultImpl({required final List<T> data}) : _data = data;

  factory _$APIDataResultImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$APIDataResultImplFromJson(json, fromJsonT);

  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'APIDataResult<$T>(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$APIDataResultImpl<T> &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of APIDataResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$APIDataResultImplCopyWith<T, _$APIDataResultImpl<T>> get copyWith =>
      __$$APIDataResultImplCopyWithImpl<T, _$APIDataResultImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$APIDataResultImplToJson<T>(this, toJsonT);
  }
}

abstract class _APIDataResult<T> implements APIDataResult<T> {
  const factory _APIDataResult({required final List<T> data}) =
      _$APIDataResultImpl<T>;

  factory _APIDataResult.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$APIDataResultImpl<T>.fromJson;

  @override
  List<T> get data;

  /// Create a copy of APIDataResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$APIDataResultImplCopyWith<T, _$APIDataResultImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
