part of 'control_cubit.dart';

@freezed
class ControlState with _$ControlState {
  const factory ControlState({
    required bool isLoading,
    required String? email,
    required String? username,
    required AuthStatus loginStatus,
  }) = _ControlState;

  factory ControlState.initial() => const ControlState(
    isLoading: false,
    email: 'test@gmail.com',
    username: 'test',
    loginStatus: AuthStatus.none(),
  );
}