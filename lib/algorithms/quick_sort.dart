import '../base/sorter.dart';

class QuickSort<T> extends Sorter<T> {
  @override
  List<T> sort(List<T> items, {Comparator<T>? compare}) {
    final List<T> list = List<T>.from(items);
    final Comparator<T> cmp = compare ?? defaultCompare;
    _quickSort(list, 0, list.length - 1, cmp);
    return list;
  }

  void _quickSort(List<T> list, int low, int high, Comparator<T> cmp) {
    if (low < high) {
      final int pi = _partition(list, low, high, cmp);
      _quickSort(list, low, pi - 1, cmp);
      _quickSort(list, pi + 1, high, cmp);
    }
  }

  int _partition(List<T> list, int low, int high, Comparator<T> cmp) {
    final T pivot = list[high];
    int i = low - 1;
    for (int j = low; j < high; j++) {
      if (cmp(list[j], pivot) < 0) {
        i++;
        final T tmp = list[i];
        list[i] = list[j];
        list[j] = tmp;
      }
    }
    final T tmp = list[i + 1];
    list[i + 1] = list[high];
    list[high] = tmp;
    return i + 1;
  }
}
