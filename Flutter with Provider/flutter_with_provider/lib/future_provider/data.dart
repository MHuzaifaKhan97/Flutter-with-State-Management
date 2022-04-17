import 'package:flutter/foundation.dart';

class Data {
  String data;
  Data(this.data);

  Future<void> loadDataByClick() async {
    await Future.delayed(Duration(seconds: 1));
    data = "New Data from server";
    debugPrint(data);
  }
}
