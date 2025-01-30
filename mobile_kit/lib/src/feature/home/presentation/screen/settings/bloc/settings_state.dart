part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required bool isLoading,
    required String? email,
    required String? username,
    required AuthStatus loginStatus,
  }) = _SettingsState;

  factory SettingsState.initial() => const SettingsState(
    isLoading: false,
    email: 'test@gmail.com',
    username: 'test',
    loginStatus: AuthStatus.none(),
  );
}