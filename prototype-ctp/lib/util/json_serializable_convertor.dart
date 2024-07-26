import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:ctp_mobile/api/response/api_response.dart';
import 'package:ctp_mobile/domain/failure/failure.dart';
import 'package:ctp_mobile/util/optional.dart';

typedef JsonFactory<T> = T Function(Map<String, dynamic> json);

class JsonSerializableConverter extends JsonConverter {
  const JsonSerializableConverter(this.factories);

  final Map<Type, JsonFactory> factories;

  dynamic _decode<ResultType, T>(dynamic entity) {
    if (ResultType == APIResponse<APIResult<T>>) {
      return _decodeApiResponseResult<ResultType, T>(entity);
    }

    if (ResultType == APIResponse<T>) {
      return _decodeApiResponseInfo<ResultType, T>(entity);
    }

    if (entity is List) {
      return _decodeList<ResultType, T>(entity);
    }

    if (entity is Map) {
      return _decodeMap<ResultType, T>(entity as Map<String, dynamic>);
    }

    return entity;
  }

  dynamic _decodeApiResponseResult<ResultType, T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null) {
      /// throw serializer not found error;
      throw UnknownException('Wrong response. Maybe add didn\'t add your Response to RepositoryHelper');
    }

    final response = APIResponse.fromJson(
      values,
      (Object? json1) => APIResult<T>.fromJson(
        json1 as Map<String, dynamic>,
        (Object? json2) => jsonFactory(json2 as Map<String, dynamic>),
      ),
    );

    return response;
  }

  dynamic _decodeApiResponseInfo<ResultType, T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null) {
      /// throw serializer not found error;
      throw UnknownException('Wrong response. Maybe add didn\'t add your Response to RepositoryHelper');
    }

    final response = APIResponse<T>.fromJson(
      values,
      (Object? json1) => jsonFactory(json1 as Map<String, dynamic>),
    );

    return response;
  }

  T _decodeMap<ResultType, T>(Map<String, dynamic> values) {
    /// Get jsonFactory using Type parameters
    /// if not found or invalid, throw error or return null

    final jsonFactory = factories[T];
    if (jsonFactory == null) {
      /// throw serializer not found error;
      throw UnknownException('Wrong response. Maybe add didn\'t add your Response to RepositoryHelper');
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<ResultType, T>(List values) {
    return values.map<T>((dynamic v) => _decode<ResultType, T>(v)).toList();
  }

  @override
  Response<ResultType> convertResponse<ResultType, Item>(Response response) {
    // use [JsonConverter] to decode json
    // final jsonRes = super.convertResponse<Map<String, dynamic>, Item>(response);

    return response.copyWith<ResultType>(body: _decode<ResultType, Item>(jsonDecode(response.bodyString)));
  }

  @override
  // all objects should implements toJson method
  Request convertRequest(Request request) {
    final req = applyHeader(
      request,
      'accept',
      jsonHeaders,
      override: false,
    );

    return super.convertRequest(req);
  }

  @override
  Future<Response> convertError<ResultType, Item>(Response response) async {
    final Response jsonRes = await super.convertError<ResultType, Item>(response);

    if (response.statusCode == 404) {
      return jsonRes.copyWith<String>(
        body: 'Error 404: Not found',
      );
    }

    final Map? error = tryCast(jsonRes.body['error']);
    final String? fieldErr = tryCast(error?['message']);
    if (fieldErr != null) {
      return jsonRes.copyWith<String>(
        body: fieldErr,
      );
    } else {
      return jsonRes.copyWith<String>(
        body: 'Error occurred',
      );
    }
  }
}
