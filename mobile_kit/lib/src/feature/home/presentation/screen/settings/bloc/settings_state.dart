part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required bool isLoading,
    required String? email,
    required String? username,
    required ApiStatus apiStatus,
  }) = _SettingsState;

  factory SettingsState.initial() => SettingsState(
    isLoading: false,
    email: 'test@gmail.com',
    username: 'test',
    apiStatus: ApiStatusNone(),
  );
}