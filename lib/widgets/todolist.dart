import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/models/todo.dart';
import 'package:to_do_app/widgets/todocard.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todos;


  TodoList(this.todos);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.builder(itemBuilder: (ctx,i){
        return ToDoCard(todos[i].title, todos[i].completed);
      }, itemCount: todos.length,
      ),
    );
  }
}
