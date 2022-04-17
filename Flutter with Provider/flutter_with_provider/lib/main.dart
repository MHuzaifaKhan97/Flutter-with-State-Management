import 'package:flutter/material.dart';
import 'package:flutter_with_provider/change_notifier_widget/changenotifierprovider_example.dart';
import 'package:flutter_with_provider/change_notifier_widget/counter_notifier.dart';
import 'package:flutter_with_provider/future_provider/data_future.dart';
import 'package:flutter_with_provider/future_provider/future_provider_example.dart';
import 'package:flutter_with_provider/provider_widget/counter.dart';
import 'package:flutter_with_provider/provider_widget/provider_example.dart';
import 'package:provider/provider.dart';

import 'future_provider/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),

    // Provider Example

    // home: Provider<Counter>(
    //   create: (_) => Counter(),
    //   child: ProviderExample(),
    // ),

    // Change Notifier Provider Example
    // home: ChangeNotifierProvider<CounterNotifier>(
    //   create: (_) => CounterNotifier(),
    //   child: ChangeNotifierProviderExample(),
    // ),

    // );

    // Change notifier provider example on whole app
    // return ChangeNotifierProvider<CounterNotifier>(
    //   create: (_) => CounterNotifier(),
    //   child: MaterialApp(
    //     home: ChangeNotifierProviderExample(),
    //   ),
    // );

    // Future provider example
    return FutureProvider<Data>(
      create: (_) => loadData(),
      initialData: Data('Initial Data'),
      child: MaterialApp(
        home: FutureProviderExample(),
      ),
    );
  }
}
