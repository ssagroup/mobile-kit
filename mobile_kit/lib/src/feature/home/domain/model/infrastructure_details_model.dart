import 'package:mobile_kit/src/core/util/sortable.dart';
import 'package:mobile_kit/src/feature/home/domain/helper/infrastructure_status_enum.dart';

class InfrastructureDetailsModel implements Sortable {
  InfrastructureDetailsModel({
    required this.status,
    required this.title,
    required this.value,
    required this.order,
    this.unit,
    this.chartId,
    this.dashboardUid,
  });

  final InfrastructureStatus status;
  final String value;
  @override int order;
  final String title;
  final String? chartId; // panelId
  final String? unit;
  final String? dashboardUid;
}