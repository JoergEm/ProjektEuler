/* 
 * Dart 3.7
 * 0001multiplesof3or5.dart
 * 
 * Copyright 2025 @GitHub JoergEm
 * 
 * This program is WITHOUT ANY WARRANTY; without even the implied
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * 
 */

void main() {
  final int summe = List<int>.generate(1000, (i) => i)
      .where((nummer) => nummer % 3 == 0 || nummer % 5 == 0)
      .fold(0, (prev, element) => prev + element);

  print(summe);
}