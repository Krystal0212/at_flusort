import 'package:at_flusort/algorithms/quick_sort.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('QuickSort', () {
    final quickSort = QuickSort<int>();

    test('should sort an empty list', () {
      expect(quickSort.sort([]), []);
    });

    test('should sort a single-element list', () {
      expect(quickSort.sort([1]), [1]);
    });

    test('should sort an already sorted list', () {
      expect(quickSort.sort([1, 2, 3, 4, 5]), [1, 2, 3, 4, 5]);
    });

    test('should sort a reverse sorted list', () {
      expect(quickSort.sort([5, 4, 3, 2, 1]), [1, 2, 3, 4, 5]);
    });

    test('should sort a random list', () {
      expect(quickSort.sort([3, 1, 4, 2, 5]), [1, 2, 3, 4, 5]);
    });

    test('should sort with a custom comparator', () {
      descending(int a, int b) => b.compareTo(a);
      expect(quickSort.sort([1, 2, 3, 4, 5], compare: descending), [
        5,
        4,
        3,
        2,
        1,
      ]);
    });
  });
}
