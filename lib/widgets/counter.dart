import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(40),
        child: const Text(
          "0/7",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
        ));
  }
}
