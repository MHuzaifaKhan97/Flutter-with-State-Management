import 'dart:async';
import 'package:bloc/bloc.dart';

enum CounterEvent { Increment, Decrement }

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.Increment:
        yield state + 1;
        break;
      case CounterEvent.Decrement:
        yield state - 1;
        break;
    }
  }
}

void main(List<String> args) async {
  final bloc = CounterBloc();

  final streamSubscription = bloc.listen(print);
  bloc.add(CounterEvent.Increment);
  await Future.delayed(Duration.zero);
  bloc.add(CounterEvent.Increment);
  bloc.add(CounterEvent.Increment);
  bloc.add(CounterEvent.Decrement);
  bloc.add(CounterEvent.Increment);
  bloc.add(CounterEvent.Decrement);

  await streamSubscription.cancel();
  await bloc.close();
}
