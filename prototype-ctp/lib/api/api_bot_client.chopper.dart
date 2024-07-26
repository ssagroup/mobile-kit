// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_bot_client.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: type=lint
final class _$ApiBotClient extends ApiBotClient {
  _$ApiBotClient([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ApiBotClient;

  @override
  Future<Response<APIResponse<APIResult<BotInfo>>>> getBots({
    required String authorization,
    required String period,
  }) {
    final Uri $url = Uri.parse('bots');
    final Map<String, dynamic> $params = <String, dynamic>{'Period': period};
    final Map<String, String> $headers = {
      'Authorization': authorization,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<APIResponse<APIResult<BotInfo>>, BotInfo>($request);
  }

  @override
  Future<Response<SuccessResponse>> startBot({
    required int botId,
    required String authorization,
    required String reason,
  }) {
    final Uri $url = Uri.parse('bots/${botId}/start');
    final Map<String, String> $headers = {
      'Authorization': authorization,
    };
    final $body = <String, dynamic>{'reason': reason};
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<SuccessResponse, SuccessResponse>($request);
  }

  @override
  Future<Response<SuccessResponse>> stopBot({
    required int botId,
    required String authorization,
  }) {
    final Uri $url = Uri.parse('bots/${botId}/stop');
    final Map<String, String> $headers = {
      'Authorization': authorization,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<SuccessResponse, SuccessResponse>($request);
  }

  @override
  Future<Response<SuccessResponse>> stopAll({required String authorization}) {
    final Uri $url = Uri.parse('bots/stopall');
    final Map<String, String> $headers = {
      'Authorization': authorization,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<SuccessResponse, SuccessResponse>($request);
  }

  @override
  Future<Response<APIResponse<StaticStatisticsInfo>>> getStaticStatistics(
      {required String authorization}) {
    final Uri $url = Uri.parse('statistics/mobile/static');
    final Map<String, String> $headers = {
      'Authorization': authorization,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<APIResponse<StaticStatisticsInfo>, StaticStatisticsInfo>(
        $request);
  }

  @override
  Future<Response<APIResponse<DynamicStatisticsInfo>>> getDynamicStatistics({
    required String authorization,
    required String period,
  }) {
    final Uri $url = Uri.parse('statistics/mobile/dynamic');
    final Map<String, dynamic> $params = <String, dynamic>{'Period': period};
    final Map<String, String> $headers = {
      'Authorization': authorization,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<APIResponse<DynamicStatisticsInfo>,
        DynamicStatisticsInfo>($request);
  }

  @override
  Future<Response<APIResponse<StyleInfo>>> getStyles(
      {required String authorization}) {
    final Uri $url = Uri.parse('statistics/mobile/styles');
    final Map<String, String> $headers = {
      'Authorization': authorization,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<APIResponse<StyleInfo>, StyleInfo>($request);
  }
}
