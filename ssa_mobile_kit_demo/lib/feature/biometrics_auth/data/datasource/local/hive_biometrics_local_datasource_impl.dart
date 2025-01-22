import 'package:mobile_kit/mobile_kit.dart';

const String _authUserPinKey = '___/pin___';
const String _authBioEnabledKey = '___/bio_enabled___';
const String _lastActiveSessionTimeKey = '___/last_active_session_time___';

class HiveBiometricsLocalDatasourceImpl with HiveBaseLocalDataSourceMixin implements BiometricsLocalDatasource {
  HiveBiometricsLocalDatasourceImpl({
    required HiveStorage storage,
  }) : _storage = storage;

  final HiveStorage _storage;

  @override
  Future<String> readUserPin() => read<String>(_storage, _authUserPinKey, (s) => s);
  @override
  Future<bool> readIsBioEnabled() => read<bool>(_storage, _authBioEnabledKey, (s) => s == 'true');
  @override
  Future<String> readLastActiveSessionTime() => read<String>(_storage, _lastActiveSessionTimeKey, (s) => s);

  @override
  Future<void> writeUserPin(String userPin) => write<String>(_storage, _authUserPinKey, userPin, (s) => s);
  @override
  Future<void> writeIsBioEnabled(bool value) => write<bool>(_storage, _authBioEnabledKey, value, (s) => s ? 'true' : 'false');
  @override
  Future<void> writeLastActiveSessionTime(String value) => write<String>(_storage, _lastActiveSessionTimeKey, value, (s) => s);

  @override
  Future<void> clear() async {
    await delete(_storage, _authUserPinKey);
    await delete(_storage, _authBioEnabledKey);
    await delete(_storage, _lastActiveSessionTimeKey);
  }
}