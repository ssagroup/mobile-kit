import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_notifier.freezed.dart';
part 'auth_state.dart';

class AuthenticationNotifier with ChangeNotifier {

  late AuthenticationState _state;

  AuthenticationState get state => _state;

  void setState(AuthenticationState state) {
    _state = state;
    notifyListeners();
  }
}
