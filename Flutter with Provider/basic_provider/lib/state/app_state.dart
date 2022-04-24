import 'dart:async';

import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  int temp = 10;

  void increment(int temp) {
    this.temp = temp;
    notifyListeners();
  }

  void decrement() {
    temp--;
    notifyListeners();
  }

// Timer
  int start = 0;
  void updateStart(int start) {
    this.start = start;
    notifyListeners();
  }

  void getTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      updateStart(timer.tick);
    });
  }

  // Provider with Async
  String name = "John Doe";
  void updateName(String name) {
    this.name = name;
    notifyListeners();
  }

  Future<void> getName(String name) async {
    await Future.delayed(Duration(seconds: 5));
    updateName(name);
  }
}
