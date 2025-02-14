class InfrastructureDetailsModel {
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
}