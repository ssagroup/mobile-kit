import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_kit/src/feature/home/domain/helper/statistic_period_enum.dart';
import 'package:mobile_kit/src/feature/login/domain/model/auth_status.dart';

part 'kpis_cubit.freezed.dart';
part 'kpis_state.dart';

class KpisCubit extends Cubit<KpisState> {
  KpisCubit() : super(KpisState.initial()) {}

  Future<void> refresh() async {}

  void segmentChanged(StatisticsPeriod value) {
    emit(
      state.copyWith(
        periodFilter: value,
      ),
    );

  }

}