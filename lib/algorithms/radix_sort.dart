import '../base/sorter.dart';

class RadixSort extends Sorter<int> {
  @override
  List<int> sort(List<int> items, {Comparator<int>? compare}) {
    final List<int> list = List<int>.from(items);
    final int max = list.reduce((int a, int b) => a > b ? a : b);
    for (int exp = 1; max ~/ exp > 0; exp *= 10) {
      _countingSort(list, exp);
    }
    return list;
  }

  void _countingSort(List<int> list, int exp) {
    final List<int> output = List<int>.filled(list.length, 0);
    final List<int> count = List<int>.filled(10, 0);

    for (final int num in list) {
      count[(num ~/ exp) % 10]++;
    }
    for (int i = 1; i < 10; i++) {
      count[i] += count[i - 1];
    }
    for (int i = list.length - 1; i >= 0; i--) {
      final int idx = (list[i] ~/ exp) % 10;
      output[count[idx] - 1] = list[i];
      count[idx]--;
    }
    for (int i = 0; i < list.length; i++) {
      list[i] = output[i];
    }
  }
}
