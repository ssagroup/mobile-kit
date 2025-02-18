import 'package:mobile_kit/src/core/util/sortable.dart';

class KpiModel implements Sortable {
  KpiModel({
    required this.isUp,
    required this.title,
    required this.value,
    required this.order,
    required this.unit,
    required this.chartId,
  });

  final bool? isUp;
  final String value;
  final int order;
  final String title;
  final String? chartId;
  final String? unit;
}
