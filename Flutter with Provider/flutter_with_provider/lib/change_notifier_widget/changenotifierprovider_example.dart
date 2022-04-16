import 'package:flutter/material.dart';
import 'package:flutter_with_provider/change_notifier_widget/counter_notifier.dart';
import 'package:flutter_with_provider/change_notifier_widget/next_page.dart';
import 'package:flutter_with_provider/provider_widget/counter.dart';
import 'package:provider/provider.dart';

class ChangeNotifierProviderExample extends StatelessWidget {
  const ChangeNotifierProviderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterNotifierNoChange =
        Provider.of<CounterNotifier>(context, listen: false);

    return Scaffold(
        appBar: AppBar(
          title: Text("ChangeNotifier Provider Example"),
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
              // Consumer<CounterNotifier>(
              //   builder: (_, counter, __) {
              //     return
              ElevatedButton(
                // onPressed: counter.decrease,
                onPressed: counterNotifierNoChange.decrease,
                child: Text("Decrement ${counterNotifierNoChange.number}"),
              ),
              //   },
              // ),

              // Next page
              ElevatedButton(
                // onPressed: counter.decrease,
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => const NextPage(),
                )),
                child: Text("Next Page"),
              ),
            ],
          ),
        ));
  }
}
