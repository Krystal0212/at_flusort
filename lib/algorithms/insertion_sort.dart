import '../base/sorter.dart';

class InsertionSort<T> extends Sorter<T> {
  @override
  List<T> sort(List<T> items, {Comparator<T>? compare}) {
    final List<T> list = List<T>.from(items);
    final Comparator<T> cmp = compare ?? defaultCompare;
    for (int i = 1; i < list.length; i++) {
      final T key = list[i];
      int j = i - 1;
      while (j >= 0 && cmp(list[j], key) > 0) {
        list[j + 1] = list[j];
        j--;
      }
      list[j + 1] = key;
    }
    return list;
  }
}