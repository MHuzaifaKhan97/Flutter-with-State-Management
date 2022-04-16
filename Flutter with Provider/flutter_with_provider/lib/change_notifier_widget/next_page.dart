import 'package:flutter/material.dart';
import 'package:flutter_with_provider/change_notifier_widget/counter_notifier.dart';
import 'package:flutter_with_provider/provider_widget/counter.dart';
import 'package:provider/provider.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Next Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<CounterNotifier>(
                builder: (_, counter, __) {
                  return Text("${counter.number}");
                },
              ),
              Consumer<CounterNotifier>(
                builder: (_, counter, __) {
                  return ElevatedButton(
                    onPressed: counter.increase,
                    child: Text("Increment ${counter.number}"),
                  );
                },
              ),
              Consumer<CounterNotifier>(
                builder: (_, counter, __) {
                  return ElevatedButton(
                    onPressed: counter.decrease,
                    child: Text("Decrement"),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
