import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@Freezed(genericArgumentFactories: true)
class APIDataResponse<T> with _$APIDataResponse<T> {
  const factory APIDataResponse({
    required T data,
  }) = _APIDataResponse;

  factory APIDataResponse.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) => _$APIDataResponseFromJson(json, fromJsonT);
}

@Freezed(genericArgumentFactories: true)
class APIResultsResponse<T> with _$APIResultsResponse<T> {
  const factory APIResultsResponse({
    required T results,
  }) = _APIResultsResponse;

  factory APIResultsResponse.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) => _$APIResultsResponseFromJson(json, fromJsonT);
}

@Freezed(genericArgumentFactories: true)
class APIResultResponse<T> with _$APIResultResponse<T> {
  const factory APIResultResponse({
    required T result,
  }) = _APIResultResponse;

  factory APIResultResponse.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) => _$APIResultResponseFromJson(json, fromJsonT);
}

@Freezed(genericArgumentFactories: true)
class APIItemsResult<T> with _$APIItemsResult<T> {
  const factory APIItemsResult({
    required List<T> items,
  }) = _APIItemsResult;

  factory APIItemsResult.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) => _$APIItemsResultFromJson(json, fromJsonT);
}

@Freezed(genericArgumentFactories: true)
class APIDataResult<T> with _$APIDataResult<T> {
  const factory APIDataResult({
    required List<T> data,
  }) = _APIDataResult;

  factory APIDataResult.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) => _$APIDataResultFromJson(json, fromJsonT);
}