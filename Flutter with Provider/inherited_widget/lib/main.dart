import 'package:flutter/material.dart';
import 'package:inherited_widget/inherited_widget_example.dart';
import 'package:inherited_widget/parent_widget.dart';
import 'package:inherited_widget/stateful_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: StateFulExample(),
      // home: ParentStateFulWidget(),
      home: InheritedWidgetExample(),
    );
  }
}
