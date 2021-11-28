import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/counter.dart';
import 'package:to_do_app/widgets/models/todo.dart';
import 'package:to_do_app/widgets/new_todo.dart';
import 'package:to_do_app/widgets/todocard.dart';
import 'package:to_do_app/widgets/todolist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Todo> toDos = [
    Todo("vihviyviyvc", "Clean Room", true),
    Todo("ghgngfj", "Pet The cat", false),
    Todo("vihviyviyvc", "Clean Room", true),
    Todo("vihviyviyvc", "Clean Room", true),
    Todo("vihviyviyvc", "Clean Room", true),
    Todo("vihviyviyvc", "Clean Room", true),
    Todo("vihviyviyvc", "Clean Room", true),
    Todo("vihviyviyvc", "Clean Room", true),
    Todo("vihviyviyvc", "Clean Room", true),
  ];

  int calcCompletions(){
    var totalcompletions= 0;

    for (var element in toDos) {
      if(element.completed){
        totalcompletions ++;
      }
    }return totalcompletions;

  }

  void showAddTodoModal(BuildContext context) {
    showModalBottomSheet(context: context,isScrollControlled: true, builder: (bCtx) {
      return NewTodo(_addtodolist);
    });
  }

  void _addtodolist(String todo){
    setState(() {
      toDos.add(Todo("hvhidvhvv",todo,false));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Counter(toDos.length,calcCompletions()),
            TodoList(toDos),
          ],
        ),
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: (){
          showAddTodoModal(context);
        },
        child: Icon(Icons.add),
      ) ,
    );
  }
}
