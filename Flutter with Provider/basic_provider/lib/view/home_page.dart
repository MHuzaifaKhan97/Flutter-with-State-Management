import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_api_calling/state/app_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 1st way: Creating instance of provider
    // var provider = Provider.of<AppState>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Learing Provider')),
      // body: Center(
      //   child: Text('Provider Value ${provider.temp}'),
      // ),

      // Second way:
      body: Center(
        child: Consumer<AppState>(
          builder: (context, value, child) {
            return Column(
              children: [
                SizedBox(height: 32),
                Text('${value.temp}'),
                SizedBox(height: 32),
                CupertinoButton(
                    color: Colors.blue,
                    child: Text('Increment'),
                    onPressed: () => value.increment(12)),
                SizedBox(height: 32),
                CupertinoButton(
                    color: Colors.red,
                    child: Text('Decrement'),
                    onPressed: () => value.decrement()),
                SizedBox(height: 64),
                Text(
                  "Timer",
                  style: TextStyle(fontSize: 30),
                ),
                Text("${value.start}"),
                SizedBox(height: 12),
                CupertinoButton(
                    color: Colors.red,
                    child: Text('Start Timer'),
                    onPressed: () => value.getTimer()),
                SizedBox(height: 64),
                Text(
                  "Async",
                  style: TextStyle(fontSize: 30),
                ),
                Text("${value.name}"),
                SizedBox(height: 12),
                CupertinoButton(
                    color: Colors.red,
                    child: Text('Update Text'),
                    onPressed: () => value.getName("Huzaifa Khan")),
              ],
            );
          },
        ),
      ),
    );
  }
}
