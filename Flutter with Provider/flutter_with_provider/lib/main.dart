import 'package:flutter/material.dart';
import 'package:flutter_with_provider/change_notifier_widget/changenotifierprovider_example.dart';
import 'package:flutter_with_provider/change_notifier_widget/counter_notifier.dart';
import 'package:flutter_with_provider/future_provider/data_future.dart';
import 'package:flutter_with_provider/future_provider/future_provider_example.dart';
import 'package:flutter_with_provider/multi_provider/multi_provider_example.dart';
import 'package:flutter_with_provider/provider_widget/counter.dart';
import 'package:flutter_with_provider/provider_widget/provider_example.dart';
import 'package:flutter_with_provider/stream_provider/data.dart';
import 'package:flutter_with_provider/stream_provider/data_stream.dart';
import 'package:flutter_with_provider/stream_provider/stream_provider_example.dart';
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
    // return FutureProvider<Data>(
    //   create: (_) => loadData(),
    //   initialData: Data('Initial Data'),
    //   child: MaterialApp(
    //     home: FutureProviderExample(),
    //   ),
    // );

    // Stream Provider Example
    // return StreamProvider<ModelStream>(
    //   create: (_) => loadStream(),
    //   initialData: ModelStream(number: 0),
    //   child: MaterialApp(
    //     home: StreamProviderExample(),
    //   ),
    // );

    // Nested Providers
    // return ChangeNotifierProvider<CounterNotifier>(
    //   create: (_) => CounterNotifier(),
    //   child: FutureProvider<Data>(
    //     create: (_) => loadData(),
    //     initialData: Data('Init Data'),
    //     child: StreamProvider<ModelStream>(
    //       create: (_) => loadStream(),
    //       initialData: ModelStream(number: 0),
    //       child: MaterialApp(
    //         // home: ChangeNotifierProviderExample(),
    //         // home: FutureProviderExample(),
    //         home: StreamProviderExample(),
    //       ),
    //     ),
    //   ),
    // );

    // Right way of multi provider is
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterNotifier>(
            create: (_) => CounterNotifier()),
        FutureProvider<Data>(
            create: (_) => loadData(), initialData: Data('Init data')),
        StreamProvider(
            create: (_) => loadStream(), initialData: ModelStream(number: 0))
      ],
      child: MaterialApp(
        // home: ChangeNotifierProviderExample(),
        // home: FutureProviderExample(),
        // home: StreamProviderExample(),
        home: MutiProviderExample(),
      ),
    );
  }
}
