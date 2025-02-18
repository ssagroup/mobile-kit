import 'package:collection/collection.dart';

abstract class Sortable {
  int get order;
}

extension ListSortableExtension<T extends Sortable> on List<T> {
  List<T> get sortedByOrder => sorted((a, b) => a.order.compareTo(b.order));
}

