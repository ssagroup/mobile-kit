extension StringExtension on String? {
  String get orEmpty => this ?? '';
}

extension DoubleExtension on double? {
  double get orZero => this ?? 0;
}

extension IntExtension on int? {
  int get orZero => this ?? 0;
}

extension ListExtension<T> on List<T>? {
  List<T> get orEmpty => this ?? List<T>.empty();
}

T? tryCast<T>(dynamic object) => object is T ? object : null;