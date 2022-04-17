import 'package:flutter/material.dart';
import 'package:flutter_with_provider/future_provider/data.dart';
import 'package:provider/provider.dart';

class FutureProviderExample extends StatelessWidget {
  const FutureProviderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Future Provider Example'),
        ),
        body: Center(
          child: Column(
            children: [
              Consumer<Data>(builder: (_, data, __) {
                return Text(data.data);
              }),
              Consumer<Data>(builder: (_, data, __) {
                return ElevatedButton(
                    onPressed: data.loadDataByClick, child: Text('Load Data'));
              })
            ],
          ),
        ));
  }
}
