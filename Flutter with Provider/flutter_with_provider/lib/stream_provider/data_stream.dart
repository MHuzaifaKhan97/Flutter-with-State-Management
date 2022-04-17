import 'package:flutter_with_provider/future_provider/data.dart';
import 'package:flutter_with_provider/stream_provider/data.dart';

Stream<ModelStream> loadStream() {
  return Stream<ModelStream>.periodic(
      Duration(seconds: 1), (value) => ModelStream(number: value)).take(10);
}
