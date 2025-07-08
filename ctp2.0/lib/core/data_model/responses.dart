import 'package:freezed_annotation/freezed_annotation.dart';

part 'responses.freezed.dart';
part 'responses.g.dart';

@freezed
class EmptyResponse with _$EmptyResponse {
  const factory EmptyResponse() = _EmptyResponse;

  factory EmptyResponse.fromJson(Map<String, dynamic> json) => _$EmptyResponseFromJson(json);
}

@freezed
class SuccessResponse with _$SuccessResponse {
  const factory SuccessResponse({
    required bool success
  }) = _SuccessResponse;

  factory SuccessResponse.fromJson(Map<String, dynamic> json) => _$SuccessResponseFromJson(json);
}