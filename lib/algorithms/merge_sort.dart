import '../base/sorter.dart';

class MergeSort<T> extends Sorter<T> {
  @override
  List<T> sort(List<T> items, {Comparator<T>? compare}) {
    final Comparator<T> cmp = compare ?? defaultCompare;
    return _mergeSort(List<T>.from(items), cmp);
  }

  List<T> _mergeSort(List<T> list, Comparator<T> cmp) {
    if (list.length <= 1) return list;
    final int mid = list.length ~/ 2;
    final List<T> left = _mergeSort(list.sublist(0, mid), cmp);
    final List<T> right = _mergeSort(list.sublist(mid), cmp);
    return _merge(left, right, cmp);
  }

  List<T> _merge(List<T> left, List<T> right, Comparator<T> cmp) {
    final List<T> result = <T>[];
    int i = 0;
    int j = 0;
    while (i < left.length && j < right.length) {
      if (cmp(left[i], right[j]) <= 0) {
        result.add(left[i]);
        i++;
      } else {
        result.add(right[j]);
        j++;
      }
    }
    result.addAll(left.sublist(i));
    result.addAll(right.sublist(j));
    return result;
  }
}