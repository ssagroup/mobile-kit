import 'package:mobile_kit/mobile_kit.dart';

abstract class DataProvider {
  late AuthenticationRepository authRep;
  late BiometricsAuthRepository biometricsAuthRep;
  late ControlRepository controlRepository;
  late SettingsRepository settingsRepository;

  late AuthenticationNotifier authNotifier;
}

class DependencyManager {
  static void registerDependency(DataProvider dataProvider) {
    GetIt.instance.registerSingleton<AuthenticationRepository>(dataProvider.authRep);
    GetIt.instance.registerSingleton<BiometricsAuthRepository>(dataProvider.biometricsAuthRep);
    GetIt.instance.registerSingleton<ControlRepository>(dataProvider.controlRepository);
    GetIt.instance.registerSingleton<SettingsRepository>(dataProvider.settingsRepository);

    GetIt.instance.registerSingleton<AuthenticationNotifier>(dataProvider.authNotifier);
  }
}