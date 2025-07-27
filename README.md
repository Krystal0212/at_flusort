  <p>
    <h1 style="font-size: 2em; font-weight: bold; vertical-align: middle; line-height: normal; display: inline-block;">
      <a href="#"><img width="32" height="32" alt="at_logo" src="https://github.com/user-attachments/assets/0ac236a4-5ce5-46d4-9211-e818aad498cb" /></a>
      &nbsp;at_flusort
    </h1>
  </p>

<p>
  <img src="https://img.shields.io/pub/v/at_flusort" alt="Pub Version" />
  <img src="https://img.shields.io/badge/platform-Dart%20%26%20Flutter-blue" alt="Platform" />
  <img src="https://img.shields.io/github/license/Krystal0212/at_flusort" alt="License" />
  <img src="https://img.shields.io/github/stars/Krystal0212/at_flusort?style=social" alt="GitHub Stars" />
</p>

<p>
  A lightweight and extensible sorting algorithm package — designed for practical usage.
</p>

---

## 🌟 Features

- Includes popular sorting algorithms:
  - 🛁 Bubble Sort
  - 🔍 Selection Sort
  - ✋ Insertion Sort
  - 🧩 Merge Sort
  - ⚡ Quick Sort
  - 🔺 Heap Sort
  - 🧮 Radix Sort  
  - 🪣 Bucket Sort  

- Ready to use in Dart or Flutter projects
- Generic support: sort `int`, `double`, `String`, `DateTime`, and more generic types!

---

## 🚀 Getting Started

Add the package to your `pubspec.yaml`:


```yaml
dependencies:
  at_flusort: ^1.0.0

```md

## 🔧 Example: Quick Sort

```dart
import 'package:at_flusort/sorts/quick_sort.dart';

void main() {
  final List<int> numbers = [9, 3, 7, 1, 5];
  final List<int> sorted = QuickSort.sort(numbers);
  print(sorted); // [1, 3, 5, 7, 9]
}