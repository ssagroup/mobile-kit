part of 'settings_cubit.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState({
    required bool isLoading,
    required String? email,
    required String? username,
    required ApiStatus apiStatus,
  }) = _SettingsState;

  factory SettingsState.initial() => SettingsState(
    isLoading: false,
    email: '',
    username: '',
    apiStatus: ApiStatusNone(),
  );
}