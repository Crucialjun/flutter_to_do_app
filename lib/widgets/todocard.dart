import 'package:flutter/material.dart';

class ToDoCard extends StatelessWidget {
  final String title;
  final bool completed;

  ToDoCard(this.title,this.completed);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.9,
      child: Card(
        child: Container(
            padding:  EdgeInsets.all(20),
            height: 120,
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text(
                  title,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Icon(
                  completed ? Icons.check : Icons.close,
                  color: completed ? Colors.green : Colors.red,
                )
              ],
            ))),
      ),
    );
  }
}
