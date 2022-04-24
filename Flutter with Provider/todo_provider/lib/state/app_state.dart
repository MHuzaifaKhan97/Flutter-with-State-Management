import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  List todos = ['Learn Dart', 'Learn Flutter'];
  bool isEditEnable = false;
  void addTodo(String todo) {
    todos.add(todo);
    notifyListeners();
  }

  void deleteTodo(int index) {
    todos.removeAt(index);
    notifyListeners();
  }

  void editToggled() {
    isEditEnable = !isEditEnable;
    notifyListeners();
  }

  void editTodo(String updatedTodo, int index) {
    todos[index] = updatedTodo;
    notifyListeners();
    editToggled();
  }
}
