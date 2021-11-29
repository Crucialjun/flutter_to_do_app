import 'package:flutter/material.dart';

class NewTodo extends StatefulWidget {

  final Function(String) addTodo;

  NewTodo(this.addTodo);

  @override
  _NewTodoState createState() => _NewTodoState();
}

class _NewTodoState extends State<NewTodo> {
  final TextEditingController _todocontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            maxLength: 15,
            controller: _todocontroller,
            decoration: InputDecoration(
              labelText: "New To do",
            ),
          ),
          TextButton(
              onPressed: () {
                widget.addTodo(_todocontroller.text);
                Navigator.of(context).pop();
              }, child: Text("Add"))
        ],
      ),
    );
  }
}
