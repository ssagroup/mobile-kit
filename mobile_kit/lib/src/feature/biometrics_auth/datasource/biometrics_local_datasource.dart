abstract class BiometricsLocalDatasource {

  Future<String> readUserPin();

  Future<bool> readIsBioEnabled();

  Future<String> readLastActiveSessionTime();

  Future<void> writeUserPin(String userPin);

  Future<void> writeIsBioEnabled(bool value);

  Future<void> writeLastActiveSessionTime(String value);

  Future<void> clear();

}