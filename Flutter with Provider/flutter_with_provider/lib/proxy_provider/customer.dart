import 'package:flutter/material.dart';
import 'package:flutter_with_provider/proxy_provider/credit_card.dart';

class Customer {
  CreditCard? creditCard;
  int numOfCreditCard = 1;

  Customer(this.creditCard);

  void deposit(int amount) {
    creditCard?.deposite(amount);
  }

  void withdraw(int amount) {
    creditCard?.withdraw(amount);
  }

  void applyForNewCreditCard() {
    numOfCreditCard += 1;
    debugPrint('Number of credit card: ${numOfCreditCard}');
  }
}
