// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class CounterApp extends StatelessWidget {
  // const CounterApp({super.key});
  final int taskTrue;
  final int tasksAll;
  CounterApp({required this.tasksAll, required this.taskTrue});
  @override
  Widget build(BuildContext context) {
    return Text(
      "$taskTrue/$tasksAll",
      style: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        color: (taskTrue==tasksAll)?Colors.green:Colors.white,
      ),
    );
  }
}
