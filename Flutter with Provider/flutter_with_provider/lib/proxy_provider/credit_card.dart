import 'package:flutter/material.dart';

class CreditCard extends ChangeNotifier {
  int amount = 0;

  void deposite(int amount) {
    this.amount += amount;
    notifyListeners();
  }

  void withdraw(int amount) {
    this.amount -= amount;
    notifyListeners();
  }
}
