import 'package:flutter/material.dart';
import 'package:flutter_with_provider/proxy_provider/credit_card.dart';
import 'package:flutter_with_provider/proxy_provider/customer.dart';
import 'package:provider/provider.dart';

class ProxyProviderExample extends StatelessWidget {
  const ProxyProviderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Proxy Provide Example'),
      ),
      body: Center(
        child: Column(
          children: [
            Consumer<CreditCard>(
              builder: (_, creditCard, __) {
                return Text('amount ${creditCard.amount}');
              },
            ),
            Consumer<CreditCard>(
              builder: (_, creditCard, __) {
                return ElevatedButton(
                    onPressed: () => creditCard.deposite(10),
                    child: Text("Deposite"));
              },
            ),
            Consumer<Customer>(
              builder: (_, customer, __) {
                return ElevatedButton(
                    onPressed: () => customer.withdraw(10),
                    child: Text("Withdraw"));
              },
            ),
            Consumer<Customer>(
              builder: (_, customer, __) {
                return Text('amount ${customer.numOfCreditCard}');
              },
            ),
            Consumer<Customer>(
              builder: (_, customer, __) {
                return ElevatedButton(
                    onPressed: () => customer.applyForNewCreditCard(),
                    child: Text("Apply for card"));
              },
            ),
          ],
        ),
      ),
    );
  }
}
