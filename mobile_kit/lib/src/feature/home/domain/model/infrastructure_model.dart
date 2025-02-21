import 'package:mobile_kit/src/core/util/sortable.dart';
import 'package:mobile_kit/src/feature/home/domain/helper/infrastructure_status_enum.dart';

class InfrastructureModel implements Sortable {
  InfrastructureModel({
    required this.status,
    required this.title,
    required this.id,
    required this.order,
  });

  final InfrastructureStatus status;
  final String title;
  final String id;
  @override final int order;

}