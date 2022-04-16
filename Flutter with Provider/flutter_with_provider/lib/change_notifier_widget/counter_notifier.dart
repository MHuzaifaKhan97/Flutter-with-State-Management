import 'package:flutter/material.dart';

class CounterNotifier extends ChangeNotifier {
  int number = 0;

  void increase() {
    number++;
    notifyListeners();
    debugPrint("$number");
  }

  void decrease() {
    number--;
    notifyListeners();
    debugPrint("$number");
  }
}
