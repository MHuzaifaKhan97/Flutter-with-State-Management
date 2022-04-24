import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_provider/state/app_state.dart';

class TodoHomeScreen extends StatelessWidget {
  final todoTextController = TextEditingController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppState>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TODO APP USING PROVIDER',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  width: 300,
                  child: TextField(
                    controller: todoTextController,
                  ),
                ),
                provider.isEditEnable
                    ? ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(60, 60),
                          shape: const CircleBorder(),
                        ),
                        onPressed: () {
                          if (todoTextController.text != null) {
                            provider.editTodo(todoTextController.text, index);
                            todoTextController.clear();
                          }
                        },
                        child: Icon(Icons.edit, color: Colors.white),
                      )
                    : ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(60, 60),
                          shape: const CircleBorder(),
                        ),
                        onPressed: () {
                          if (!todoTextController.text.isEmpty) {
                            provider.addTodo(todoTextController.text);
                            todoTextController.clear();
                          }
                        },
                        child: Icon(Icons.add, color: Colors.white),
                      ),
              ],
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: provider.todos.length,
                itemBuilder: (BuildContext context, int index) {
                  var todo = provider.todos[index];
                  return Dismissible(
                    onDismissed: (direction) {
                      provider.deleteTodo(index);
                      print(provider.todos);
                    },
                    key: Key(todo),
                    child: ListTile(
                        leading: const Icon(Icons.list, color: Colors.orange),
                        trailing: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(40, 40),
                            shape: const CircleBorder(),
                          ),
                          child: const Icon(Icons.edit, color: Colors.white),
                          onPressed: () {
                            todoTextController.text = provider.todos[index];
                            provider.editToggled();
                            this.index = index;
                          },
                        ),
                        title: Text(todo)),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
