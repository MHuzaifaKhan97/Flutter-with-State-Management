import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_api_calling/state/app_state.dart';
import 'package:provider_api_calling/view/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppState(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
