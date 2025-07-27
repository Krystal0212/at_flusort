import 'package:at_flusort/algorithms/heap_sort.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HeapSort', () {
    final heapSort = HeapSort<int>();

    test('should sort an empty list', () {
      expect(heapSort.sort([]), []);
    });

    test('should sort a single-element list', () {
      expect(heapSort.sort([1]), [1]);
    });

    test('should sort an already sorted list', () {
      expect(heapSort.sort([1, 2, 3, 4, 5]), [1, 2, 3, 4, 5]);
    });

    test('should sort a reverse sorted list', () {
      expect(heapSort.sort([5, 4, 3, 2, 1]), [1, 2, 3, 4, 5]);
    });

    test('should sort a random list', () {
      expect(heapSort.sort([3, 1, 4, 2, 5]), [1, 2, 3, 4, 5]);
    });

    test('should sort with a custom comparator', () {
      descending(int a, int b) => b.compareTo(a);
      expect(heapSort.sort([1, 2, 3, 4, 5], compare: descending), [
        5,
        4,
        3,
        2,
        1,
      ]);
    });
  });
}
