import 'package:flutter/material.dart';

class StateFulExample extends StatefulWidget {
  const StateFulExample({Key? key}) : super(key: key);

  @override
  State<StateFulExample> createState() => _StateFulExampleState();
}

class _StateFulExampleState extends State<StateFulExample> {
  int _counter = 0;

  increment() {
    setState(() {
      _counter += 1;
    });
  }

  decrement() {
    setState(() {
      _counter -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateFull EXample'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('${_counter}'),
            ElevatedButton(onPressed: increment, child: Text('Increment')),
            ElevatedButton(onPressed: decrement, child: Text('Decrement')),
          ],
        ),
      ),
    );
  }
}
