import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobile_kit/mobile_kit.dart';

class ChartEntity {
  ChartEntity({
    this.chartId,
    this.unit,
  });
  final String? chartId;
  final String? unit;

  factory ChartEntity.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options,
      ) {
    final data = snapshot.data();
    return ChartEntity(
        chartId: data?['id'],
        unit: data?['unit'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'unit': unit,
      'id': chartId,
    };
  }

  ChartModel toChartModel(String id) {
    return ChartModel(chartId: id, unit: unit);
  }
}

class ChartPointEntity {
  ChartPointEntity({
    required this.x,
    required this.y,
  });
  final List<Timestamp> x;
  final List<int> y;

  factory ChartPointEntity.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options,
      ) {
    final data = snapshot.data();
    final timestamps = (data?['x'] as List).cast<Timestamp>();
    final values = (data?['y'] as List).cast<int>();
    return ChartPointEntity(
      x: timestamps,
      y: values,
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'x': x,
      'y': y,
    };
  }

  List<double> _convertTimestampsToDoubles(List<Timestamp> timestamps) {
    return timestamps.map((timestamp) => timestamp.seconds.toDouble()).toList();
  }

  ChartPointModel get chartPointModel {
    final xPoints = _convertTimestampsToDoubles(x);
    final yPoints = y.map((elem) => elem.toDouble()).toList();
    return ChartPointModel(x: xPoints, y: yPoints);
  }

}