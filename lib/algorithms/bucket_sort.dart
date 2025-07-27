import '../base/sorter.dart';

class BucketSort extends Sorter<double> {
  @override
  List<double> sort(List<double> items, {Comparator<double>? compare}) {
    final List<double> list = List<double>.from(items);
    final int n = list.length;
    if (n <= 0) return list;

    final List<List<double>> buckets = List<List<double>>.generate(
      n,
      (int _) => <double>[],
    );
    for (final double value in list) {
      final int idx = (value * n).toInt();
      buckets[idx == n ? n - 1 : idx].add(value);
    }
    for (final List<double> bucket in buckets) {
      bucket.sort();
    }
    return buckets.expand((List<double> b) => b).toList();
  }
}
