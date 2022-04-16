import 'package:flutter/material.dart';

class InheritedWidgetExample extends StatefulWidget {
  const InheritedWidgetExample({Key? key}) : super(key: key);

  @override
  State<InheritedWidgetExample> createState() => _InheritedWidgetExampleState();
}

class _InheritedWidgetExampleState extends State<InheritedWidgetExample> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inherited Widget"),
      ),
      body: Center(
        child: Column(
          children: [
            NumberInheritedWidget(number: number, child: NestedWidget()),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    number++;
                  });
                },
                child: Text("Increment")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    number--;
                  });
                },
                child: Text("Decrement"))
          ],
        ),
      ),
    );
  }
}

class NumberInheritedWidget extends InheritedWidget {
  final int number;

  const NumberInheritedWidget({
    required this.number,
    required Widget child,
  }) : super(child: child);

  // Access the context
  static NumberInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<NumberInheritedWidget>();
  }

  @override
  bool updateShouldNotify(NumberInheritedWidget oldWidget) =>
      number != oldWidget.number;
}

class NestedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int? number = NumberInheritedWidget.of(context)?.number;
    return Text('$number');
  }
}
