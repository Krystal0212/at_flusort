// ignore_for_file: avoid_print

import 'package:at_flusort/at_flusort.dart';

void main() {
  final intList = [5, 2, 9, 1];
  final doubleList = [3.14, 2.71, 1.41, 2.0];
  final stringList = ['banana', 'apple', 'cherry'];
  final dateList = [
    DateTime(2023, 5, 1),
    DateTime(2022, 12, 31),
    DateTime(2024, 1, 1)
  ];

  print('BubbleSort<int>: ${BubbleSort<int>().sort(intList)}');
  print('SelectionSort<double>: ${SelectionSort<double>().sort(doubleList)}');
  print('InsertionSort<String>: ${InsertionSort<String>().sort(stringList)}');
  print('MergeSort<DateTime>: ${MergeSort<DateTime>().sort(dateList)}');
}
