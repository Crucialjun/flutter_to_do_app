import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoCard extends StatelessWidget {
  final String title;
  final bool completed;
  final Function(int) updateCompletions;
  final Function(int) deleteTodo;
 final int cardIndex;

  ToDoCard(this.title,this.completed,this.updateCompletions,this.cardIndex,this.deleteTodo);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        updateCompletions(cardIndex);
      },
      child: FractionallySizedBox(
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
      ),
    );
  }
}
