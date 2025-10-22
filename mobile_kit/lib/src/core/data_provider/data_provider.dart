import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit/src/core/widget/app_logo_provider.dart';

abstract class DataProvider {
  late AuthenticationNotifier authNotifier;

  late AuthenticationRepository authRep;
  late BiometricsAuthRepository biometricsAuthRep;
  late ControlRepository controlRepository;
  late KpiRepository kpisRepository;
  late SettingsRepository settingsRepository;
  late InfrastructureRepository infrastructureRepository;
  late AlertsRepository alertsRepository;
  late ChartRepository chartRepository;
  late AppLogoProvider appLogoProvider;
}

class DependencyManager {
  static void registerDependency(DataProvider dataProvider) {
    GetIt.instance.registerSingleton<AuthenticationNotifier>(dataProvider.authNotifier);
    GetIt.instance.registerSingleton<AuthenticationRepository>(dataProvider.authRep);
    GetIt.instance.registerSingleton<BiometricsAuthRepository>(dataProvider.biometricsAuthRep);
    GetIt.instance.registerSingleton<ControlRepository>(dataProvider.controlRepository);
    GetIt.instance.registerSingleton<KpiRepository>(dataProvider.kpisRepository);
    GetIt.instance.registerSingleton<SettingsRepository>(dataProvider.settingsRepository);
    GetIt.instance.registerSingleton<InfrastructureRepository>(dataProvider.infrastructureRepository);
    GetIt.instance.registerSingleton<AlertsRepository>(dataProvider.alertsRepository);
    GetIt.instance.registerSingleton<ChartRepository>(dataProvider.chartRepository);
    GetIt.instance.registerSingleton<AppLogoProvider>(dataProvider.appLogoProvider);
  }
}