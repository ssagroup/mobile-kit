import 'package:mobile_kit/src/core/util/sortable.dart';
import 'package:mobile_kit/src/feature/home/domain/helper/infrastructure_status_enum.dart';

class InfrastructureModel implements Sortable {
  InfrastructureModel({
    required this.status,
    required this.title,
    required this.id,
    required this.order,
  });

  final String status;
  final String title;
  final String id;
  final int order;

  InfrastructureStatus get type {
    switch (status) {
      case 'Normal': return InfrastructureStatus.normal;
      case 'Warning': return InfrastructureStatus.warning;
      case 'Error': return InfrastructureStatus.error;
    }
    throw 'Undefined type';
  }
}