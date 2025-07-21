// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$APIDataResponseImpl<T> _$$APIDataResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$APIDataResponseImpl<T>(
      data: fromJsonT(json['data']),
    );

Map<String, dynamic> _$$APIDataResponseImplToJson<T>(
  _$APIDataResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': toJsonT(instance.data),
    };

_$APIResultsResponseImpl<T> _$$APIResultsResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$APIResultsResponseImpl<T>(
      results: fromJsonT(json['results']),
    );

Map<String, dynamic> _$$APIResultsResponseImplToJson<T>(
  _$APIResultsResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'results': toJsonT(instance.results),
    };

_$APIResultResponseImpl<T> _$$APIResultResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$APIResultResponseImpl<T>(
      result: fromJsonT(json['result']),
    );

Map<String, dynamic> _$$APIResultResponseImplToJson<T>(
  _$APIResultResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'result': toJsonT(instance.result),
    };

_$APIItemsResultImpl<T> _$$APIItemsResultImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$APIItemsResultImpl<T>(
      items: (json['items'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$$APIItemsResultImplToJson<T>(
  _$APIItemsResultImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'items': instance.items.map(toJsonT).toList(),
    };

_$APIDataResultImpl<T> _$$APIDataResultImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$APIDataResultImpl<T>(
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$$APIDataResultImplToJson<T>(
  _$APIDataResultImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': instance.data.map(toJsonT).toList(),
    };
