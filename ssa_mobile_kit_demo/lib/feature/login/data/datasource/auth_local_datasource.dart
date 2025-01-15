import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit_demo/core/helper/datasource_mixin/base_local_datasource.dart';

const String _authUserPinKey = '___/pin___';
const String _authBioEnabledKey = '___/bio_enabled___';
const String _lastActiveSessionTimeKey = '___/last_active_session_time___';

class AuthLocalDataSourceImpl with BaseLocalDataSourceMixin {
  AuthLocalDataSourceImpl({
    required HiveStorage storage,
  }) : _storage = storage;

  final HiveStorage _storage;

  Future<String> readUserPin() => read<String>(_storage, _authUserPinKey, (s) => s);
  Future<bool> readIsBioEnabled() => read<bool>(_storage, _authBioEnabledKey, (s) => s == 'true');
  Future<String> readLastActiveSessionTime() => read<String>(_storage, _lastActiveSessionTimeKey, (s) => s);

  Future<void> writeUserPin(String userPin) => write<String>(_storage, _authUserPinKey, userPin, (s) => s);
  Future<void> writeIsBioEnabled(bool value) => write<bool>(_storage, _authBioEnabledKey, value, (s) => s ? 'true' : 'false');
  Future<void> writeLastActiveSessionTime(String value) => write<String>(_storage, _lastActiveSessionTimeKey, value, (s) => s);

  Future<void> clear() async {
    await delete(_storage, _authUserPinKey);
    await delete(_storage, _authBioEnabledKey);
    await delete(_storage, _lastActiveSessionTimeKey);
  }
}