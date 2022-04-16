import 'package:flutter/material.dart';
import 'package:inherited_widget/child_widget.dart';

class ParentStateFulWidget extends StatefulWidget {
  const ParentStateFulWidget({Key? key}) : super(key: key);

  @override
  State<ParentStateFulWidget> createState() => _ParentStateFulWidgetState();
}

class _ParentStateFulWidgetState extends State<ParentStateFulWidget> {
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
      body: ChildWidget(
          number: _counter, increment: increment, decrement: decrement),
    );
  }
}
