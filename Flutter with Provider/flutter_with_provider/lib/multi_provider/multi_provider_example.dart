import 'package:flutter/material.dart';
import 'package:flutter_with_provider/change_notifier_widget/counter_notifier.dart';
import 'package:flutter_with_provider/future_provider/data.dart';
import 'package:flutter_with_provider/stream_provider/data.dart';
import 'package:provider/provider.dart';

class MutiProviderExample extends StatelessWidget {
  const MutiProviderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MultiProvider Example'),
      ),
      body: Center(
        child: Consumer3<CounterNotifier, Data, ModelStream>(
          builder: (_, counter, data, model, __) {
            return Column(
              children: [
                Text('${counter.number}'),
                Text(data.data),
                Text('${model.number}')
              ],
            );
          },
        ),
      ),
    );
  }
}
