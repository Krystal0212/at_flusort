import 'package:at_flusort/algorithms/bubble_sort.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Bubble Sort integers', () {
    final BubbleSort<int> sorter = BubbleSort<int>();
    final List<int> result = sorter.sort([5, 2, 9, 1, 5, 6]);
    expect(result, [1, 2, 5, 5, 6, 9]);
  });
}
