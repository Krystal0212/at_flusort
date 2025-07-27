typedef Comparator<T> = int Function(T a, T b);

abstract class Sorter<T> {
  List<T> sort(List<T> items, {Comparator<T>? compare});

  int defaultCompare(T a, T b) {
    if (a is Comparable && b is Comparable) {
      return a.compareTo(b);
    }
    throw UnsupportedError('Type $T is not comparable. Provide a comparator.');
  }
}
