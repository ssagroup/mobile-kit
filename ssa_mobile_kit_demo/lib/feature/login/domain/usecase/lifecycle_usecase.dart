import 'package:mobile_kit_demo/feature/login/data/datasource/auth_local_datasource.dart';

class LifecycleUseCase {
  LifecycleUseCase(AuthLocalDataSourceImpl datasource,)
      : _localStorageDatasource = datasource,
        super();

  Future<void> enterBackground() async {
    await _localStorageDatasource.writeLastActiveSessionTime(DateTime.now().millisecondsSinceEpoch.toString());
  }

  Future<DateTime> enterForeground() async {
    final String? ms = await _localStorageDatasource.readLastActiveSessionTime();
    DateTime lastActive = DateTime.fromMillisecondsSinceEpoch(0);
    if (ms != null && ms.isNotEmpty) {
      lastActive = DateTime.fromMillisecondsSinceEpoch(int.tryParse(ms) ?? 0);
    }
    return lastActive;
  }

  final AuthLocalDataSourceImpl _localStorageDatasource;
}