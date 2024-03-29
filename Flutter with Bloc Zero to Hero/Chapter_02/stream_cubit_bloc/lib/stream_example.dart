Stream<int> boatStream() async* {
  for (int i = 1; i <= 10; i++) {
    print("Send boat # " + i.toString());
    await Future.delayed(Duration(seconds: 2));
    yield i;
  }
}

void main(List<String> args) {
  Stream<int> stream = boatStream();
  stream.listen((event) {
    print("Recieved boat # " + event.toString());
  });
}
