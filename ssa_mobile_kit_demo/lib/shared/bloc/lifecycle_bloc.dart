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
  }

  Future<void> enterForeground() async {
    await _enterForegroundUseCase.enterForeground();
  }

  final EnterBackgroundUseCase _enterBackgroundUseCase;
  final EnterForegroundUseCase _enterForegroundUseCase;
}
