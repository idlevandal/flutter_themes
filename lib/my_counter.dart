
import 'package:flutter/material.dart';

class MyCounter extends ChangeNotifier {
  int _counter;
  String _msg = 'message';

  MyCounter(this._counter);
  MyCounter.initial() {
    _counter = 67;
  }

  int get counter => _counter;
  String get message => _msg;

  void incrementCount() {
    _counter++;
    notifyListeners();
  }
}