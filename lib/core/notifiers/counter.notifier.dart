import 'package:flutter/material.dart';

//Base of state of entire app
class CounterNotifier extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  void increament() {
    _counter++;
    notifyListeners();
  }
}
