import 'package:mobile_kit/src/feature/home/domain/helper/infrastructure_status_enum.dart';

class InfrastructureModel {
  InfrastructureModel({
    required this.status,
    required this.title,
    required this.id,
  });

  final String status;
  final String title;
  final String id;

  InfrastructureStatus get type {
    switch (status) {
      case 'Normal': return InfrastructureStatus.normal;
      case 'Warning': return InfrastructureStatus.warning;
      case 'Error': return InfrastructureStatus.error;
    }
    throw 'Undefined type';
  }
}