import 'package:at_flusort/base/sorter.dart';

class HeapSort<T> extends Sorter<T> {
  @override
  List<T> sort(List<T> items, {Comparator<T>? compare}) {
    final List<T> list = List<T>.from(items);
    final Comparator<T> cmp = compare ?? defaultCompare;
    final int n = list.length;

    for (int i = n ~/ 2 - 1; i >= 0; i--) {
      _heapify(list, n, i, cmp);
    }
    for (int i = n - 1; i > 0; i--) {
      final T tmp = list[0];
      list[0] = list[i];
      list[i] = tmp;
      _heapify(list, i, 0, cmp);
    }
    return list;
  }

  void _heapify(List<T> list, int n, int i, Comparator<T> cmp) {
    int largest = i;
    int left = 2 * i + 1;
    int right = 2 * i + 2;

    if (left < n && cmp(list[left], list[largest]) > 0) largest = left;
    if (right < n && cmp(list[right], list[largest]) > 0) largest = right;

    if (largest != i) {
      final T tmp = list[i];
      list[i] = list[largest];
      list[largest] = tmp;
      _heapify(list, n, largest, cmp);
    }
  }
}