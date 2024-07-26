import 'package:ctp_mobile/data/datasource/base_local_datasource.dart';
import 'package:ctp_mobile/data/storage/hive_local_storage.dart';

const String _authAccessTokenKey = '___/token/access_token___';
const String _authRefreshTokenKey = '___/token/refresh_token___';
const String _authUserPinKey = '___/pin___';
const String _authBioEnabledKey = '___/bio_enabled___';
const String _lastActiveSessionTimeKey = '___/last_active_session_time___';

class AuthLocalDataSourceImpl with BaseLocalDataSourceMixin {
  AuthLocalDataSourceImpl({
    required HiveStorage storage,
  }) : _storage = storage;

  final HiveStorage _storage;

  Future<String> readAccessToken() => read<String>(_storage, _authAccessTokenKey, (s) => s);
  Future<String> readRefreshToken() => read<String>(_storage, _authRefreshTokenKey, (s) => s);
  Future<String> readUserPin() => read<String>(_storage, _authUserPinKey, (s) => s);
  Future<bool> readIsBioEnabled() => read<bool>(_storage, _authBioEnabledKey, (s) => s == 'true');
  Future<String> readLastActiveSessionTime() => read<String>(_storage, _lastActiveSessionTimeKey, (s) => s);

  Future<void> writeAccessToken(String token) => write<String>(_storage, _authAccessTokenKey, token, (s) => s);
  Future<void> writeRefreshToken(String token) => write<String>(_storage, _authRefreshTokenKey, token, (s) => s);
  Future<void> writeUserPin(String userPin) => write<String>(_storage, _authUserPinKey, userPin, (s) => s);
  Future<void> writeIsBioEnabled(bool value) => write<bool>(_storage, _authBioEnabledKey, value, (s) => s ? 'true' : 'false');
  Future<void> writeLastActiveSessionTime(String value) => write<String>(_storage, _lastActiveSessionTimeKey, value, (s) => s);

  Future<void> clear() async {
    await delete(_storage, _authAccessTokenKey);
    await delete(_storage, _authRefreshTokenKey);
    await delete(_storage, _authUserPinKey);
    await delete(_storage, _authBioEnabledKey);
    await delete(_storage, _lastActiveSessionTimeKey);
  }
}
