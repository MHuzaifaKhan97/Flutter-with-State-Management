import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_provider/screen/todo_home.dart';
import 'package:todo_provider/state/app_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppState(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: TodoHomeScreen(),
      ),
    );
  }
}
