part of 'auth_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {

  const factory AuthenticationState.initializing() = _Initializing; //Splash screen is shown to user
  const factory AuthenticationState.login() = _LoggingIn; //Login page is shown to user
  const factory AuthenticationState.createPin() = _CreatePin;
  const factory AuthenticationState.verifyUser() = _VerifyUser;
  const factory AuthenticationState.authenticated() = _Authenticated; //User is logged into the system

}