/// SECURITY AND BIOMETRICS
abstract class BiometricsAuthRepository {

  Future<bool> isPinSetup();

  Future<void> setupPin({required String pin});

  Future<void> enableBioAuth();

  Future<bool> authenticateBio();

  Future<String> get userPin;

  Future<bool> get isBioAvailable;

  Future<bool> get isBioEnabled;

  Future<String> readLastActiveSessionTime();

  Future<void> writeLastActiveSessionTime(String value);

}