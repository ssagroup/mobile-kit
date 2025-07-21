import 'package:mobile_kit/mobile_kit.dart';

const String _authAccessTokenKey = '___/token/access_token___';
const String _authRefreshTokenKey = '___/token/refresh_token___';
const String _authUserNameKey = '___/token/user_name___';
const String _authUserEmailKey = '___/token/user_email___';

class AuthLocalDataSourceImpl with HiveBaseLocalDataSourceMixin {
  AuthLocalDataSourceImpl({
    required HiveStorage storage,
  }) : _storage = storage;

  final HiveStorage _storage;

  Future<String> readAccessToken() => read<String>(_storage, _authAccessTokenKey, (s) => s);
  Future<String> readRefreshToken() => read<String>(_storage, _authRefreshTokenKey, (s) => s);
  Future<String> readUserName() => read<String>(_storage, _authUserNameKey, (s) => s);
  Future<String> readUserEmail() => read<String>(_storage, _authUserEmailKey, (s) => s);

  Future<void> writeAccessToken(String token) => write<String>(_storage, _authAccessTokenKey, token, (s) => s);
  Future<void> writeRefreshToken(String token) => write<String>(_storage, _authRefreshTokenKey, token, (s) => s);
  Future<void> writeUserName(String userName) => write<String>(_storage, _authUserNameKey, userName, (s) => s);
  Future<void> writeUserEmail(String userEmail) => write<String>(_storage, _authUserEmailKey, userEmail, (s) => s);

  Future<void> clear() async {
    await delete(_storage, _authAccessTokenKey);
    await delete(_storage, _authRefreshTokenKey);
    await delete(_storage, _authUserNameKey);
    await delete(_storage, _authUserEmailKey);
  }
}
