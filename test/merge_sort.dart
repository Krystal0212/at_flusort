import 'package:at_flusort/algorithms/merge_sort.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MergeSort', () {
    final mergeSort = MergeSort<int>();

    test('should sort an empty list', () {
      expect(mergeSort.sort([]), []);
    });

    test('should sort a single-element list', () {
      expect(mergeSort.sort([1]), [1]);
    });

    test('should sort an already sorted list', () {
      expect(mergeSort.sort([1, 2, 3, 4, 5]), [1, 2, 3, 4, 5]);
    });

    test('should sort a reverse sorted list', () {
      expect(mergeSort.sort([5, 4, 3, 2, 1]), [1, 2, 3, 4, 5]);
    });

    test('should sort a random list', () {
      expect(mergeSort.sort([3, 1, 4, 2, 5]), [1, 2, 3, 4, 5]);
    });

    test('should sort with a custom comparator', () {
      descending(int a, int b) => b.compareTo(a);
      expect(mergeSort.sort([1, 2, 3, 4, 5], compare: descending), [
        5,
        4,
        3,
        2,
        1,
      ]);
    });
  });
}
