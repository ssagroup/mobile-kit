Iterable<(T1, T2)> zip2<T1, T2>(Iterable<T1> i1, Iterable<T2> i2) sync* {
  final t1 = i1.iterator;
  final t2 = i2.iterator;

  while (true) {
    if (!t1.moveNext() || !t2.moveNext()) return;
    yield (t1.current, t2.current);
  }
}