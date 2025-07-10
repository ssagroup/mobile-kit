import 'package:mobile_kit/mobile_kit.dart';

const String _authAccessTokenKey = '___/token/access_token___';
const String _authRefreshTokenKey = '___/token/refresh_token___';

class AuthLocalDataSourceImpl with HiveBaseLocalDataSourceMixin {
  AuthLocalDataSourceImpl({
    required HiveStorage storage,
  }) : _storage = storage;

  final HiveStorage _storage;

  Future<String> readAccessToken() => read<String>(_storage, _authAccessTokenKey, (s) => s);
  Future<String> readRefreshToken() => read<String>(_storage, _authRefreshTokenKey, (s) => s);

  Future<void> writeAccessToken(String token) => write<String>(_storage, _authAccessTokenKey, token, (s) => s);
  Future<void> writeRefreshToken(String token) => write<String>(_storage, _authRefreshTokenKey, token, (s) => s);

  Future<void> clear() async {
    await delete(_storage, _authAccessTokenKey);
    await delete(_storage, _authRefreshTokenKey);
  }
}
