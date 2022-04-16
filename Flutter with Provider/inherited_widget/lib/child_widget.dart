import 'package:flutter/material.dart';

class ChildWidget extends StatelessWidget {
  final int number;
  final Function() increment;
  final Function() decrement;

  ChildWidget(
      {required this.number, required this.increment, required this.decrement});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('${number}'),
          ElevatedButton(onPressed: increment, child: Text('Increment')),
          ElevatedButton(onPressed: decrement, child: Text('Decrement')),
        ],
      ),
    );
  }
}
