import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@Freezed(genericArgumentFactories: true)
class APIResponse<T> with _$APIResponse<T> {
  const factory APIResponse({
    required T result,
  }) = _APIResponse;

  factory APIResponse.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) => _$APIResponseFromJson(json, fromJsonT);
}

@Freezed(genericArgumentFactories: true)
class APIResult<T> with _$APIResult<T> {
  const factory APIResult({
    required List<T> items,
  }) = _APIResult;

  factory APIResult.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) => _$APIResultFromJson(json, fromJsonT);

  // issues on GitHub
  // https://github.com/rrousselGit/freezed/issues/882
  // https://github.com/rrousselGit/freezed/issues/887
  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) => super.toJson(toJsonT);
}
