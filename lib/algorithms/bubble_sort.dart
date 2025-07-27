import '../base/sorter.dart';

class BubbleSort<T> extends Sorter<T> {
  @override
  List<T> sort(List<T> items, {Comparator<T>? compare}) {
    final List<T> list = List<T>.from(items);
    final Comparator<T> cmp = compare ?? defaultCompare;

    for (int i = 0; i < list.length; i++) {
      for (int j = 0; j < list.length - i - 1; j++) {
        if (cmp(list[j], list[j + 1]) > 0) {
          final tmp = list[j];
          list[j] = list[j + 1];
          list[j + 1] = tmp;
        }
      }
    }
    return list;
  }
}
