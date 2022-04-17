import 'package:flutter/material.dart';
import 'package:flutter_with_provider/stream_provider/data.dart';
import 'package:provider/provider.dart';

class StreamProviderExample extends StatelessWidget {
  const StreamProviderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stream Provider Example'),
        ),
        body: Center(
          child: Column(
            children: [
              Consumer<ModelStream>(builder: (_, model, __) {
                return Text('${model.number}');
              }),
              Consumer<ModelStream>(builder: (_, model, __) {
                return ElevatedButton(
                    onPressed: model.increase, child: Text('Increase'));
              })
            ],
          ),
        ));
  }
}
