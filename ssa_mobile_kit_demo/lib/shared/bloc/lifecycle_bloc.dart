import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_kit_demo/feature/login/domain/usecase/enter_background_usecase.dart';
import 'package:mobile_kit_demo/feature/login/domain/usecase/enter_foreground_usecase.dart';

class LifeCycleBloc extends Cubit<void> {
  LifeCycleBloc(
    EnterBackgroundUseCase enterBackgroundUseCase,
    EnterForegroundUseCase enterForegroundUseCase,
  )   : _enterBackgroundUseCase = enterBackgroundUseCase,
        _enterForegroundUseCase = enterForegroundUseCase,
        super(null);

  Future<void> enterBackground() async {
    await _enterBackgroundUseCase.enterBackground();
    // isInBackground = true;
  }

  Future<void> enterForeground() async {
    await _enterForegroundUseCase.enterForeground();
    // if (state != const AuthenticationState.authenticated()) {
    //   return;
    // }
    // if (!isInBackground) {
    //   return;
    // }
    // isInBackground = false;

    // final lastActive = await _enterForegroundUseCase.enterForeground();
    // if (DateTime.now().difference(lastActive).inMinutes > 15) {
    //   _state = const AuthenticationState.verifyUser();
    // } else {
    //   // _initialFetch();
    // }
  }

  final EnterBackgroundUseCase _enterBackgroundUseCase;
  final EnterForegroundUseCase _enterForegroundUseCase;
  // bool isInBackground = false;

  // final enterBackgroundUseCase = EnterBackgroundUseCase(DataProvider.instance.biometricsLocalDatasource);
  // final enterForegroundUseCase = EnterForegroundUseCase(DataProvider.instance.biometricsLocalDatasource);
}
