import 'package:freezed_annotation/freezed_annotation.dart';

part 'chart_model.freezed.dart';

@freezed
class ChartModel with _$ChartModel {
  const factory ChartModel({
    String? chartId,
    String? unit,
    ChartPointModel? points,
  })= _ChartModel;

  const ChartModel._();
}

class ChartPointModel {
  ChartPointModel({
    required this.x,
    required this.y,
  });
  final List<double> x;
  final List<double> y;
}