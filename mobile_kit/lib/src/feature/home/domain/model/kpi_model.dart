import 'package:mobile_kit/src/core/util/sortable.dart';

class KpiModel implements Sortable {
  KpiModel({
    this.isUp,
    required this.title,
    required this.value,
    required this.order,
    this.unit,
    this.chartId,
  });

  final bool? isUp;
  final String value;
  @override final int order;
  final String title;
  final String? chartId;
  final String? unit;
}
