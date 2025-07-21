extension StringExtension on String {
  String get toApiValue {
    return switch (this) {
      '24h' => 'Day',
      '7d' => 'Week',
      '30d' => 'Month',
      '1y' => 'Year',
      _ => 'Custom'
    };
  }

  int? get toInfraApiValue {
    return switch (this) {
      '1h' => 0,
      '6h' => 1,
      '24h' => 2,
      '7d' => 3,
      '30d' => 4,
      String() => null,
    };
  }
}