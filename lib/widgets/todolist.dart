import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/models/todo.dart';
import 'package:to_do_app/widgets/todocard.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todos;
  final Function(int) updateCompletions;
  final Function(int) deleteTodo;


  TodoList(this.todos,this.updateCompletions,this.deleteTodo);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.builder(itemBuilder: (ctx,i){
        return Slidable(
          startActionPane: ActionPane(
            motion: const ScrollMotion(),
            children: [
              // A SlidableAction can have an icon and/or a label.
              SlidableAction(
                onPressed: (context) {
                  deleteTodo(i);
                },
                backgroundColor: Color(0xFFFE4A49),
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Delete',
              ),
              SlidableAction(
                onPressed: null,
                backgroundColor: Color(0xFF21B7CA),
                foregroundColor: Colors.white,
                icon: Icons.share,
                label: 'Share',
              ),
            ],
          ),
            child: ToDoCard(todos[i].title, todos[i].completed,updateCompletions,i,deleteTodo));
      }, itemCount: todos.length,
      ),
    );
  }
}
