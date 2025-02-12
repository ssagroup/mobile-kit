import 'package:collection/collection.dart';

class KpiModel {
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

extension KpisList on List<KpiModel> {
  List<KpiModel> get sortedByOrder {
    return sorted((a, b) => a.order.compareTo(b.order));
  }
}
