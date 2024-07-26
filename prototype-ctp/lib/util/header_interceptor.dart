import 'dart:async';
import 'package:chopper/chopper.dart';

class HeaderInterceptor implements RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) async {
    final newHeaders = request.headers;
    newHeaders.addAll({
      'accept': 'application/json',
      'content-type': 'application/json',
    });
    final Request newRequest = request.copyWith(headers: newHeaders);
    return newRequest;
  }
}
