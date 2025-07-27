import '../base/sorter.dart';

class SelectionSort<T> extends Sorter<T> {
  @override
  List<T> sort(List<T> items, {Comparator<T>? compare}) {
    final List<T> list = List<T>.from(items);
    final Comparator<T> cmp = compare ?? defaultCompare;
    for (int i = 0; i < list.length - 1; i++) {
      var minIndex = i;
      for (int j = i + 1; j < list.length; j++) {
        if (cmp(list[j], list[minIndex]) < 0) {
          minIndex = j;
        }
      }
      final T tmp = list[i];
      list[i] = list[minIndex];
      list[minIndex] = tmp;
    }
    return list;
  }
}
