import 'dart:ui';

int compareColor(Color a, Color b) => a.toARGB32().compareTo(b.toARGB32());
int compareDateTime(DateTime a, DateTime b) => a.compareTo(b);
