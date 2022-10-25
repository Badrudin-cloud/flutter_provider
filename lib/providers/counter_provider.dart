import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int count = 0;

  int get _count => count;

  increment() {
    count++;
    notifyListeners();
  }

  resetCount() {
    count = 0;
    notifyListeners();
  }

  decrement() {
    count--;
    notifyListeners();
  }
}
