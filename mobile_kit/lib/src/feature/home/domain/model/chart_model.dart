import 'package:freezed_annotation/freezed_annotation.dart';

part 'chart_model.freezed.dart';

@freezed
abstract class ChartModel with _$ChartModel {
  const factory ChartModel({
    String? chartId,
    String? unit,
    ChartPointModel? points,
    String? lastValue,
  })= _ChartModel;
}

class ChartPointModel {
  ChartPointModel({
    required this.x,
    required this.y,
  });
  final List<double> x;
  final List<double> y;
}