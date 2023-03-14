import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}

void main(List<String> args) {
  final counterCubit = CounterCubit();
  print(counterCubit.state);
  counterCubit.increment();
  counterCubit.increment();
  print(counterCubit.state);
  counterCubit.decrement();
  print(counterCubit.state);

  counterCubit.close();
}
