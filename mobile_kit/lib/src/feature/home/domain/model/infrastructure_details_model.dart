import 'package:mobile_kit/src/core/util/sortable.dart';
import 'package:mobile_kit/src/feature/home/domain/helper/infrastructure_status_enum.dart';

class InfrastructureDetailsModel implements Sortable {
  InfrastructureDetailsModel({
    required this.status,
    required this.title,
    required this.value,
    required this.order,
    required this.unit,
    required this.chartId,
  });

  final String status;
  final String value;
  final int order;
  final String title;
  final String? chartId;
  final String? unit;

  InfrastructureStatus get type {
    switch (status) {
      case 'Normal': return InfrastructureStatus.normal;
      case 'Warning': return InfrastructureStatus.warning;
      case 'Error': return InfrastructureStatus.error;
    }
    throw 'Undefined type';
  }
}