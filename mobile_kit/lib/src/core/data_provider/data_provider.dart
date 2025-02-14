import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit/src/feature/home/domain/repository/infrastructure_repository.dart';

abstract class DataProvider {
  late AuthenticationRepository authRep;
  late BiometricsAuthRepository biometricsAuthRep;
  late ControlRepository controlRepository;
  late KpiRepository kpisRepository;
  late SettingsRepository settingsRepository;
  late InfrastructureRepository infrastructureRepository;

  late AuthenticationNotifier authNotifier;
}

class DependencyManager {
  static void registerDependency(DataProvider dataProvider) {
    GetIt.instance.registerSingleton<AuthenticationRepository>(dataProvider.authRep);
    GetIt.instance.registerSingleton<BiometricsAuthRepository>(dataProvider.biometricsAuthRep);
    GetIt.instance.registerSingleton<ControlRepository>(dataProvider.controlRepository);
    GetIt.instance.registerSingleton<KpiRepository>(dataProvider.kpisRepository);
    GetIt.instance.registerSingleton<SettingsRepository>(dataProvider.settingsRepository);
    GetIt.instance.registerSingleton<InfrastructureRepository>(dataProvider.infrastructureRepository);

    GetIt.instance.registerSingleton<AuthenticationNotifier>(dataProvider.authNotifier);
  }
}