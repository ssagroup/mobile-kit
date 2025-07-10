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
}